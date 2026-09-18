## `hylang:1-python3.12-alpine3.24`

```console
$ docker pull hylang@sha256:26e9eec1c0462c9e80e6bc9935da52195e8618276405da19986684a05211749c
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

### `hylang:1-python3.12-alpine3.24` - linux; amd64

```console
$ docker pull hylang@sha256:2b2d843cacebe1b3bda31be5a9c2931fd169c56cbe9d4c9e38b63adbc2ce9b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23301905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82aaa4dd6609a3b5e60fd3651d64810d8fac407213e927b3dbd4130fef210c91`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:47:50 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:47:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:47:50 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:47:50 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 17 Sep 2026 21:47:50 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 17 Sep 2026 21:53:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:53:03 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:53:03 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:47 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:47 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd5c69ca31cfb36ae0002c3049cf2d7bf398b9bb1099035e8634e3510ee84da`  
		Last Modified: Thu, 17 Sep 2026 21:53:09 GMT  
		Size: 416.3 KB (416265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abff04c4f315a5424ff8d34ad0c10700efc2fc32961841df78d2bfc17e1a353`  
		Last Modified: Thu, 17 Sep 2026 21:53:10 GMT  
		Size: 13.8 MB (13771491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eec1681053c5141288662af49733b23283c6aa149e2f077733bd515acdfa190`  
		Last Modified: Thu, 17 Sep 2026 21:53:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e5bdfb89cbfcc2b3c22820e12c2f1bc50a1b482ece9d6b3e4ed3fc380baa77`  
		Last Modified: Thu, 17 Sep 2026 22:35:53 GMT  
		Size: 5.3 MB (5264162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:36c7ed8eef2de0fcbba7b09730d58d56ad7588daff7ab79e4220a7c7739d5aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.6 KB (646642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d12fa1ef806414ca86c0a4daa72a5939329af84cca0afb9b5e125bb4aadeee4a`

```dockerfile
```

-	Layers:
	-	`sha256:807020b5ec09d1c699135f012bbfdeda8d6bbc831aebb0dbd117bf02d3fe7622`  
		Last Modified: Thu, 17 Sep 2026 22:35:53 GMT  
		Size: 637.2 KB (637235 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7df1e914485161a3ad2619c0d9654453b5c0a87663c6d5330e3083dfcffd4d60`  
		Last Modified: Thu, 17 Sep 2026 22:35:53 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.24` - linux; arm variant v6

```console
$ docker pull hylang@sha256:c059e427cf1abd762a87e110aef08b99d256457094e313a477c213d432b8ad76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22568175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9334f22e94c7748ba8bf279b3774fe5faed73fb4e4c9c3cbe86b4e07c5a7c4`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:00:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:00:23 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:00:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:00:23 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 22:00:23 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 17 Sep 2026 22:00:23 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 17 Sep 2026 22:07:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:07:11 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:07:11 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:49:19 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:49:19 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:49:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:49:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37ff06e4ee73bd30ee159e6f9fd3d6f08f8109185966f57f56fa016ed5d8029d`  
		Last Modified: Thu, 17 Sep 2026 22:07:16 GMT  
		Size: 417.5 KB (417510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec464f3537bb384ee927540da1bb07bf3b0974e089961149cde5681d314006e6`  
		Last Modified: Thu, 17 Sep 2026 22:07:16 GMT  
		Size: 13.3 MB (13331053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a24e0c691a38447798e11e4749aa43fa70d2285709f896ebe0537df795949dc`  
		Last Modified: Thu, 17 Sep 2026 22:07:16 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc1e44556238444c459549e10d5864b6f8da68e2457dbe60e4b1f2fa329b2eb`  
		Last Modified: Thu, 17 Sep 2026 22:49:24 GMT  
		Size: 5.3 MB (5264252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:fca86338bc7ac50b6238decc6c63178da5b6a0cf956e14f4cb23bf8e64916754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40cb5e74d75235c597c4c6c6caf77f00197402888249de804b745bef7cb2db9`

```dockerfile
```

-	Layers:
	-	`sha256:03d0c9808d33d774f5eac0cbc974faffb16caf1333045545cc91a870d2151d5b`  
		Last Modified: Thu, 17 Sep 2026 22:49:24 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.24` - linux; arm variant v7

```console
$ docker pull hylang@sha256:e7cc2d181a5bd5015dd71bc7ba19f6e93233165eca90e7e6a06065970f4b40ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21875961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d52f089d3145331c050cce0b5679f79bb220d31cae6675915c397a7ba6f826`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:05:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:05:59 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:05:59 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:05:59 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 22:05:59 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 17 Sep 2026 22:05:59 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 17 Sep 2026 22:13:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:13:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:13:18 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:53:10 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:53:10 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:53:10 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:53:10 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f85b2eee4f07e03bcaf052377edf8acfbc7e147751472e5bc92c12dc19aab31`  
		Last Modified: Thu, 17 Sep 2026 22:13:24 GMT  
		Size: 416.4 KB (416399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca326dc939d241927912004131e4a9c6acbf715d3994dd1e4374991300edb9c`  
		Last Modified: Thu, 17 Sep 2026 22:13:24 GMT  
		Size: 12.9 MB (12929846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4402bc545febe458b1fd8a9fd21e1e145585ec080a2540acdbfc43cfd9692a`  
		Last Modified: Thu, 17 Sep 2026 22:13:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1a13e502d6a9af496a93727d33fea1cc5d0ddb266780b48d3b900b37cb5174`  
		Last Modified: Thu, 17 Sep 2026 22:53:15 GMT  
		Size: 5.3 MB (5264266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:2d797a8f02d48b2c13e3f7319023e5bd27487c59110719cb4cb50408fc47e1a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **649.2 KB (649162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056dd01054ca1f39c68105060050e695dead98807902740d4c56f22e6fe45371`

```dockerfile
```

-	Layers:
	-	`sha256:b6c2949b5427ab2ae73367b4653aa64e8b0152e9e81b020218f23dd4816f815e`  
		Last Modified: Thu, 17 Sep 2026 22:53:15 GMT  
		Size: 639.6 KB (639643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc3aaca68a30582ca96b2d6ec172910e5c7f7d02ef5a505395aaf426a2556c4c`  
		Last Modified: Thu, 17 Sep 2026 22:53:15 GMT  
		Size: 9.5 KB (9519 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:7443208e283bb866f5b7ec4e833bd92e25241a366ba6df3a129c540e9ce9ba35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23783917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c86a3e0f8b3a489686e9f1387d14d825112b22bcb3e8736a01b532f49998f8`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:51:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:51:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:51:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:51:43 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:51:43 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 17 Sep 2026 21:51:43 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 17 Sep 2026 21:58:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:58:31 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:58:31 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:59:59 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:59:59 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:59:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:59:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8000482fc84a1406d5a86573d75f8795aa5e11ec684112f12d29b04e13503267`  
		Last Modified: Thu, 17 Sep 2026 21:58:38 GMT  
		Size: 419.1 KB (419099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6b3b5e68361d68fb90442b7afc1da2bb0422ff706f9b2022ada24ff7fa58d3`  
		Last Modified: Thu, 17 Sep 2026 21:58:38 GMT  
		Size: 13.9 MB (13912673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fd4f54b89777aae21c6b0549a84a1c85a6f835fc160778601321011c89541b`  
		Last Modified: Thu, 17 Sep 2026 21:58:38 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1043883e3adfcd4fdb92e5b09560669083c11d3e841f622d6095dc7b6178520`  
		Last Modified: Thu, 17 Sep 2026 23:00:08 GMT  
		Size: 5.3 MB (5264239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:74678acbd59a3cf9e19c3dba597976a0de757ecc29e57f3ae2b538991df50b83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.2 KB (646248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab13bcbab1bb5ba6171b46d4309cd72975fba1b544f55ac2f67c9dc01eaf1a1c`

```dockerfile
```

-	Layers:
	-	`sha256:a3d8821aa1d6c2a1f9e248ce02a0bf7fd4351a0ae69f2212a6785178267e2c3a`  
		Last Modified: Thu, 17 Sep 2026 23:00:07 GMT  
		Size: 636.7 KB (636689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f43670db67f1d9ebf335e0907c093003868efc18e3e7494c6058c6ca2f197ab4`  
		Last Modified: Thu, 17 Sep 2026 23:00:07 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.24` - linux; 386

```console
$ docker pull hylang@sha256:f813cf469181555f58dc259019e13f3ddfe185f3c498601e2739903b136a3905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25707933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7d5bba6e46599c2e962ad3ab5f331b045e93e83f0ae350b0d808de1668cf92`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:42:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:42:37 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 23:42:37 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:42:37 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:42:37 GMT
ENV PYTHON_VERSION=3.12.14
# Mon, 31 Aug 2026 23:42:37 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Mon, 31 Aug 2026 23:47:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:47:46 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:47:46 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:15:17 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:15:17 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:15:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:15:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08eafafa6963a73057550fff4393c0122dd96dba40735fba27ea6e5f60b6e57e`  
		Last Modified: Mon, 31 Aug 2026 23:47:53 GMT  
		Size: 408.9 KB (408858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831687d4220ababdafc8d3447cab59b6e116cf163b3ad2e483673b61bff24939`  
		Last Modified: Mon, 31 Aug 2026 23:47:53 GMT  
		Size: 16.4 MB (16364487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf770dc7cb5b9d22ab9e4cc22d5a6a8393c205801340dba36766cefa6a30456`  
		Last Modified: Mon, 31 Aug 2026 23:47:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c47bf9d82776ee0bc6921a217ea910eb70eb352e025c96f1fb63206d83c0ffe`  
		Last Modified: Tue, 01 Sep 2026 00:15:23 GMT  
		Size: 5.3 MB (5264199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:ea5899dd0a8865a60d0ca10dd9feffb66020b3f25812f9221dc37cac69e37c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **645.3 KB (645252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a839df4fc060583c49a8ee65b0f2c4c4a5d907121188045b0a472886c35a2d5a`

```dockerfile
```

-	Layers:
	-	`sha256:78db1698c282aead5025c0980ef2a7461064142c76f5d8173c665e69f361093d`  
		Last Modified: Tue, 01 Sep 2026 00:15:22 GMT  
		Size: 635.9 KB (635897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d260d068694a263a186282cbd9caa7863cc55a6581c5a2169bae434a3b576d5`  
		Last Modified: Tue, 01 Sep 2026 00:15:22 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.24` - linux; ppc64le

```console
$ docker pull hylang@sha256:c16e925c1d855f9610eedb600dcfa14e827d4ce7b683d19c65f0d0e87e9041f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26563588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990646c7a531203b276ce035da59b78614ac9f1b6b4162f2e8b584ba869a7e29`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 02:17:41 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 02:17:41 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 02:17:41 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PYTHON_VERSION=3.12.14
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Tue, 01 Sep 2026 02:27:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 02:27:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 02:27:54 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 04:14:34 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 04:14:34 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 04:14:34 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 04:14:34 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d210b05295b23111ad9ac4c37543979cb7952539eaddcd7e73cc1dec195411ed`  
		Last Modified: Tue, 01 Sep 2026 02:28:05 GMT  
		Size: 412.3 KB (412285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101a14301cb034454932027b5ec925cb3934e85f5eed994d53b709f78d7090e0`  
		Last Modified: Tue, 01 Sep 2026 02:28:06 GMT  
		Size: 17.1 MB (17073395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9d9eaf8cdd50f822c54d3dc1ebadae33105398b5581ab79425c3f08f29d0e5`  
		Last Modified: Tue, 01 Sep 2026 02:28:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cc03ad0518ffad166666f658f8e24795c75d465d4dfa3c89800106cc81857c`  
		Last Modified: Tue, 01 Sep 2026 04:14:44 GMT  
		Size: 5.3 MB (5264260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:d8f92380618b157df4c4bfb5107bb2df2c2425494ab4a7494691d75ed161b697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 KB (644824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43760eaf2da920f90c0ac8481cab5262b240a324be28190312f2745df2756363`

```dockerfile
```

-	Layers:
	-	`sha256:3fc99435b4f75fc4bdf1ab97ca374f31a649bcfbcfa4ed7db8f601c6fba9fb5d`  
		Last Modified: Tue, 01 Sep 2026 04:14:44 GMT  
		Size: 635.3 KB (635349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aecab7183e2a3546f41b32f7365d2302ec1396f6423a77896f0a967ff5175adc`  
		Last Modified: Tue, 01 Sep 2026 04:14:43 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.24` - linux; riscv64

```console
$ docker pull hylang@sha256:67650a3e8e5207ec415f0fff20faefbb71739ddc3f0fa564093275a659a64125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25272000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c781e145578320718a34e1a99a847d0635a7b73026f54d4b9b32d5fd8f5ca0b`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 02:10:17 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 02:10:17 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 02 Sep 2026 02:10:17 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PYTHON_VERSION=3.12.14
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Wed, 02 Sep 2026 02:44:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 02 Sep 2026 02:44:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 02 Sep 2026 02:44:34 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:40:51 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:40:51 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:40:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:40:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914bf5a089621f8461f56dd92da4a1b1112c22e5f67444d0523cf7db398b8407`  
		Last Modified: Wed, 02 Sep 2026 02:45:23 GMT  
		Size: 408.6 KB (408648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59d89cc692d934f044a29e1d29ed2a962e610aed2e93bcd06540c69fa2bcbb9`  
		Last Modified: Wed, 02 Sep 2026 02:45:25 GMT  
		Size: 16.0 MB (16023394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003d7dac5554ef22d2bcdeabc46828277c5bd6f31351ceacd834757b2a9dd56c`  
		Last Modified: Wed, 02 Sep 2026 02:45:23 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9db6de42dce7ad2c053167e36cdbe1b4e1b1846f5e27aeef0d49242d20f41f9`  
		Last Modified: Thu, 03 Sep 2026 04:41:30 GMT  
		Size: 5.3 MB (5265349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:25553759e22cab6ff098d5329ab09d4aa21460f4e57fb5211c82faeb2c8ffebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 KB (644819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4531667978ff05668d6567fa7a2953d61ad12137f88ba3133cfb8fdcffd1506e`

```dockerfile
```

-	Layers:
	-	`sha256:269d1b919b839093600e054a519bfd73a6e384ccec65d15c3b7be2c0065a6d2c`  
		Last Modified: Thu, 03 Sep 2026 04:41:29 GMT  
		Size: 635.3 KB (635345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60685e83497fca52f4c48286669b249f6abe65f3b2e912fa426035ad2d517d60`  
		Last Modified: Thu, 03 Sep 2026 04:41:29 GMT  
		Size: 9.5 KB (9474 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.24` - linux; s390x

```console
$ docker pull hylang@sha256:e29e3f2b4a582ffb80df41646bf5fc113ea6d54bb93029bf6baefe21cfe6ee75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26030354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e274ebb9759101b8ec515e9cab82113f28785bd7fdee3e62afae5d65ea6d40`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:02:04 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 00:02:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:02:04 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PYTHON_VERSION=3.12.14
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Tue, 01 Sep 2026 00:10:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:10:14 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:10:14 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 01:24:05 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 01:24:05 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 01:24:05 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 01:24:05 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2b70cacdcf2536a432722326a83028457208f6d13529c1243a87f3f1fcf1b4`  
		Last Modified: Tue, 01 Sep 2026 00:10:29 GMT  
		Size: 409.5 KB (409498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a064a5400d1a04c8e231cb91bea4a4856d20251d92ba6e0d3112e2698bd5345`  
		Last Modified: Tue, 01 Sep 2026 00:10:30 GMT  
		Size: 16.6 MB (16647006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825f22e7f42ff24cac68119d4748ee99ecbcc8f9b1855b75dd797aae0a60b450`  
		Last Modified: Tue, 01 Sep 2026 00:10:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1fa87b9e5793de6f2155f473645b7b823d300e781065e0f5761aa4cb77733d`  
		Last Modified: Tue, 01 Sep 2026 01:24:16 GMT  
		Size: 5.3 MB (5264281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:df36b1ece1c27fe129506023f0b45916dac0bad2f9c1fb58ff15a35d7a4ed1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.7 KB (644698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88748a32c9280f4ea4f18722dfff05909dd8c544b5866043ca6774441349ed5`

```dockerfile
```

-	Layers:
	-	`sha256:0e7c8d164016780fb361321c9722a49f9409c1fc3c3c951bfa92733426d867ad`  
		Last Modified: Tue, 01 Sep 2026 01:24:16 GMT  
		Size: 635.3 KB (635291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e93fd20f0b0901f4c451cd5fccd5c1878a0b9a2aaef77066a6e9851c1c013dee`  
		Last Modified: Tue, 01 Sep 2026 01:24:16 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json
