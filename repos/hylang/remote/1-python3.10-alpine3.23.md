## `hylang:1-python3.10-alpine3.23`

```console
$ docker pull hylang@sha256:db09de3e2a6e6aa8220bfa0d121414efcf5671b7cbf195dc49d25189e958ce88
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

### `hylang:1-python3.10-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:4f795b22f3ed273c26a3c6edc98a652fafa049ee177e95f207b98cac8cdc1ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24948030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f3f491050f2164298044c17026470c7103fafcec69e7bf932d7a52a6cd113a1`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:42:22 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:42:22 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 21:42:22 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:42:22 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:42:22 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:51:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:51:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:51:05 GMT
CMD ["python3"]
# Mon, 06 Jul 2026 22:12:22 GMT
ENV HY_VERSION=1.3.0
# Mon, 06 Jul 2026 22:12:22 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 06 Jul 2026 22:12:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 06 Jul 2026 22:12:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59619ca7040acc431065441a3cd1e764c5a759861cd0a4f1618c4c1b26af57ba`  
		Last Modified: Mon, 06 Jul 2026 21:47:45 GMT  
		Size: 408.8 KB (408770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3007584e4db76b181dcd14eaef1f5f78689e76345a3a076ce0920416cf1f0b`  
		Last Modified: Mon, 06 Jul 2026 21:51:12 GMT  
		Size: 15.5 MB (15507928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e789c42b673895cfbffb64be235d789cd60a6d9d4ed5c005a8fcbe1c40c3d3c4`  
		Last Modified: Mon, 06 Jul 2026 21:51:12 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6924e89265fdc42229fda883e1ed6e1f99413816a4ecd61be65bbfeda46d9c1`  
		Last Modified: Mon, 06 Jul 2026 22:12:28 GMT  
		Size: 5.2 MB (5186664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:22742ad65c610866bdee29f3fefe6d064d5485b9abf8a1e89b9818746f0a8472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.5 KB (690485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:646733b73e4601ab0ea162058c4330a0c80feb1f7c247c35901089e5605fbee2`

```dockerfile
```

-	Layers:
	-	`sha256:afd47f0ea3beef2e62c778b869e15c6383c80f20b81bb6b8278787dd28efc3fa`  
		Last Modified: Mon, 06 Jul 2026 22:12:28 GMT  
		Size: 682.4 KB (682382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbb999ade77cf53f26cbb4ee46f54a07f2eb4e62bf0fdee2855c11395e1c8c22`  
		Last Modified: Mon, 06 Jul 2026 22:12:28 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:cc4eeff5aa557671fe3fc2d8528ad1cb9147141abef119a6dafeeb0f974bad3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24175225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042414492fe5d771bcc6fada514cd1307ebaadba5a1c4697a0cd2c4a809f5a25`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:58:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:58:13 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 19:58:13 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 22 Jun 2026 19:58:13 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 22 Jun 2026 19:58:13 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 22 Jun 2026 19:58:13 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 22 Jun 2026 20:02:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel<0.46' 	; 	pip3 --version # buildkit
# Mon, 22 Jun 2026 20:02:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 22 Jun 2026 20:02:07 GMT
CMD ["python3"]
# Mon, 22 Jun 2026 20:36:55 GMT
ENV HY_VERSION=1.3.0
# Mon, 22 Jun 2026 20:36:55 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 22 Jun 2026 20:36:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 22 Jun 2026 20:36:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6825ba443163d6bd0192997803fbb329fe3ead52b879f8e4641c435d95a8dc`  
		Last Modified: Mon, 22 Jun 2026 20:02:12 GMT  
		Size: 410.6 KB (410593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc901d58fb4f000a9a834eab7449ab7fd88902f248654b87a8356098c3a41729`  
		Last Modified: Mon, 22 Jun 2026 20:02:13 GMT  
		Size: 15.0 MB (15046697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6494f28a63cdc7e496461f487bd8e0b386e4f86c7598f81dc15477061437bd`  
		Last Modified: Mon, 22 Jun 2026 20:02:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c28b2666293749743203f22b87b9b6b1b5d22510cf68cb00c40c50d142a0c202`  
		Last Modified: Mon, 22 Jun 2026 20:37:00 GMT  
		Size: 5.2 MB (5165090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:bb35318707bbeb025dd93b406bda64930e8da786dabf6b31cee8a9e3f08a371c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:960c18df2fb0f71a694429cdf854a1a0569ba40b561c6fd956f5f3ec9a02e0d6`

```dockerfile
```

-	Layers:
	-	`sha256:61c48b77038ac35a0d7b802bf9d946ee2b61c1cb8396e2b7b45a97842e01fe3a`  
		Last Modified: Mon, 22 Jun 2026 20:36:59 GMT  
		Size: 8.0 KB (7968 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:7f791502707d60e7541602ed9099708a329a100cad4cc3f9cd46814274e031a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23547947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3126421ce7428e2d41bd20cc12f5a18f582506d29262950fcc80ac4b3906f04`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 22:01:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 22:01:34 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 22:01:34 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 22:01:34 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 22:01:34 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 22:01:34 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 22:05:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 22:05:36 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 22:05:36 GMT
CMD ["python3"]
# Mon, 06 Jul 2026 22:12:16 GMT
ENV HY_VERSION=1.3.0
# Mon, 06 Jul 2026 22:12:16 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 06 Jul 2026 22:12:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 06 Jul 2026 22:12:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e23ce5f36f42bc06920ab51151168393df5d9fcf15e211262b8353ef710763`  
		Last Modified: Mon, 06 Jul 2026 22:05:43 GMT  
		Size: 409.3 KB (409305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb1ad986854babadce10545a0876423676bcca7630bb05b7713056d639a19fd`  
		Last Modified: Mon, 06 Jul 2026 22:05:44 GMT  
		Size: 14.7 MB (14689926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e9200e8d335215c580a92fd5df190bec4cdf3d79139ae7af67c8286e1a3b7f`  
		Last Modified: Mon, 06 Jul 2026 22:05:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a360ee77fe5b493043d3b8d627672740704eea8b59c20d89660e402315bb2541`  
		Last Modified: Mon, 06 Jul 2026 22:12:23 GMT  
		Size: 5.2 MB (5186614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:9ec0d0703c492d18d35b2b79d96d9cdc5cd16e56282b899c0ef2bf06e8dcea5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.9 KB (692941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a8da922e42e2917223132229a6a056f6efcb7061ba240732975674015cee5d`

```dockerfile
```

-	Layers:
	-	`sha256:8cd2a086a96a25a10610020aba8b22112b8b9e7f04e085df56261a63caa0b341`  
		Last Modified: Mon, 06 Jul 2026 22:12:23 GMT  
		Size: 684.8 KB (684758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a69e79efa5b32fb3f7afe1003c378a3a6c2da0896dddc67e12466734d2d15fff`  
		Last Modified: Mon, 06 Jul 2026 22:12:22 GMT  
		Size: 8.2 KB (8183 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:b93e55dbf678e352eec24fe737001e8036027dd456758e42d466e78ae682c747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25467502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3a0a675e63b6c7422df365cd8948b76e9984cd9f051bedcb9c53de2dca71071`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:47:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:47:13 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:47:13 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 21:47:13 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:47:13 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:47:13 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:51:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:51:12 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:51:12 GMT
CMD ["python3"]
# Mon, 06 Jul 2026 22:12:49 GMT
ENV HY_VERSION=1.3.0
# Mon, 06 Jul 2026 22:12:49 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 06 Jul 2026 22:12:49 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 06 Jul 2026 22:12:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8425d5d3001aad586e7e34f57ef1a567974f2d2b661ff9324cf4cb6cc157a8f4`  
		Last Modified: Mon, 06 Jul 2026 21:51:19 GMT  
		Size: 412.5 KB (412467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d63888f12a07d482f1d643991b98bd7dc6829c8197f90a85a665bfe2da0940f`  
		Last Modified: Mon, 06 Jul 2026 21:51:19 GMT  
		Size: 15.7 MB (15686261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4923379159a3fc3cf11de21763fb06b4c4186eb574943bde227a4714792fd37`  
		Last Modified: Mon, 06 Jul 2026 21:51:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12edd8dbd0f52ccea35c873f39a67f248bf1437b805db10f254fdfb52f6b7ae9`  
		Last Modified: Mon, 06 Jul 2026 22:12:55 GMT  
		Size: 5.2 MB (5186667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:db603ab850c7de25d8136e34b23ae7eecab4ab476d5f4dbc5a91b6faad2ada82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.0 KB (689995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c4c75bd3e71bfaab24b1acd4ca619885fe1b8859f7605c9d4828d7550c8d18`

```dockerfile
```

-	Layers:
	-	`sha256:2fa051ca589f1204da4259ecbb57c4f137a34c7379064df468e2c73033b68554`  
		Last Modified: Mon, 06 Jul 2026 22:12:55 GMT  
		Size: 681.8 KB (681788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07f8b3f5a70517c5db2864563e00e07e80c7ea04b3b49aa047b51faf32defce1`  
		Last Modified: Mon, 06 Jul 2026 22:12:54 GMT  
		Size: 8.2 KB (8207 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:40f8915f1c69397923b58b08c4d1a4fc4ecd3bbfde2c0b43e1eb54d24193a0a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (25002209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f831a4359ea9f48f3b33cf7d3facdfdfce0b31c63a8f72a726fc306bbbce8fb7`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:51:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:51:46 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:51:46 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 21:51:46 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:51:46 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:51:46 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:54:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:54:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:54:50 GMT
CMD ["python3"]
# Mon, 06 Jul 2026 22:14:02 GMT
ENV HY_VERSION=1.3.0
# Mon, 06 Jul 2026 22:14:02 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 06 Jul 2026 22:14:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 06 Jul 2026 22:14:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d06a43dfee5b89332ecae97abe05ee8e5e287c8096ba9f665f269f310a31ca`  
		Last Modified: Mon, 06 Jul 2026 21:54:57 GMT  
		Size: 409.7 KB (409660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64f7e787b13df61b8dc9e98cb74dab0825dad91ba200792a2770656d845ceb5`  
		Last Modified: Mon, 06 Jul 2026 21:54:57 GMT  
		Size: 15.7 MB (15737735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3816c7f2f4a03e7d04260a59c889835f5ab0921bf67221b985b084b294bae6f4`  
		Last Modified: Mon, 06 Jul 2026 21:54:56 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b6dd0e10aedea47463367225acbbb82de78732d03142738a94b987968e2c2a`  
		Last Modified: Mon, 06 Jul 2026 22:14:08 GMT  
		Size: 5.2 MB (5186578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:87275aa4bd1495903d986481801cca346bf62aca584953d9d884f0b19244b20f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.4 KB (690426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4f0f16d890b9e2bb5b39cacd1da1d62740a0b1e72f64fe0214c3f06ec0b5889`

```dockerfile
```

-	Layers:
	-	`sha256:f226f43ae5d768309454ef574d0c3892f2b9b98625443c9e0b94f5b6462ec84b`  
		Last Modified: Mon, 06 Jul 2026 22:14:08 GMT  
		Size: 682.4 KB (682357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8ffd9f83e2d1d341911f046cbed3a62da4c752b68ea6ea1dc7b31cf11421c31a`  
		Last Modified: Mon, 06 Jul 2026 22:14:08 GMT  
		Size: 8.1 KB (8069 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:a0ff166f72adb0511018a161a927c7d8158ab72297a13133012de2c8078d8146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25646850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d16b76f10005a68f614e35a4c61406f71a845ab4ee0ab6203d3088417fcc6c7`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:02:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 21:02:15 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 21:02:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 22 Jun 2026 21:02:15 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 22 Jun 2026 21:02:15 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 22 Jun 2026 21:02:15 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 22 Jun 2026 21:19:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel<0.46' 	; 	pip3 --version # buildkit
# Mon, 22 Jun 2026 21:19:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 22 Jun 2026 21:19:26 GMT
CMD ["python3"]
# Mon, 22 Jun 2026 22:24:25 GMT
ENV HY_VERSION=1.3.0
# Mon, 22 Jun 2026 22:24:25 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 22 Jun 2026 22:24:25 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 22 Jun 2026 22:24:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24ff2f2192e4c3a8c0f0b17ef1b9c1fe46e798524480d8f19dfb5cdb76201cc`  
		Last Modified: Mon, 22 Jun 2026 21:12:42 GMT  
		Size: 413.0 KB (412951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af9ff91c05c244bee98f091a4a7e3b92378e3db634fe2168aaea47c73b9146c`  
		Last Modified: Mon, 22 Jun 2026 21:19:39 GMT  
		Size: 16.3 MB (16255846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05098dfa9ed47e9937b72861f86a2511673b70ec3a54466fabaf31d4c524cab7`  
		Last Modified: Mon, 22 Jun 2026 21:19:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6763580cbfd5bd613db49912eb93035e2bad4d297f9b186df93c836f1f9e644`  
		Last Modified: Mon, 22 Jun 2026 22:24:38 GMT  
		Size: 5.2 MB (5165506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:6bfade1d7466927ffdece1be9976c4996e8f30fec17c0e9ef2dc8e463d660533
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **687.3 KB (687344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53d37b9e771b7c4f34cb9aa583e66a52ffbbfba38c1b9a2c454a609975cc6b2`

```dockerfile
```

-	Layers:
	-	`sha256:c652ee32494d63a01d4e36febdf275521942131b687c2716de06bb4128fedaa9`  
		Last Modified: Mon, 22 Jun 2026 22:24:38 GMT  
		Size: 679.2 KB (679198 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7000b6209a975a873b703bad02f28d126d71f83dca68ba10aa7d160ad8176cdd`  
		Last Modified: Mon, 22 Jun 2026 22:24:38 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:0bbed018e0b52da9190751870a9cb51197b83b5626c87e6246c8bec26e5050f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24560791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db8101a9272f513c9724c077c7863b52e219a11da24e43f3eaaaa1a75c816b3`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 23 Jun 2026 17:28:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 23 Jun 2026 17:28:55 GMT
ENV LANG=C.UTF-8
# Tue, 23 Jun 2026 17:28:55 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 23 Jun 2026 17:28:55 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 23 Jun 2026 17:28:55 GMT
ENV PYTHON_VERSION=3.10.20
# Tue, 23 Jun 2026 17:28:55 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Tue, 23 Jun 2026 19:03:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel<0.46' 	; 	pip3 --version # buildkit
# Tue, 23 Jun 2026 19:03:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 23 Jun 2026 19:03:52 GMT
CMD ["python3"]
# Wed, 24 Jun 2026 11:45:39 GMT
ENV HY_VERSION=1.3.0
# Wed, 24 Jun 2026 11:45:39 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 24 Jun 2026 11:45:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 24 Jun 2026 11:45:39 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1638cef9119638f1e081f72bc2a35a49471dd6c468ba6135f367c46ba170f9b`  
		Last Modified: Tue, 23 Jun 2026 18:04:10 GMT  
		Size: 409.4 KB (409412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f577b4bbfb8499650d283d2ffc14b3dfb01669ae2ffd81287bb416a0a7a46374`  
		Last Modified: Tue, 23 Jun 2026 19:04:42 GMT  
		Size: 15.4 MB (15411343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4daa1fd6fddf96376f6ac9cc2ca6765a18e66115786a715192f65f221f458641`  
		Last Modified: Tue, 23 Jun 2026 19:04:39 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5609f655a9979f59ae68e3c2a2348961d7f64ce77d051bf2b6f64cec9149838c`  
		Last Modified: Wed, 24 Jun 2026 11:46:19 GMT  
		Size: 5.2 MB (5166547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:f713da385b4abcccdb5935c9ae40ebd706ae328a86ec74972047d7a9d0011ea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **687.3 KB (687341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1544c9489103397b4e7536af4cec0eab848cc33a72af88e5bd322622e8754a`

```dockerfile
```

-	Layers:
	-	`sha256:3583dcd04434b7275515501323851965d2b167ea12608c52b9936d6b815e40a6`  
		Last Modified: Wed, 24 Jun 2026 11:46:18 GMT  
		Size: 679.2 KB (679194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4631e50edb3f07a0fda244eb8e1a04882aa4b07a3f48c8a755677b794c3b60dc`  
		Last Modified: Wed, 24 Jun 2026 11:46:17 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:56541c7b6d214174892c4a2e8925e14597d16f26faf8218abc14227e49cda325
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.1 MB (25102741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3d2359ec5a8b8cdfb368007b9708c9b7713546417e7316f4157e32bc62ed397`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 20:24:42 GMT
ENV LANG=C.UTF-8
# Mon, 22 Jun 2026 20:24:42 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 22 Jun 2026 20:24:42 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 22 Jun 2026 20:24:42 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 22 Jun 2026 20:24:42 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 22 Jun 2026 20:36:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel<0.46' 	; 	pip3 --version # buildkit
# Mon, 22 Jun 2026 20:36:58 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 22 Jun 2026 20:36:58 GMT
CMD ["python3"]
# Mon, 22 Jun 2026 21:58:44 GMT
ENV HY_VERSION=1.3.0
# Mon, 22 Jun 2026 21:58:44 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 22 Jun 2026 21:58:44 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 22 Jun 2026 21:58:44 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f31bec63a13dc838f6240db83628a8889fd1cea8ebcda38e15265592d50392`  
		Last Modified: Mon, 22 Jun 2026 20:32:14 GMT  
		Size: 410.3 KB (410315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1532e30fb628a88443cfa9ee6ed469341a861d1f228c85adddef7fb88711cb6e`  
		Last Modified: Mon, 22 Jun 2026 20:37:10 GMT  
		Size: 15.8 MB (15819808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04db39580ac616c5ffa1ee9a21fa4726372497cdaa0f4238c6edf79dbebd3287`  
		Last Modified: Mon, 22 Jun 2026 20:37:09 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8e449ddad3b3ddb88df7774838bb5154c6d7c9496be67bf2ecf79315bc5587`  
		Last Modified: Mon, 22 Jun 2026 21:58:53 GMT  
		Size: 5.2 MB (5165122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:47ab382f56f6e51814ad74d47276afa75a61386eb4ee290262076eef1292ccff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **687.3 KB (687267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e87c1c5c93bf70bf5dd59476a6f94a88a7c1db28972c0dece3b4fae2795b5a`

```dockerfile
```

-	Layers:
	-	`sha256:122d48efe8e4b8b5a759b90dc7ea5daa7819b1e9e657a06629fdaac2da17e1b6`  
		Last Modified: Mon, 22 Jun 2026 21:58:53 GMT  
		Size: 679.2 KB (679164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:480595f32ea3c3c9659767fac1d70651621f9c469c1dacf72e7871b3be5c8db8`  
		Last Modified: Mon, 22 Jun 2026 21:58:53 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json
