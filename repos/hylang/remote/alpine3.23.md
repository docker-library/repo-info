## `hylang:alpine3.23`

```console
$ docker pull hylang@sha256:c4d08a947ecbc63277e0b39c27d615aeb4c00e5c323bfa18b6d83599649605b8
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

### `hylang:alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:29ac7b3cc763b77ea14daa6f8edb31d8e951372a8d5ada70e4355a9439e8ff6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25391323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b498267d78c558526f56824819b44c2edf716c9e1d557caa58ee628bb92013b`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:32:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:32:17 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:32:17 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:32:17 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:32:17 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:35:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:35:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:35:07 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:47:32 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:47:32 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:47:32 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:47:32 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0758722dc9176eb1da30203d9628d158adbf05b41e3b159cbb94e463c807cc43`  
		Last Modified: Mon, 26 Oct 2026 22:35:14 GMT  
		Size: 412.0 KB (411996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfcf8e0c924fce4a47741e57fb321448ae782cc6317953280143fdf65eea369`  
		Last Modified: Mon, 26 Oct 2026 22:35:15 GMT  
		Size: 15.4 MB (15403196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aaf2b30c33ea9138e65bb87e3e8b8d5b034694673194d7b7c78cb642abd0061`  
		Last Modified: Mon, 26 Oct 2026 22:35:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475bc901b472bcbd4b64bdb0efc0e3f1b4651b6d034bce529d2370f7bc885919`  
		Last Modified: Mon, 26 Oct 2026 23:47:38 GMT  
		Size: 5.7 MB (5723655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:4f9446c39eb703724aecf5f5ae44b1b9f1dad812261e2c2450b012b2b5fdc6b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.9 KB (636890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d7bf68cfd29ad58ff2ad4f74ff8203792571c232dd45d8f7c566b7c77b361a`

```dockerfile
```

-	Layers:
	-	`sha256:21513a8f83f23031844d60d555ce6f7a2a09a6ae2c345855353b036ae3b8c5af`  
		Last Modified: Mon, 26 Oct 2026 23:47:38 GMT  
		Size: 627.6 KB (627591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7576525bee00cd0940fc406e4c8c64da40a9ae7724a75582eba91b87dc2b024`  
		Last Modified: Mon, 26 Oct 2026 23:47:37 GMT  
		Size: 9.3 KB (9299 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:4e95618b7c56d3f8a400ecb706a21f7f534512c53236543d62bfbdfc2f5b5219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24534789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a26c40eb6de781200df25c3820ccf4564ddcf998850beb2c964eebd05b5b27`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:41:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:41:43 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:41:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:41:43 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:41:43 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:44:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:44:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:44:38 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:34:35 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:34:35 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:34:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:34:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01399d6a301e4ed7600800b30528e8b6ad616518426731f94a40b6813b406be2`  
		Last Modified: Mon, 26 Oct 2026 22:44:43 GMT  
		Size: 413.7 KB (413746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa59e0d8c436b018997a1fa97c099bc2aecb88264dd0753df97b4b78daa226a`  
		Last Modified: Mon, 26 Oct 2026 22:44:44 GMT  
		Size: 14.8 MB (14839029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0889b8ccaa1fdfbcbad878c2f1ed36d2943a5b9a2b8dfee31c58612d2c58b5b5`  
		Last Modified: Mon, 26 Oct 2026 22:44:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0560a749464e527a2aaf99feaaf34af28df2913f08821ffb7d61499e6da627`  
		Last Modified: Mon, 26 Oct 2026 23:34:39 GMT  
		Size: 5.7 MB (5723580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:a42d2b1178cbb003224a67441a6a4a376cb52f21d7e19190277fab88359190ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de90a806d61936fe12a143378fff5f2f8c440172ee9e56ed0cd30e797dee165`

```dockerfile
```

-	Layers:
	-	`sha256:6dff01ff8252096dee483b1dead56f5f31a6ffc44bbd7d435a89da4a466c5a93`  
		Last Modified: Mon, 26 Oct 2026 23:34:39 GMT  
		Size: 9.2 KB (9196 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:a082e3f8e8e3f605560e0780cf420783b397afcff9cbb26cbd1db626c564a400
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24004586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396c208b40b013a1d3cc236172a719b90ad075bfdae4d8085f56b19adaaf3f2c`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:55:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:55:31 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:55:31 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:55:31 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:55:31 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:58:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:58:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:58:27 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:57:19 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:57:19 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:57:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:57:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31456a5c8cb2da04fb846038986bbf3563989b09182665c7c62560179b821fed`  
		Last Modified: Mon, 26 Oct 2026 22:58:34 GMT  
		Size: 412.4 KB (412395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f6f63b9073627a7af33a73cf27041437ddf51215f2432865e0053aec48615b`  
		Last Modified: Mon, 26 Oct 2026 22:58:35 GMT  
		Size: 14.6 MB (14601190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcfbb9a87db3e58d255f0a1e3c96a4858dc863809fe6b9642f40b0e0b2eff1ea`  
		Last Modified: Mon, 26 Oct 2026 22:58:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b0aa57650d36dcad19a80eab7fa1049f7ed19ef30a49109c90908e4e0920cf`  
		Last Modified: Mon, 26 Oct 2026 23:57:25 GMT  
		Size: 5.7 MB (5723712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:d72574310c3f0ce2aa7cf0c29cd92011d53f370f17c5f5c6436e69515f40550a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.4 KB (636419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44363327fa3232dd7f0621a543a57fa0a3799c875bf14c7c310f40140e5594f5`

```dockerfile
```

-	Layers:
	-	`sha256:778d9f4efe0d68816b64cc5c27ba95b59eb8abe5e20e6ee136d267bf4c2b21f7`  
		Last Modified: Mon, 26 Oct 2026 23:57:25 GMT  
		Size: 627.0 KB (627009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64e9a4824660b60cb7438517f9519e83fb8f1bc5260760f8919fa7ecca6fc301`  
		Last Modified: Mon, 26 Oct 2026 23:57:25 GMT  
		Size: 9.4 KB (9410 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:377c18abc4f8d5215cd0f68b177b30c215ba581599404fad3280a78a8ebf5fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25743192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7ff003ba13dddfd1210d674b15b0bdfa5c549bb33c66d27c9ba3f41ec86741c`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:31:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:31:58 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:31:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:31:58 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:31:58 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:34:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:34:40 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:34:40 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:50:45 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:50:45 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:50:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:50:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b2093ea5cc37e9ccab5268fabaf4f672c4770ec5bea6d4a0de5ecba05aed135`  
		Last Modified: Mon, 26 Oct 2026 22:34:46 GMT  
		Size: 415.6 KB (415590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2f5a88a4996d0154cd2cd5d4bf91c2c245b0b8af2e4731ca378759abba260f`  
		Last Modified: Mon, 26 Oct 2026 22:34:47 GMT  
		Size: 15.4 MB (15414262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1697795dfe7d50d4f5c76f246715e6213a3242928c85590a74221a76947cc8b6`  
		Last Modified: Mon, 26 Oct 2026 22:34:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab6c8ae23b252035b45c3e312544f4f2ff02b7997f7691b448b0301611db728`  
		Last Modified: Mon, 26 Oct 2026 23:50:51 GMT  
		Size: 5.7 MB (5723598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:6dac5217bc4507ab54365e506eb608f979c9e44128b6666af788706ec6ac345d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.5 KB (636496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fbd7d79488396acb488b58da3048912e4fa07c8207bb194d342d5b292df686c`

```dockerfile
```

-	Layers:
	-	`sha256:42b1773f156e7b12f6f28ce6dd02a76fd46c3482e3f8e502d852a0251f93b2c0`  
		Last Modified: Mon, 26 Oct 2026 23:50:50 GMT  
		Size: 627.0 KB (627045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad9bc62c05a462f09564782db67cd89a47e33acfa05f50d8879ae46d9b5fa25e`  
		Last Modified: Mon, 26 Oct 2026 23:50:50 GMT  
		Size: 9.5 KB (9451 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:74d997164cd400f39d646414138a7236ff9f6946799d7c564ac56290407505db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25271244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc5420b601324889c087d15722f0676e93ceafe416470b40c1ec5c22e76345c8`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:15:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:15:18 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 22:15:18 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 22:15:18 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Wed, 21 Oct 2026 22:18:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:18:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:18:28 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 22:52:31 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:52:31 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:52:31 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 22:52:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197f9cdfd6fbfd123a0249812709d154c9bac572e5541465c740b478e4d8af2f`  
		Last Modified: Wed, 21 Oct 2026 22:18:35 GMT  
		Size: 412.8 KB (412798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8349dc93f93359052385459daa1c549e3b76e3982ad58a363e7653c1b00de300`  
		Last Modified: Wed, 21 Oct 2026 22:18:36 GMT  
		Size: 15.5 MB (15457594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f3d370f43527cb55cb1f8e72a5e257a084d5890118d7bc1f5d149a4a837631`  
		Last Modified: Wed, 21 Oct 2026 22:18:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce12fddd8f83ca6bddf9a0149c5d1f8ed59746d153c8835f3f943a2f41d018d`  
		Last Modified: Wed, 21 Oct 2026 22:52:37 GMT  
		Size: 5.7 MB (5723296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:c6527d19fce5fb289b27c65b2f43bcb4ee03d7c3f834f72668465af6d641ccfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.8 KB (636778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b26eb0d2b63906049a6f72a03477406fd63011edf1a2017e299d0415df8a7eb`

```dockerfile
```

-	Layers:
	-	`sha256:783b187cf9ef9694d4ad2a862e00eaeeb03375d1ded5da40cb18078cd78bc288`  
		Last Modified: Wed, 21 Oct 2026 22:52:37 GMT  
		Size: 627.5 KB (627546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b64eb5d5d84b7d02427faa610a67e3441a06b892e544bf134618a683323b9bb9`  
		Last Modified: Wed, 21 Oct 2026 22:52:36 GMT  
		Size: 9.2 KB (9232 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:06180b0483eb23b8f93e4b7bbcacbfdd8d79eb97bfacebe39f3581895428ca28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26247036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d5ea906ce7edbd0ad3a896e272b2fc13c856c59b88c0b636d8d4370848218e`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:51:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 13:51:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 22 Oct 2026 13:51:54 GMT
ENV PYTHON_VERSION=3.15.1
# Thu, 22 Oct 2026 13:51:54 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Thu, 22 Oct 2026 13:57:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 13:57:20 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 13:57:20 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 16:58:05 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 16:58:05 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 16:58:05 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 16:58:05 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a5f0ccefe2ab56f5752a26a6a940416c80ca95b8072c1e99b1def3b6ea48a9`  
		Last Modified: Thu, 22 Oct 2026 13:57:46 GMT  
		Size: 416.1 KB (416055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a915ea8342b03e216dd27271f9b9c1f9fe59823dd256b66a1720541e0d738639`  
		Last Modified: Thu, 22 Oct 2026 13:57:47 GMT  
		Size: 16.3 MB (16289008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0043c4220e2cdf566b933bbac06d0ce32f44b276fb062b6c38e6f6b683379054`  
		Last Modified: Thu, 22 Oct 2026 13:57:46 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093392f353b56fa1cdd3c089aeef02ba5bd029af5eebed37e940de8741c63160`  
		Last Modified: Thu, 22 Oct 2026 16:58:23 GMT  
		Size: 5.7 MB (5723346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:2f75ebb0d0cdac982f0e916b678b4201a54357fd1d72217e5a53e020671b24c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.4 KB (636350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ff68399c496160085b35ff64469d550d2df978a24853beb834b5b2b0c30de6`

```dockerfile
```

-	Layers:
	-	`sha256:03df5971cfaf1386f50beb99c9f37dc67fc5735672f3dcd1b80110e9c3ca28c6`  
		Last Modified: Thu, 22 Oct 2026 16:58:23 GMT  
		Size: 627.0 KB (626998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba729d1ed7304a712b3db865f0664f59af39b163b573c4f5bf12051f60bff42f`  
		Last Modified: Thu, 22 Oct 2026 16:58:22 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:8f29eca75626cf24031f6be5ff25072a1d51e5405d52e8910addeb4fe363db07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27406742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae612aa58ebf1d9b370c44b43f4983c7a8759441daa4dc904ee244548817c53`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 04 Oct 2026 01:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PYTHON_VERSION=3.15.0
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Sat, 17 Oct 2026 12:27:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 17 Oct 2026 12:27:10 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 17 Oct 2026 12:27:10 GMT
CMD ["python3"]
# Sat, 17 Oct 2026 18:39:48 GMT
ENV HY_VERSION=1.3.1
# Sat, 17 Oct 2026 18:39:48 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 17 Oct 2026 18:39:48 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 17 Oct 2026 18:39:48 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f359664cf0cf51d0b58fd4ebd2353599ef028ee8123848ae6f2a8a1a1b690e26`  
		Last Modified: Sun, 04 Oct 2026 02:23:30 GMT  
		Size: 416.8 KB (416766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6f13d1aa7cc5cbf7a1de7dd9d578277cd1ba91af8a02ba55a10ba39ec2fdc1`  
		Last Modified: Sat, 17 Oct 2026 12:28:04 GMT  
		Size: 17.7 MB (17724576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9819cc0fea99dfb78cf155bc4998625030c0b603191ae0d06c7b0be31897889`  
		Last Modified: Sat, 17 Oct 2026 12:28:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635294afc15b00b81394ded268e8fce64d1676b13612d1fe83b70acf0b31fa9f`  
		Last Modified: Sat, 17 Oct 2026 18:40:30 GMT  
		Size: 5.7 MB (5688828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:90fc1f365c2ca5d284000d5662999b6de4f7b921e63b458a5fcc5f5fad41624d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **638.3 KB (638280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1bb83de1f2847dd7acada2c0c94fc5f7ad2b2c19a465e0479b7b41a9bcd436`

```dockerfile
```

-	Layers:
	-	`sha256:8fd2bc291bbec1595bfebc765f6ad0078adcc72aab201e9285de8fb701482d40`  
		Last Modified: Sat, 17 Oct 2026 18:40:29 GMT  
		Size: 628.9 KB (628929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37cea4e757b1bc4c790ef65e59cb96b5db4f27c5dfbf68ce1a4df6ab8829d81d`  
		Last Modified: Sat, 17 Oct 2026 18:40:28 GMT  
		Size: 9.4 KB (9351 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:248ebef40ed7c4543c85bcde574c8817faf9dbbd5a437f3a34b7817e9ad72846
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25847835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dd2f60df8716eeab6b6f730f097e3d2de6a864b853006d8657f889ce0fd5582`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:31:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:31:56 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 21:31:56 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 21:31:56 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Wed, 21 Oct 2026 22:53:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:53:23 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:53:23 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:12:47 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:12:47 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:12:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:12:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6fa0281854d90f94b6079b85419bf8b5651fac22d0371d983e2a357186173da`  
		Last Modified: Wed, 21 Oct 2026 21:37:41 GMT  
		Size: 413.4 KB (413418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84df9a4793bab761dfd4e5c95b64b1d7257c4cbd249ee731cdf2f1f9df0ea0c6`  
		Last Modified: Wed, 21 Oct 2026 22:53:35 GMT  
		Size: 16.0 MB (15993831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749873a9e725fb5b02aa990a556d5bfb1a2d2a26d19e4324d46debb41fabf515`  
		Last Modified: Wed, 21 Oct 2026 22:53:35 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55fcda7e5905051857b6c28d5399c033e89ede46e17b07f8a3a4c543523b7c7`  
		Last Modified: Thu, 22 Oct 2026 00:12:57 GMT  
		Size: 5.7 MB (5723217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:acdad0c242a6080c6773441a3d4898bc1434a93ee71d02a0d20c7d056c7149b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.2 KB (636224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:becd6d676e42aa080c07d2d6132a9fa2b3af821e44ab9a6effa865d75ecf87f4`

```dockerfile
```

-	Layers:
	-	`sha256:1748356fdac3faecfd4f7fbe35692c8356f6241c57c0d255de8cf61a4d1c5234`  
		Last Modified: Thu, 22 Oct 2026 00:12:57 GMT  
		Size: 626.9 KB (626940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:405f8b74e68f6ae56fd9e8677c8706490060672a0a26fd96cfc542353a52d5a3`  
		Last Modified: Thu, 22 Oct 2026 00:12:57 GMT  
		Size: 9.3 KB (9284 bytes)  
		MIME: application/vnd.in-toto+json
