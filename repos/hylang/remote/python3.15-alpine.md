## `hylang:python3.15-alpine`

```console
$ docker pull hylang@sha256:a3cd80cb5cd0eb8465b070c5341c6d98b9e061b14bd40a4877aad7fc42f82d38
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

### `hylang:python3.15-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:e125958ab789a2a3d62dabad25c3fc4b841a479568c5ccaa60e6014d0cf671b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25394257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9c8a157d820ab86066987dc6eadc735789fd3719f81aef49ad113e988478e1a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:25:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:25:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:25:20 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:25:20 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 19:25:20 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 19:27:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:27:56 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:27:56 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:31:23 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:31:23 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:31:23 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:31:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2b30fc2d843f381593f45cb2f3aa21b761f96fb7f3b2bf8c32028aa8e8785a`  
		Last Modified: Thu, 05 Nov 2026 19:28:03 GMT  
		Size: 412.0 KB (412010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d6aff2002377528af40eb9c777124114ac87f34bc36b849eb998f9973d7360`  
		Last Modified: Thu, 05 Nov 2026 19:28:03 GMT  
		Size: 15.4 MB (15404623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912101e0eb182d8de495d29926c22dd786b95952ff7d5c1a508aa3d534b8539b`  
		Last Modified: Thu, 05 Nov 2026 19:28:03 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6498dfe9bb96195b32c8e66c91b300d6a27db11296828e8a702a2c4aad5675`  
		Last Modified: Thu, 05 Nov 2026 20:31:29 GMT  
		Size: 5.7 MB (5723704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:e2bb49228b144a893e20c4c8a0607b22419238470acba1b8168e40f89969940e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.9 KB (641892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5819007a25432e4ccce2346c9cbb1b4953c387e646b75eb56242777abc6217c9`

```dockerfile
```

-	Layers:
	-	`sha256:40d42f79cee674e89591f7d655fa36dffdf3720959b07c1412feb7606237da64`  
		Last Modified: Thu, 05 Nov 2026 20:31:29 GMT  
		Size: 630.1 KB (630073 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd0822a09025f9ed49c86a9794c6fdb6b0994b4d8f67a76f30917fbc54a332a9`  
		Last Modified: Thu, 05 Nov 2026 20:31:29 GMT  
		Size: 11.8 KB (11819 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:a3c0dce5c406ba5d17eefbcfcbe1488c469bbfdb2f9a8746edbd7d838e8272e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24541904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8549dae16f244df33a6e6c29bc38763f3a4abd07068feabcc730f8a8bed5a29`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:51:04 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:51:04 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 18:51:04 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 18:55:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:55:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:55:28 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 19:42:24 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 19:42:24 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 19:42:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 19:42:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d44f712061b53fb1fe70f7066b8bc7898d096eb86e87c387ad403a9540aea4`  
		Last Modified: Thu, 05 Nov 2026 18:55:33 GMT  
		Size: 413.7 KB (413739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5257a0ff76e34d452e725cb254bc40a4ca42dfe994d89889bdb4ab5c10bb345`  
		Last Modified: Thu, 05 Nov 2026 18:55:33 GMT  
		Size: 14.8 MB (14845976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74404a64fc95012646f485a38d2ca2621197a2332b4219b63cdba170159498a0`  
		Last Modified: Thu, 05 Nov 2026 18:55:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b339cc6993b92cc5a6c7e27bbe5a10a28feb56eb8248fead688bc3ddbdb6d0`  
		Last Modified: Thu, 05 Nov 2026 19:42:29 GMT  
		Size: 5.7 MB (5723540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:2b2c7da39bca221b03a2273be32672d24d11a565004f60df42ece0933f85fdb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 KB (11780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60bb5ef6491a313c5721cde934d61e4c670c79dd425550721830af3da6b9597f`

```dockerfile
```

-	Layers:
	-	`sha256:ad876859f725c229bbf1557b2616febc783c16fab057dbab11512b1efcd3bc1b`  
		Last Modified: Thu, 05 Nov 2026 19:42:29 GMT  
		Size: 11.8 KB (11780 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:9dd6ef918e4bfb20fb6f4404b179ed408c645cedefebbd19b6a6d26721e96a48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24011615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9a10b3b333c257ae068ef999a7780fbc8d4fa6e875c914d93d6c53ac8bc5d4d`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:51:05 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:05 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:51:05 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 18:51:05 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 18:55:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:55:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:55:29 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 19:54:36 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 19:54:36 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 19:54:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 19:54:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81efabfc8c515d58ed24ea1050cd97c82d71bedcca53dad1b8674edf48562ad0`  
		Last Modified: Thu, 05 Nov 2026 18:55:36 GMT  
		Size: 412.4 KB (412412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971165ea909a629cd9e64416a72dc0cab0ce05f7e4ceffb0062798c8e9710e47`  
		Last Modified: Thu, 05 Nov 2026 18:55:36 GMT  
		Size: 14.6 MB (14607557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa43ec21dd7baa22b01349e8e1fe7f6bff7e1359a77d5c0007e7ad85b41a964`  
		Last Modified: Thu, 05 Nov 2026 18:55:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cee4af10376f7189e55d33a4cbc97a4a2b04d0831c4d7fe2a6e2fee534128d`  
		Last Modified: Thu, 05 Nov 2026 19:54:43 GMT  
		Size: 5.7 MB (5723664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:0d54747c2380908215ef6f5f5f685435fcbf8f0cd4a23f038de45b0de57861d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.5 KB (641550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8734f61cc4899ae52ae819dbb745701b171ea4f74d2215ce10c3c02c79ba1161`

```dockerfile
```

-	Layers:
	-	`sha256:83968006610a7eb4a5099002b82260bd06cabb92dbe8a858dcb4919aa33d7793`  
		Last Modified: Thu, 05 Nov 2026 19:54:43 GMT  
		Size: 629.6 KB (629555 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab15071626214c3d9cebd2f57033b99088850d86321fba8d12f37bc8f4901b93`  
		Last Modified: Thu, 05 Nov 2026 19:54:42 GMT  
		Size: 12.0 KB (11995 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:b1fddba130b9580f2952b4c992a382d800d28727ed303f28c8091d3d68f28a0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25745174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b5efd812d81439a259bc14eab931c7991283baa1339fd7aa0b262b9243a7063`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:20:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:20:48 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:20:48 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:20:48 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 19:20:48 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 19:23:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:23:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:23:34 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 21:38:02 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 21:38:02 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 21:38:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 21:38:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d356b48c1c56cccd22e48f043c1e8ac8d79ef86f9e625b548c82014803b7830`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 415.5 KB (415538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297a5ceff0edb8d53437adbd24de4d0f2be89fd50a449b916a5dda5e64c71c9c`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 15.4 MB (15415050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4457ee0114e49893a657f29508f2b8ae10ab68d85d47ed48e1e4f12bb992b0`  
		Last Modified: Thu, 05 Nov 2026 19:23:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9768e187dfcbd4f79940d1059d211f7a0365f6f3c0e7e44e5bb58782c4fd21d5`  
		Last Modified: Thu, 05 Nov 2026 21:38:09 GMT  
		Size: 5.7 MB (5723744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:c9945a1ccdefef849fb74b0b385bbd9a6b4f1d36f03c8f46c9c1a20968cf46ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bfc537ef0a7fbcb25e31a1803ff54f6382db3e16ebe0ec7d524842af1873e07`

```dockerfile
```

-	Layers:
	-	`sha256:27e908ac27394b4f54b88391a7156b1e3768ec927db007dc9da8aad40b269416`  
		Last Modified: Thu, 05 Nov 2026 21:38:08 GMT  
		Size: 629.6 KB (629623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d0691ac2f58b31cefe5a402d7221da40dd8d94bfb093426294a63c300f995c1`  
		Last Modified: Thu, 05 Nov 2026 21:38:08 GMT  
		Size: 12.1 KB (12067 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-alpine` - linux; 386

```console
$ docker pull hylang@sha256:d29a7469318e9a0714ee2de504a54e4e45865f9fb13a967f5bd5dafcc7956ca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25301348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb7a44e9f90a3e526d8fabb788b39856c0578a4a66737b2c4e1c469035edca4f`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:32:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:32:19 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:32:19 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:32:19 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 18:32:19 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 18:35:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:35:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:35:37 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 18:54:14 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 18:54:14 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 18:54:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 18:54:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818a997640d993ba28873a91ba0e784fe8adbd8f98d5cce495722ed97bfc47bc`  
		Last Modified: Thu, 05 Nov 2026 18:35:43 GMT  
		Size: 412.8 KB (412779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c6fad172b6c82f266a97e2ad7a9d5f56ed16cd16b156be3bf2da965036c1c9`  
		Last Modified: Thu, 05 Nov 2026 18:35:44 GMT  
		Size: 15.5 MB (15484262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f30c5b281e1345f486f4648663f299655d4f538f3b7305858341ec12ed259f`  
		Last Modified: Thu, 05 Nov 2026 18:35:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3aa1defb7cf5ebdae6188153e06038e897fdcebab1e94c3fe6183808a044f26`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 5.7 MB (5723698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:026f4f020bd52fe1d8a2aebd494fcd87db2a27d5846b3297cfef576b7a10167f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb0834d47d2a41ad84c1e7490313ff604166997e0f361ae3332e66189252b7c`

```dockerfile
```

-	Layers:
	-	`sha256:28174688895ef4aedef5f24979bf967477cb96657b5f84430f02ed6c9c1cc4cd`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 630.0 KB (629988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66220b43af969ed738d7e91e378fc5442657f98a09ad1b93a289e78af1cf80a4`  
		Last Modified: Thu, 05 Nov 2026 18:54:20 GMT  
		Size: 11.7 KB (11727 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:0400d266ca88a5b481cd4afdb94ebdca0d41dda842e78bb75e91c1b09306571a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26288612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689084bd6b291665fed65273c0872125ca6c4bf398b51776d98d32c5fc0697c0`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Fri, 06 Nov 2026 02:45:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 02:45:16 GMT
ENV LANG=C.UTF-8
# Fri, 06 Nov 2026 02:45:16 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Fri, 06 Nov 2026 02:45:16 GMT
ENV PYTHON_VERSION=3.15.2
# Fri, 06 Nov 2026 02:45:16 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Fri, 06 Nov 2026 02:48:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 06 Nov 2026 02:48:43 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 06 Nov 2026 02:48:43 GMT
CMD ["python3"]
# Fri, 06 Nov 2026 12:06:31 GMT
ENV HY_VERSION=1.3.1
# Fri, 06 Nov 2026 12:06:31 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 06 Nov 2026 12:06:31 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 06 Nov 2026 12:06:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef23f78722d920f6025d823645af324c9115b1bf8ac0b5b8ccc41fd1a0f8520`  
		Last Modified: Fri, 06 Nov 2026 02:48:56 GMT  
		Size: 416.0 KB (416044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf2f72db4a7d19038ad841271bb96f52dd4f46ec56053522e659daf32a2329f`  
		Last Modified: Fri, 06 Nov 2026 02:48:56 GMT  
		Size: 16.3 MB (16326523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac7e4b122ae1869408e93c40d62f194bfbf641c2379cedad2253ec90d8e9620`  
		Last Modified: Fri, 06 Nov 2026 02:48:56 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ccbc2e3754f47739398a1a10646c6dd50395680cd1033e040dc9b625958953b`  
		Last Modified: Fri, 06 Nov 2026 12:06:41 GMT  
		Size: 5.7 MB (5723872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:586dfa238d3a65253c7f6c8c28c24c28a04f7b5a03918f2f0d0b966add031a02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.5 KB (641463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1702d44baf60ceb95e1ab6e896525d44211cb70aad495a7984e6f0baef75f2e5`

```dockerfile
```

-	Layers:
	-	`sha256:df74fe2cd4c127e01016fe685bb19ea733078315408f9754cc072f2f0b20ed9e`  
		Last Modified: Fri, 06 Nov 2026 12:06:41 GMT  
		Size: 629.5 KB (629528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:232441af3f31f65853eabb2204706aa9d7a1b6181bdd354b470c3549dd2f7a2a`  
		Last Modified: Fri, 06 Nov 2026 12:06:41 GMT  
		Size: 11.9 KB (11935 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:78d4af9895ba9d6f24111a695bf3eb78cc8b8695e061e7c272722331b3691222
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.2 MB (25224070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebed3ca681a80b485c0b78a80cceaf1318ad30a5bb332bf444efb123925087d`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 11:30:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 11:30:43 GMT
ENV LANG=C.UTF-8
# Thu, 29 Oct 2026 11:30:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 29 Oct 2026 11:30:43 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 29 Oct 2026 11:30:43 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 29 Oct 2026 13:46:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 29 Oct 2026 13:46:59 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 29 Oct 2026 13:46:59 GMT
CMD ["python3"]
# Mon, 02 Nov 2026 20:52:50 GMT
ENV HY_VERSION=1.3.1
# Mon, 02 Nov 2026 20:52:50 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 02 Nov 2026 20:52:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 02 Nov 2026 20:52:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45977293da9e04daa9d9d75b423a28245c6e96213903706a9c24ae616dfb5f3`  
		Last Modified: Thu, 29 Oct 2026 12:13:56 GMT  
		Size: 412.6 KB (412567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a771abecbb6e62b7840b5e8baeec183b25091c12cafb6cd5a052c006d26d450b`  
		Last Modified: Thu, 29 Oct 2026 13:47:51 GMT  
		Size: 15.5 MB (15505990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9528e8a621b095bf8ed8859abf8d409c2200a0b3f84cede96306328dcc6dc00`  
		Last Modified: Thu, 29 Oct 2026 13:47:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85cbc1acb8f53b560424c0ef583b3477c46213cb85b239de224438dd50023318`  
		Last Modified: Mon, 02 Nov 2026 20:53:32 GMT  
		Size: 5.7 MB (5724616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:f40ff59aa9e8f3b301df9eddaf10c6ca60e344ea8fa6597bc821f10cd86c880d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.5 KB (641459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41075f29910737e75ad92fd0f6c4558780e19fa3948ecb1268928a2615b321ec`

```dockerfile
```

-	Layers:
	-	`sha256:4e8bea6acec06ea18c17fe8090511dd611386655796eb64468b38bad1322f5c9`  
		Last Modified: Mon, 02 Nov 2026 20:53:31 GMT  
		Size: 629.5 KB (629524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cacb0abaccdec56ce7d5cf2e4f8dcd597c6302d82a43e537287d16878ba67805`  
		Last Modified: Mon, 02 Nov 2026 20:53:31 GMT  
		Size: 11.9 KB (11935 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:d14218615026901b92741680bdfae706e78af64c67e662f375612712d36e6caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25880670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c9d3da167b2719036559516b134fd40b3de8923e5667cda9515d1d96b9bd7e4`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:37:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:37:40 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:37:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 20:37:40 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 20:37:40 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 20:50:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 20:50:56 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 20:50:56 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 22:07:15 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 22:07:15 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 22:07:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 22:07:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52001488bcdfd21d989dddb8e11097ac62ed9ccfd1938dbc5085855729adbe81`  
		Last Modified: Thu, 05 Nov 2026 20:44:14 GMT  
		Size: 413.4 KB (413383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32db291c66acc1b8ee6ebbab6501f0a45b24b855b0e528bdb69a46c1177c94ae`  
		Last Modified: Thu, 05 Nov 2026 20:51:12 GMT  
		Size: 16.0 MB (16022740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41af960bb3e4695bd6a9dc2bdf6c0e0546192db6eb8b86c74e804431e24b651a`  
		Last Modified: Thu, 05 Nov 2026 20:51:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbdf661036e9862b9ce996e8ee5b7cbbdffef9cbb0d60de9b5567df90462d337`  
		Last Modified: Thu, 05 Nov 2026 22:07:27 GMT  
		Size: 5.7 MB (5723630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:d8911b77894f30abba0cb9f734ef0dff53eaf7a6bdaa746026897126a8eb6ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 KB (641241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ac902c75eb8cc9abcf30f51a1a93c43c990189d4dbe3b8efee0a89f49a7244`

```dockerfile
```

-	Layers:
	-	`sha256:78399fc09b79bca136a19c2dc90f749d2c12be898828df20cbcae85fa8e7f6c5`  
		Last Modified: Thu, 05 Nov 2026 22:07:27 GMT  
		Size: 629.4 KB (629422 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a91df4085b8f5e8a0357c9a83f14f770fdab7a08e34e38001d80f0f73327e258`  
		Last Modified: Thu, 05 Nov 2026 22:07:27 GMT  
		Size: 11.8 KB (11819 bytes)  
		MIME: application/vnd.in-toto+json
