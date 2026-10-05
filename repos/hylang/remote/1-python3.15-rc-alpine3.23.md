## `hylang:1-python3.15-rc-alpine3.23`

```console
$ docker pull hylang@sha256:4f12e6b7f71d6cf182b96789ccc0599d6ed93a6622867e7593fa2328d0c2bfe0
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

### `hylang:1-python3.15-rc-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:e3a0d769f33b11a5509f636638d4a14b10dd0fda63a295f27c582e622655c47b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26723501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fa28ed944b00ed70bc3306e57f056ae79f9bd71ca8f376f734c545c8c4d6aa`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:24:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:24:06 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 05 Oct 2026 21:24:06 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:24:06 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:26:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:26:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:26:27 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:38:51 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:38:51 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:38:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:38:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17871f42f98d0fb56027d76eced99852c3c127d6659f9c938b67432eefd010bb`  
		Last Modified: Mon, 05 Oct 2026 21:26:34 GMT  
		Size: 416.3 KB (416280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eacf505b9302d907c15b28830a62bd04e9845af3afbef3af1524dbf862d26d92`  
		Last Modified: Mon, 05 Oct 2026 21:26:34 GMT  
		Size: 16.7 MB (16694289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf0201766995b2cb8f97758c95fc606a6121f29a41b33b65965c8b1e70126d1`  
		Last Modified: Mon, 05 Oct 2026 21:26:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805597d3e6ee3d44230e965fbfb86262fb99f1e27405a82f4d10d82f337b0947`  
		Last Modified: Mon, 05 Oct 2026 21:38:58 GMT  
		Size: 5.8 MB (5764176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:a42eca59ff5c5ae4af18d999510854adc0f05dc4be1dd185bd9ec31cac24983f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.1 KB (629144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb43cecad879d4ba88d262401c88fb3f062f1c797229597960dc1cea5de1bc3e`

```dockerfile
```

-	Layers:
	-	`sha256:180b5d165e96da71d598db64f4be78d710798f66490da1472494cf4f87e7e683`  
		Last Modified: Mon, 05 Oct 2026 21:38:58 GMT  
		Size: 621.1 KB (621068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76c7278714ee57bf11c801fa6fb8b52085725c0e01c1fc6548e495b134ca60bd`  
		Last Modified: Mon, 05 Oct 2026 21:38:58 GMT  
		Size: 8.1 KB (8076 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c11c9203b3676b61ae743d1a5289a7e3d8a7ab924c7b83ce97702ee358182d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27439057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474847f1fb6c35599bc8742e70e02bd2bfaae4ec7afeb76cebd33ba3251ae6fc`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:24:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:24:21 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 05 Oct 2026 21:24:21 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:24:21 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:27:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:27:04 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:27:04 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:48:46 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:48:46 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:48:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:48:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3ea0e710649eb0f96849430a60f95eea0783173536fc62aede962ab4cb5a59`  
		Last Modified: Mon, 05 Oct 2026 21:27:11 GMT  
		Size: 419.1 KB (419126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1a69d70daaa800d754f169ac79ba9d1f99d44b1f27ef4d795a1f35a9419a76`  
		Last Modified: Mon, 05 Oct 2026 21:27:11 GMT  
		Size: 17.1 MB (17069436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3b31991bce781ca5e3bb4f525c9856a91012c9f167bbdedcdb49f1c0f4c61f`  
		Last Modified: Mon, 05 Oct 2026 21:27:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674bc369851fb43e2b21c03f55c818323d56b0fa7b67854386892e0d940e7b2c`  
		Last Modified: Mon, 05 Oct 2026 21:48:53 GMT  
		Size: 5.8 MB (5764192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:ee4aaab3de8fc22c877f667b83f189e9f3fb75d11eae7e1c7ee81fb06af3353f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.7 KB (628654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06eb983a42467d328eff184305be113bf804cbc688613f3565db5f71370eef39`

```dockerfile
```

-	Layers:
	-	`sha256:54bfaa3b9244b367d7605d012f6b0f95fb7aba268271a15148a1df3c1c447e97`  
		Last Modified: Mon, 05 Oct 2026 21:48:53 GMT  
		Size: 620.5 KB (620474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cd535c4f4cd1f728372b3e88dde73665104c6ecfd112bedd99b12f59a839f25`  
		Last Modified: Mon, 05 Oct 2026 21:48:52 GMT  
		Size: 8.2 KB (8180 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:e5d73b4f628e645fc44d470066d117150ec8b866b9b7d5d4d0ad13554544abdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (23963423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207102e86beb20a53eb8f3a2d14eed381017426340e81a5f43a16ead528c90f4`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 13:04:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 13:04:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 21 Sep 2026 13:04:47 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Mon, 21 Sep 2026 13:04:47 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Mon, 21 Sep 2026 13:50:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 21 Sep 2026 13:50:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 21 Sep 2026 13:50:38 GMT
CMD ["python3"]
# Sat, 26 Sep 2026 04:51:56 GMT
ENV HY_VERSION=1.3.1
# Sat, 26 Sep 2026 04:51:56 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 26 Sep 2026 04:51:56 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 26 Sep 2026 04:51:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156dcbb01d395df7de783baf0afae1e6ee9839d3dd72b029e085528de02a3f06`  
		Last Modified: Mon, 21 Sep 2026 13:51:25 GMT  
		Size: 416.7 KB (416748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf9f7949685cb17df6977e23f292d1b3ee1749d7735018d97b3bf746534cf6b`  
		Last Modified: Mon, 21 Sep 2026 13:51:27 GMT  
		Size: 14.2 MB (14206385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe574fc4b091c1062781b25e86870560f07009e8eaf61972187efaada5daf61a`  
		Last Modified: Mon, 21 Sep 2026 13:51:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997067b016c94441e38ac3d1c7b9c0d163186a69c52c29ca9270782be0f6be2f`  
		Last Modified: Sat, 26 Sep 2026 04:52:38 GMT  
		Size: 5.8 MB (5763718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:f68f753cf6b1fa8b810770bf0e19b699cbc6c7f3590ae4783a17ad7ebf696b72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.6 KB (628567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb1bfdbcedcf5232ce76ebb1ce2b79f48c1254d57d41eb51cfc86fa1d8b34ffb`

```dockerfile
```

-	Layers:
	-	`sha256:6ed04fe0ca09aece2f631cf609500db0f2de2035d35da5684039dfc5b03f2247`  
		Last Modified: Sat, 26 Sep 2026 04:52:37 GMT  
		Size: 620.4 KB (620447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5351a5086aa8235c8b377324fa981eface752c40ec6b3d7ec20b9e3dda276a47`  
		Last Modified: Sat, 26 Sep 2026 04:52:37 GMT  
		Size: 8.1 KB (8120 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:d1eae5b1f9dd25309066eb9439625ee3ee0d8232111abbd6aeca5abdea40185e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26845933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6624cc6dfb3f8d44d06f73efcbf444de5d7ebd2598545bbe8b0da49487e5c2`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:32:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:32:07 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:32:07 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Thu, 01 Oct 2026 21:32:07 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:29:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:29:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:29:55 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:37:51 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:37:51 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:37:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:37:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:235cb0f2ebebfc6fa94a68275e2aee2e2bbe61abb895ee0626c401aade9026d2`  
		Last Modified: Thu, 01 Oct 2026 21:39:03 GMT  
		Size: 417.4 KB (417418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fb67d7dfa5947b4af1c8368421707f541289d5379f5302ef1537754b129bf57`  
		Last Modified: Mon, 05 Oct 2026 21:30:07 GMT  
		Size: 17.0 MB (16950934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5091147f8f5738648f1e740f3800dec79c18b6c0fad349ff6b310dc01500675b`  
		Last Modified: Mon, 05 Oct 2026 21:30:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93602d661c4b55e860b34002076df2669171efed534b8b3229d73f5bf373d96c`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 5.8 MB (5764077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:3671da4ee203874750c3a98addc614e6359a095ee01611d92216afe5189f3259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.5 KB (628493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28601be457b364b06e2636635a6c19795ece35991bb321b81e1730c0fd8adb5e`

```dockerfile
```

-	Layers:
	-	`sha256:70e4a90b3e9257e98348af50683bb5a74c36fedb4f7a723f5dbdcd9998e7663e`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 620.4 KB (620417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c65c94b8eeff75462a795d4544cb4b751b7cec1a21794e977242716979fea1a`  
		Last Modified: Mon, 05 Oct 2026 21:38:00 GMT  
		Size: 8.1 KB (8076 bytes)  
		MIME: application/vnd.in-toto+json
