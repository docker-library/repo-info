## `hylang:python3.15-rc-alpine3.24`

```console
$ docker pull hylang@sha256:12e592d39fd3d64abd67ab2d18797e5446cba58bf2ec52adbab6dad20d772f69
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `hylang:python3.15-rc-alpine3.24` - linux; amd64

```console
$ docker pull hylang@sha256:b6558e61f47c9575769bb4c124f88ba4ab4e31d0f2cbcbe4cafac907b5da0523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26670499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563e57cec23d81f1354ecdd2be879c67dc0d9a6c7c42a484356f9053511372f4`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:59:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:59:30 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:59:30 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:59:30 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Tue, 01 Sep 2026 00:02:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:02:12 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:02:12 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:18:38 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:18:38 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:18:38 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:18:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e860d3878b0c9c625cdda8563c848637db87581383e0108ac0eebe95f681d359`  
		Last Modified: Tue, 01 Sep 2026 00:02:19 GMT  
		Size: 408.1 KB (408097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfcfaee5552b9269d492c3997f205c84efee843fe4003fba890ce78a9baa6cac`  
		Last Modified: Tue, 01 Sep 2026 00:02:19 GMT  
		Size: 16.7 MB (16674670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d05d1cccf0bb01a03a4edc13221e6623bc861f6b7d15d76a06752082a31ea1`  
		Last Modified: Tue, 01 Sep 2026 00:02:19 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0d903ad1fbeab76a628a583cf04dc18afeb08b05e968e1d2a30a78da767c80`  
		Last Modified: Tue, 01 Sep 2026 00:18:44 GMT  
		Size: 5.7 MB (5741090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:0ecc99b093520544806a14f2697db170a507e86a6519328f4e5840e0627f56fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **630.5 KB (630460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71da25e11b89c2c227f7dfd13daaa634a13780b04b3605700ad2a937a3028589`

```dockerfile
```

-	Layers:
	-	`sha256:59ea2ec189f0ebdfff78bc92cc4d12f7d92865e13f1e7ee1c4365f8fd3fcb526`  
		Last Modified: Tue, 01 Sep 2026 00:18:44 GMT  
		Size: 621.1 KB (621057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5e30843f9b918eddac878e99bf75d118b1c39eed519224444136723cdac842a`  
		Last Modified: Tue, 01 Sep 2026 00:18:44 GMT  
		Size: 9.4 KB (9403 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:db8946846766653c68271a0c8668f050a3410e589c342a593aa3a2be92269635
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27388735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8466afb5b1c064aef4ed577c70cce54b4dd6b3de1dbea87cf600f4f8c1446378`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:35:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:35:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:35:43 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:35:43 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:38:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:38:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:38:28 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:12:39 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:12:39 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:12:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:12:39 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656a4f510766e1f02ec3381294123ae80453ebb9ff03f955a594ef6788d9c249`  
		Last Modified: Mon, 31 Aug 2026 23:38:35 GMT  
		Size: 411.7 KB (411744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e22656399f4d89cb57d6b61ff88c94c1039c995b0874647fabe586c0751798`  
		Last Modified: Mon, 31 Aug 2026 23:38:36 GMT  
		Size: 17.1 MB (17052936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102f311a6b54668f40f2ce142ae310fcc2a734ab4f1d67aa34cdfd82d70cd538`  
		Last Modified: Mon, 31 Aug 2026 23:38:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda5c5d3ba7bbdf3051b8efd1fbb77572e0b20cbf20c371c9b395509d43f0fce`  
		Last Modified: Tue, 01 Sep 2026 00:12:45 GMT  
		Size: 5.7 MB (5740769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:f92dc7fbf9c2718f1b18e65d48a2f7b0b11c4fc195b7560a796bd86579af922b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **630.1 KB (630067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799bdb737a6df2bc339400634d56804e4937e9884165d29148dcade7406e90cd`

```dockerfile
```

-	Layers:
	-	`sha256:d26a354a946aaf67fbea50bcb8b05f3fa4a3196de30808786a1caec928aa3827`  
		Last Modified: Tue, 01 Sep 2026 00:12:45 GMT  
		Size: 620.5 KB (620511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3dd9a37ad71415b66808d1c320485ad1f1d3c52b71f33b6578d493a1bd555a7`  
		Last Modified: Tue, 01 Sep 2026 00:12:45 GMT  
		Size: 9.6 KB (9556 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.24` - linux; riscv64

```console
$ docker pull hylang@sha256:a6d7fca11e702ab2ba79dddc91c45d6a250930ee5e9d0957db4ff25bff284386
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23933608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16010553b62669c0d52678d12dcc4b1aa23d8cec9c27c0caac5223734cf6c0fe`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 22:30:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 22:30:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 10 Aug 2026 22:30:50 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 10 Aug 2026 22:30:50 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Wed, 12 Aug 2026 14:19:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 12 Aug 2026 14:19:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 12 Aug 2026 14:19:37 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 06:18:30 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 06:18:30 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 06:18:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 06:18:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f606a83b26488509c014fcf13c3183b65cb205e606aa826b86fd0cfdc955e9a4`  
		Last Modified: Mon, 10 Aug 2026 23:09:56 GMT  
		Size: 408.6 KB (408640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d140a0638559e8aabc122af293e2c584c6e5a8b5964732aaa7e301fba03b09`  
		Last Modified: Wed, 12 Aug 2026 14:20:25 GMT  
		Size: 14.2 MB (14208397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:661ae1f1806478fc17a5459896de8cd7246196de3353dbe8d90cbb69db0930ea`  
		Last Modified: Wed, 12 Aug 2026 14:20:23 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963d3949bc6d412fdfdac1a6022834fbea78fa2ecf1fc3863f752df87b524197`  
		Last Modified: Thu, 13 Aug 2026 06:19:09 GMT  
		Size: 5.7 MB (5741958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:ea46f86312d1727892d611165001421bcdf58179cb80f7c1506963ff7438aa33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.9 KB (629932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:805802f7c9d215ccfe7bfef89c7a32aa7ce999e251618ee98f80c90bc62f00a5`

```dockerfile
```

-	Layers:
	-	`sha256:0be2ee41aa4f162d301bceb33f25d0e16e652823c121b1219bee3c19ffba5673`  
		Last Modified: Thu, 13 Aug 2026 06:19:08 GMT  
		Size: 620.5 KB (620460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be0688fb42ebb56110c7566ab9784be7a85aa1375e613af77b085557fab27db3`  
		Last Modified: Thu, 13 Aug 2026 06:19:08 GMT  
		Size: 9.5 KB (9472 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.24` - linux; s390x

```console
$ docker pull hylang@sha256:5a9229935d3c61957362e446ae0a5c993ec86621ae1ef27bd89eafa33363c248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26791316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a401f14f851b5eafb014a55f50012fa6ef67119c057cbaa66e83abab5179816c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:37:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:37:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:37:47 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:37:47 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:44:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:44:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:44:41 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:30:01 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:30:01 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:30:01 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:30:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9ad4a471322feedb240364f256004d190ae01b1cac01572f67481a76943f25`  
		Last Modified: Mon, 31 Aug 2026 23:45:00 GMT  
		Size: 409.5 KB (409530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db5650b5dc01dbc732effc0093eb514c0db70587240082329dbc3316809bf90`  
		Last Modified: Mon, 31 Aug 2026 23:45:01 GMT  
		Size: 16.9 MB (16930966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c73de39f6b9a342256b2f1dfec3895af47871407d7acb21d2578db632b0c91`  
		Last Modified: Mon, 31 Aug 2026 23:45:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a26469ac148d95d87318c8248df27b5b7297e8b21ca03f667c5c7cdf72dae0`  
		Last Modified: Tue, 01 Sep 2026 00:30:51 GMT  
		Size: 5.7 MB (5741253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:3016746e044e4744a04894b790291eef55ded49625ac8fc5ef6d264231ec572f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.8 KB (629810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bf830e41aa87c111bf93f963b2b9d024f3e3f829bd1ca77a8a4fcc4d016920`

```dockerfile
```

-	Layers:
	-	`sha256:b80fa8133d0641c831529c6b709b24b465eabedc076d7b97c449a6cd1d71ba09`  
		Last Modified: Tue, 01 Sep 2026 00:30:48 GMT  
		Size: 620.4 KB (620406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34576326ca4dee259e40013baeb7c01f2afe37f15ea8b68063581158ddaedb56`  
		Last Modified: Tue, 01 Sep 2026 00:30:49 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json
