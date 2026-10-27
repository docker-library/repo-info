## `hylang:alpine3.23`

```console
$ docker pull hylang@sha256:61f0fa69de040461d53ab46eb4019111c3182ae2be2af1248d68f4bd9fd03042
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
$ docker pull hylang@sha256:ab54602f26d2afaada6d5044b926cba5d780977aa8fb1dc6b7b35cd0304686a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25293524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daedb302eaac1a833d88f7668d3fb7bb47fb2453f3fc47acf510435e03623ab7`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:32:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:32:16 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:32:16 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:32:16 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:32:16 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:35:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:35:02 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:35:02 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:27:59 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:27:59 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:27:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:27:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa4c3b8d24eee5fe969d6fcb46191fe1e29b208512ae1301df767811abebbe8`  
		Last Modified: Mon, 26 Oct 2026 22:35:08 GMT  
		Size: 412.8 KB (412800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d0d5ed7b2053ad1ac2a332f64a787315a50a8c8bc6dfd7c1594fe66cc163a5`  
		Last Modified: Mon, 26 Oct 2026 22:35:09 GMT  
		Size: 15.5 MB (15479469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabd8040b02726c8cb5646d4ce11dd39f6e5d121f1e478f5db6d3ab3ff8d7893`  
		Last Modified: Mon, 26 Oct 2026 22:35:08 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04ca4aa2cbcc99f12319dc71c81e863a193848b37192230cf55496d8c14c1c0`  
		Last Modified: Mon, 26 Oct 2026 23:28:06 GMT  
		Size: 5.7 MB (5723699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:3b66d4195f1f14d582ca82ee9a9311e9595b7d9b281ba9418b4b310a9409fb7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.8 KB (636793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4b092461f46d01643bc105710c6ddf3e0a9289fb137093b78aac6bd505eb1d2`

```dockerfile
```

-	Layers:
	-	`sha256:23ea7e44010732f590079aff5024fe10b58973053a120872d7dc6686213e9a09`  
		Last Modified: Mon, 26 Oct 2026 23:28:05 GMT  
		Size: 627.5 KB (627546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa47df5b1219c27de97f65cbb69ca085b64912a71bff4e7fa18fbc28d08094bb`  
		Last Modified: Mon, 26 Oct 2026 23:28:05 GMT  
		Size: 9.2 KB (9247 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:bcbfac7e9f6fc39e7dc94a8af5a45d1ff23240f040c519def7fac71d7b748203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26278604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c192b06dffccffbcd00c16fe28d0c2c315535ab35ea4cc2e184d0df90d7ef5d`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 14:19:35 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 14:19:35 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Tue, 27 Oct 2026 00:21:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 27 Oct 2026 00:21:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 27 Oct 2026 00:21:53 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 07:46:12 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 07:46:12 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 07:46:12 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 07:46:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c67e0eac017dbd155198f7fe853d421fdd650682fb195256bb31ceff2b94b9`  
		Last Modified: Thu, 22 Oct 2026 14:32:14 GMT  
		Size: 416.1 KB (416069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e200f4905830300f7fb7dbd209b66ef082f89569adace1d4708cd104da76f4a7`  
		Last Modified: Tue, 27 Oct 2026 00:22:12 GMT  
		Size: 16.3 MB (16319894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64a7937d6e79a535af3047f449a1da5297d0df3ccb0247d0410a1e43bf1618c`  
		Last Modified: Tue, 27 Oct 2026 00:22:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2ddb528045917a844b1f37ee47bdf3c5adb4b618111d537d5817d09ec755d2`  
		Last Modified: Tue, 27 Oct 2026 07:46:30 GMT  
		Size: 5.7 MB (5724014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:6ce95ab89041c6fa718623bce07988cc14f0adcbcf5ebb4ed7f786e3c53213b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.4 KB (636365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c44f22a6f6134795be5ad8d76ac268120d3bbde7e5ab43edbf54806d38441a82`

```dockerfile
```

-	Layers:
	-	`sha256:b897ff8b035de4e8a4115f05774e518dfd0857d00f82cc06d976e936a0067cd6`  
		Last Modified: Tue, 27 Oct 2026 07:46:30 GMT  
		Size: 627.0 KB (626998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf78dafd3ffcdefda46b0667986263fb813ce839ceae2401aeac009e4fdccef8`  
		Last Modified: Tue, 27 Oct 2026 07:46:29 GMT  
		Size: 9.4 KB (9367 bytes)  
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
$ docker pull hylang@sha256:5bd0b2e30b521a456a7fec61f4e12a6e91469e1d050ee01ceb646950f794195c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25877799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:faccf3083bba71fe8f1c31ce909350f33467c01af0448e086f77f2c53cecc920`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:47:22 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:47:22 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:53:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:53:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:53:52 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:24:50 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:24:50 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:24:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:24:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f462866f0d48d21fd0e3ff1f6a6640c06b072e70712cb43208bcc522bd40dd`  
		Last Modified: Wed, 21 Oct 2026 21:54:50 GMT  
		Size: 413.4 KB (413413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b40936bfed057164b205304f9930b87089a79a91cca9c80586c0f0e3348c62ab`  
		Last Modified: Mon, 26 Oct 2026 22:54:04 GMT  
		Size: 16.0 MB (16023396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a642a14b4e2132f712180191ea6f7ca66e9cfe292c49edfa5213049df4e022`  
		Last Modified: Mon, 26 Oct 2026 22:54:04 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c36cdb74928b09352421c15f4a671004f7f1251887b4e8153ae203e005cd2a7`  
		Last Modified: Tue, 27 Oct 2026 00:25:00 GMT  
		Size: 5.7 MB (5723617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:4fca5549c86c7c362de8b9f638ef21c4aeb30dda024e8844880bcd1610cb7880
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.2 KB (636239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:086f59dbf8c4b144144b54366689af0c67712b4dd04fcdaf07f675bcdcdd1872`

```dockerfile
```

-	Layers:
	-	`sha256:e73ce5240f4f39b3011ddaae9ad4d59cb1a4b2dedd483dc42098452470be15ea`  
		Last Modified: Tue, 27 Oct 2026 00:25:00 GMT  
		Size: 626.9 KB (626940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86b3699f29ef2e8103223421cf196c4b998c763f9e8c9cd715c86989a8528507`  
		Last Modified: Tue, 27 Oct 2026 00:25:00 GMT  
		Size: 9.3 KB (9299 bytes)  
		MIME: application/vnd.in-toto+json
