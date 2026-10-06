## `hylang:python3.11-alpine3.23`

```console
$ docker pull hylang@sha256:a80b1147ef13c32fff917ba4d5cbd9bafc8341ccf83fe308947a4903d4a6e049
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `hylang:python3.11-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:3eb24e7c4472bff3e8d2b864d53a1394d20ffb8373d661c566b472f70e749c2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29857270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f34bf966ce195a62fe3453854b2dd7e8f1021a44954edca4257e4d08e1ecc2`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:49:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:49:41 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 21:49:41 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:49:41 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 01 Oct 2026 21:49:41 GMT
ENV PYTHON_VERSION=3.11.17
# Thu, 01 Oct 2026 21:49:41 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Thu, 01 Oct 2026 21:54:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:54:04 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:54:04 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 22:13:11 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 22:13:11 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 22:13:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 22:13:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71669b066d0c83671d11fbbcb7e42ceddacd109747d43bc191f4ac9d48a2c30d`  
		Last Modified: Thu, 01 Oct 2026 21:54:11 GMT  
		Size: 416.3 KB (416284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3330fc80137fa0be3eb634ff0acb08fc82457fc842a298bb470fe86063aaf85d`  
		Last Modified: Thu, 01 Oct 2026 21:54:12 GMT  
		Size: 18.7 MB (18718802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad933f2dbe2f019af448b968bda6fa25e84061ca604ac2889ef12a699010b63`  
		Last Modified: Thu, 01 Oct 2026 21:54:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:000dcfad29544377f3c8019cc77bc01884de71b983e91155dd1a35cd881ed158`  
		Last Modified: Thu, 01 Oct 2026 22:13:17 GMT  
		Size: 6.9 MB (6873430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:20dd548d2f5c7a7f3e47629fe4b0f55d8c2a0f463798a973df4fcd1cd7245923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.7 KB (691738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245dce155223fdb40ad69d471bb8ccc9bcc9825373b2ff27c4ac14b11d50b1ac`

```dockerfile
```

-	Layers:
	-	`sha256:cdd0120ed69acbef78c3c2d2615199d0318c8b9fbc879f8a1a2e173552cbbde6`  
		Last Modified: Thu, 01 Oct 2026 22:13:17 GMT  
		Size: 683.6 KB (683635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30e21d1a32c6afdf8e671107cf3aab4c38f16bce5cb52685e8227304bbd6ad99`  
		Last Modified: Thu, 01 Oct 2026 22:13:17 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:bea5e57219263921d53572efb5a5c19dc074e3c3bdce6f19264dfc3bbff59274
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.8 MB (28762429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75a54db167bab38782937cafb2754364a96cfb22624df83784c85c0c803b9a0`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:35:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:35:53 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 21:35:53 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:35:53 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 01 Oct 2026 21:35:53 GMT
ENV PYTHON_VERSION=3.11.17
# Thu, 01 Oct 2026 21:35:53 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Thu, 01 Oct 2026 21:42:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:42:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:42:55 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 22:34:32 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 22:34:32 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 22:34:32 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 22:34:32 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd70c88cee0f3f47cb81195171ad95090f1e6c2947341e29288e1c135f538030`  
		Last Modified: Thu, 01 Oct 2026 21:43:01 GMT  
		Size: 417.5 KB (417488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed07318e4138057ac9bd2b8cd34737029a02d8bab2696d623f4979db22b63352`  
		Last Modified: Thu, 01 Oct 2026 21:43:01 GMT  
		Size: 17.9 MB (17916132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652893805298ab0d1db004c074103ce2812177502f4acf2b6e126210abca89a8`  
		Last Modified: Thu, 01 Oct 2026 21:43:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a23c0a83ead2011ce3ae0c734668df121977fe7e34ca74f534ef8638f27cf066`  
		Last Modified: Thu, 01 Oct 2026 22:34:36 GMT  
		Size: 6.9 MB (6873634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:202ef62c7da1ac2e21e44b30c8ec6492490d44fcb3e4e4635d82fab8ef360c1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37662bbdfa8482226e1a901289c2e2020a9663f4539c759ebcb885c3e0d7e755`

```dockerfile
```

-	Layers:
	-	`sha256:e2527d675b594cbeda83e791d98d66912514d9077be693bbbeef3fa37a9ed145`  
		Last Modified: Thu, 01 Oct 2026 22:34:36 GMT  
		Size: 8.0 KB (7968 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:41502aa759a56886580f57aaabfecafc72cf88fc7639ce745cdec03b4b91c74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27882616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e68bf2051bbaa00b0184f50bf64b79427bb4a8109296c5175c227e23cc294d8`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 22:14:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 22:14:30 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 22:14:30 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 22:14:30 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 01 Oct 2026 22:14:30 GMT
ENV PYTHON_VERSION=3.11.17
# Thu, 01 Oct 2026 22:14:30 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Thu, 01 Oct 2026 22:29:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:29:14 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:29:14 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 23:11:29 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 23:11:29 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 23:11:29 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 23:11:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa8dfdb6508d20c5660c197370fb5b38a2d725a98215a11f681712f8f16036b`  
		Last Modified: Thu, 01 Oct 2026 22:21:56 GMT  
		Size: 416.4 KB (416410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893b96df20e566c2d194077c05be7ef173197c8ec1df8b876080402af939bcee`  
		Last Modified: Thu, 01 Oct 2026 22:29:21 GMT  
		Size: 17.3 MB (17329357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb89f4a8f90cd872bfedc04868093e1f3c314d2421bfd648b0e3ed28e6e025cf`  
		Last Modified: Thu, 01 Oct 2026 22:29:21 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb037eb4ded6f1ff269993c4899c76073bd53c8a816af3315d0de18eed1fd3e`  
		Last Modified: Thu, 01 Oct 2026 23:11:35 GMT  
		Size: 6.9 MB (6873688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:be7ab225c48f33bf9738c3ab790689a0a8ec0f688465d68c73a1e2b53743ee46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.2 KB (694193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5ca191c3c62948d2719b1253899fca1b99894645a1c95945631faeb306e3ea4`

```dockerfile
```

-	Layers:
	-	`sha256:6f1b2ee3ab33eb901c910b1ef2196bebde07f01329cb9a83eaef7fb10dff85cc`  
		Last Modified: Thu, 01 Oct 2026 23:11:35 GMT  
		Size: 686.0 KB (686011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b83d3ded3eccce3838041bc8eda0ec202d148d54b304382c694cdb158422859`  
		Last Modified: Thu, 01 Oct 2026 23:11:36 GMT  
		Size: 8.2 KB (8182 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:f4c14f9e82ce6ab1df569763cd0610245cbf45c477705702e5b3293c0b90bd28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30661258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a78a909e81ffd7d1467ca2e54a2970675d7617d007bf6f0c230be65c69c9c045`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:53:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:53:18 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 21:53:18 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:53:18 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 01 Oct 2026 21:53:18 GMT
ENV PYTHON_VERSION=3.11.17
# Thu, 01 Oct 2026 21:53:18 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Thu, 01 Oct 2026 22:00:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:00:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:00:06 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 22:11:52 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 22:11:52 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 22:11:52 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 22:11:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd0576464befddc0f89e253bff971841da65dfc1f0b82c39af2d1474fe32a7d`  
		Last Modified: Thu, 01 Oct 2026 22:00:14 GMT  
		Size: 419.1 KB (419109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58613592f0ffdf5a8d5ede9e34599d43c83cf548e0c43d3ee05cb2453aab943c`  
		Last Modified: Thu, 01 Oct 2026 22:00:15 GMT  
		Size: 19.2 MB (19182070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32f13075a8eaca8b91f3fe7e51db27b60d26dc769388a579d729d08d638b3eb4`  
		Last Modified: Thu, 01 Oct 2026 22:00:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016d72134345e650a5d11d4562ab202c6a82f54c180d4ade36676db31b1c7446`  
		Last Modified: Thu, 01 Oct 2026 22:11:58 GMT  
		Size: 6.9 MB (6873774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:f392b3dde9918e0a32e5515eeb4d2f9359fafd932486d6d47a1f34b4ab48fe11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85cb9d0be5107262f0b7b4f8292aea398da3168722683e3a514c2ab8094105ef`

```dockerfile
```

-	Layers:
	-	`sha256:d3a0adfbaa96ec93acc3bbd31c3009c47ef60f5f3836dd9be73169ebe2b8b271`  
		Last Modified: Thu, 01 Oct 2026 22:11:58 GMT  
		Size: 683.0 KB (683041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65e794f60524d94d3e28156b98c9b45e202fd54bdfda5c784bf43498636112c5`  
		Last Modified: Thu, 01 Oct 2026 22:11:58 GMT  
		Size: 8.2 KB (8207 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:3182389102d1d8efee328f92f22c6152908a48676a4b45e8ba3a6bd409ba4e30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29697087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba331fd6b87bb6778e4a9c48df61cce252413eb9638cdbce42f4301fd10f748`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:56:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:56:04 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 21:56:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:56:04 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 01 Oct 2026 21:56:04 GMT
ENV PYTHON_VERSION=3.11.17
# Thu, 01 Oct 2026 21:56:04 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Thu, 01 Oct 2026 22:00:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:00:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:00:57 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 22:25:20 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 22:25:20 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 22:25:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 22:25:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f718552c906482d557f15c02c963c3ca5699078942d4a3c4b42aacc8b583a287`  
		Last Modified: Thu, 01 Oct 2026 22:01:04 GMT  
		Size: 416.9 KB (416873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66a29c6edebcf42e611c8554b2844dccae46cbf28a3bfdc17bfb77fa58704643`  
		Last Modified: Thu, 01 Oct 2026 22:01:04 GMT  
		Size: 18.7 MB (18731360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9424fe2d7e9b06ee0a6dfbaf3f881ea26e335ea3e5b489d0fee68c93089293c9`  
		Last Modified: Thu, 01 Oct 2026 22:01:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e38dfe5242eed3f30de6d52582ef98ceece8c43f33c1cbdb74e6888dec9bdae8`  
		Last Modified: Thu, 01 Oct 2026 22:25:26 GMT  
		Size: 6.9 MB (6873495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:5a19498e1acb699caf0dfdc66ab44f1fcbf641c40f79b34a53ffbf6d879bc41b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.7 KB (691681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d27eec093389bc02dd09a474c244e95b92d1f3a6a81994912c5356904d2bb3`

```dockerfile
```

-	Layers:
	-	`sha256:cae943d92b423398ab97561f267853e1a657b8ca25175a44dfe18c3ff8fd3b5e`  
		Last Modified: Thu, 01 Oct 2026 22:25:26 GMT  
		Size: 683.6 KB (683610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6181dcae90a08a45082dda1d68711eb620123aef17ee6270162dea3be4859f15`  
		Last Modified: Thu, 01 Oct 2026 22:25:26 GMT  
		Size: 8.1 KB (8071 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:c5a36c205cc045cce11ad03ab725a343758ce2ae97f0f37f7390da08bfe4e4e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30499110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3635d16edb3702b4678a46f1787a8c8a78950f30124ab38753c1b3a425dda20`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 02 Oct 2026 01:14:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:14:59 GMT
ENV LANG=C.UTF-8
# Fri, 02 Oct 2026 01:14:59 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Fri, 02 Oct 2026 01:14:59 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Fri, 02 Oct 2026 01:14:59 GMT
ENV PYTHON_VERSION=3.11.17
# Fri, 02 Oct 2026 01:14:59 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Fri, 02 Oct 2026 02:22:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Fri, 02 Oct 2026 02:22:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 02 Oct 2026 02:22:30 GMT
CMD ["python3"]
# Fri, 02 Oct 2026 05:59:40 GMT
ENV HY_VERSION=1.3.1
# Fri, 02 Oct 2026 05:59:40 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 02 Oct 2026 05:59:40 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 02 Oct 2026 05:59:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b6cc9dfb9e35e2023487ac63fba985e83a4d9eb9f3a6e1f179d411b803ea93`  
		Last Modified: Fri, 02 Oct 2026 01:27:07 GMT  
		Size: 419.5 KB (419490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5061acf69fd7efb20f77a8949b661bf5c6da872e502234f0a3ac897e5c8c34ef`  
		Last Modified: Fri, 02 Oct 2026 02:22:44 GMT  
		Size: 19.4 MB (19390734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dafe21d20c9b0d2d5a9970a7970405b0fc5aeb2c11dd960966e3dec3c58741`  
		Last Modified: Fri, 02 Oct 2026 02:22:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b719a0f8df9c8d3068ddd1bb6043001477f8e2e69c02457d90328d382f9cfa2c`  
		Last Modified: Fri, 02 Oct 2026 06:00:10 GMT  
		Size: 6.9 MB (6873868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:0ca8ce4de5123515b9ce0a959d826da99c7970ed8b04abbd08c0b05636eec49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876704308bedd31c9578332f78f4ecd8ebe0fec6ee9674c52228abb6756b96b3`

```dockerfile
```

-	Layers:
	-	`sha256:5ce09dab720ffe9da7239886804dbf87d95cd551a409f60c314c97ad53e26065`  
		Last Modified: Fri, 02 Oct 2026 06:00:08 GMT  
		Size: 683.0 KB (683018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e69a8c6d622d209297bd75c8bf181a58df40549640445a6247c92a183ebfd50`  
		Last Modified: Fri, 02 Oct 2026 06:00:08 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:8d2308286df52cf35d57270142ec28e4a4eecc73fdf83920661d6fa1fde00425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29142125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed4a0ff82daf09e8894f8a1b02d3e888b9f0fab35c32290bb96db4b69b4d8ce`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 19:27:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 19:27:15 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 19:27:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 21 Sep 2026 19:27:15 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 21 Sep 2026 19:27:15 GMT
ENV PYTHON_VERSION=3.11.17
# Mon, 21 Sep 2026 19:27:15 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Mon, 05 Oct 2026 18:28:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 18:28:24 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 18:28:24 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:59:09 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:59:09 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:59:09 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:59:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8724b641dedfa80250a72a9489c1b0c8a378027f2b9f94e3824010538939a70b`  
		Last Modified: Mon, 21 Sep 2026 20:03:36 GMT  
		Size: 416.7 KB (416739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b956f63d0dcad04ce35c7e723ebe89cdf586cf12e20149daf6ce0fbcf22ff6b9`  
		Last Modified: Mon, 05 Oct 2026 18:29:32 GMT  
		Size: 18.3 MB (18273774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d759538e33b065029679d94fdeb7899c901463f78e734324b040dcfff57f7b`  
		Last Modified: Mon, 05 Oct 2026 18:29:29 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ae2bade08771b8c48504f03d001e642416c31d4eff0ad9b700beaea0c24b69`  
		Last Modified: Tue, 06 Oct 2026 04:00:04 GMT  
		Size: 6.9 MB (6875040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:18414b8918f2feca749adb8480ff23eb91fe61375d8b9f9b15fd9101b4cbfc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdd36808cb1cb1b5a80bf85c65d3bece9b31107b5bbd171b3adcba7022f7c9c`

```dockerfile
```

-	Layers:
	-	`sha256:384cd11bd83eafbb7a3bb4bde863bd395532bb0b85191a7110041cd851750817`  
		Last Modified: Tue, 06 Oct 2026 04:00:02 GMT  
		Size: 683.0 KB (683014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94ac6aaa6b0afe5f3a07894f54701b4466bbf62c839e632962b38bd43bfac119`  
		Last Modified: Tue, 06 Oct 2026 04:00:02 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:b8e34e42cb2e862cd71970fc23790b27633e72ee464056d153c70e6c9f516c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29931801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57de02975ece257ad56fc0736edf8a267e9ff628b443cb024e07cb08431a2bf`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:58:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:58:12 GMT
ENV LANG=C.UTF-8
# Thu, 01 Oct 2026 21:58:12 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:58:12 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 01 Oct 2026 21:58:12 GMT
ENV PYTHON_VERSION=3.11.17
# Thu, 01 Oct 2026 21:58:12 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Thu, 01 Oct 2026 22:16:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:16:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:16:28 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 23:09:53 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 23:09:53 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 23:09:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 23:09:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92fd4175beca43881c275993559a61e4245b3ec8559e585792b433f89987ef9d`  
		Last Modified: Thu, 01 Oct 2026 22:05:43 GMT  
		Size: 417.4 KB (417414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403b69f09d5e0ac353a198330b5740d0f0f941a9acdbf966eabaed7eb1b4c986`  
		Last Modified: Thu, 01 Oct 2026 22:16:42 GMT  
		Size: 18.9 MB (18926772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d894068a136da57d7cd4aa5f6a39c379c582350ae4eab5ef531dd3981865649e`  
		Last Modified: Thu, 01 Oct 2026 22:16:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357a365f145cf77da800af843926b62e89862b7a1ebe343929693ccaa0eb0453`  
		Last Modified: Thu, 01 Oct 2026 23:10:10 GMT  
		Size: 6.9 MB (6874111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:e7904cef584d06d857e02a574b111d6d6f784625b4380f339d1955e40ef1b283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.1 KB (691087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5bb0b7e9bfe79a27d9e4e440bb524ace98f7a5142ca522de45af0f783371239`

```dockerfile
```

-	Layers:
	-	`sha256:30b9d8a1b716d5ec91b34a72f8496b75b706c2a46a7eae4c98bf541f9f4d3bd6`  
		Last Modified: Thu, 01 Oct 2026 23:10:09 GMT  
		Size: 683.0 KB (682984 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3579c0abcbe0746fe9c4124c165cff9fc2149fb46562c5b8e719ccff05f33e6b`  
		Last Modified: Thu, 01 Oct 2026 23:10:09 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json
