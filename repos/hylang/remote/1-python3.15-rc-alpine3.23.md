## `hylang:1-python3.15-rc-alpine3.23`

```console
$ docker pull hylang@sha256:31f824a1f1a64b69984d24f89e5fdacb2d443d2545dd28ad6c7406349f031f90
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

### `hylang:1-python3.15-rc-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:89351de0cb87e04b86cf44ec24e25008ee847459aa212c30eba834f8a215eb4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22652740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175c007bd04009e824b21663ac155463ee73f5b4cca5402854f091ebc7ffac4f`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 03 Dec 2025 19:30:25 GMT
ADD alpine-minirootfs-3.23.0-armhf.tar.gz / # buildkit
# Wed, 03 Dec 2025 19:30:25 GMT
CMD ["/bin/sh"]
# Thu, 04 Dec 2025 00:34:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Dec 2025 00:34:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 04 Dec 2025 00:34:15 GMT
ENV PYTHON_VERSION=3.15.0a2
# Thu, 04 Dec 2025 00:34:15 GMT
ENV PYTHON_SHA256=d8a0a2f4a7f3d7090cf195e81814efe95f70554955557f40e149d8694a662751
# Thu, 04 Dec 2025 00:37:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:--Wl},--strip-all"; 		arch="$(apk --print-arch)"; 		case "$arch" in 			x86_64|aarch64) 				EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 				;; 			x86) 				;; 			*) 				EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 				;; 		esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:--Wl},-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 04 Dec 2025 00:37:16 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 04 Dec 2025 00:37:16 GMT
CMD ["python3"]
# Mon, 12 Oct 2026 22:26:46 GMT
ENV HY_VERSION=1.3.1
# Mon, 12 Oct 2026 22:26:46 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 12 Oct 2026 22:26:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 12 Oct 2026 22:26:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:dd0740468c9e19d93d459e4637a652c4fb8e1012c1adeac2e7311f14dcd210f6`  
		Last Modified: Wed, 03 Dec 2025 19:30:30 GMT  
		Size: 3.6 MB (3567894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09241da2db038a30263ec4aa5d2324789febeb06019b18e64f27b5e2709c6f7`  
		Last Modified: Thu, 04 Dec 2025 00:37:22 GMT  
		Size: 461.3 KB (461321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501812f40aa086e7e9d62ba7b9ef35db05b62bc008f3690c8a274cc0bf9d612e`  
		Last Modified: Thu, 04 Dec 2025 00:37:22 GMT  
		Size: 13.1 MB (13099037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2e3bca617482a108c1a6257626fb0464ded47ad625963787f6e310088e22f5`  
		Last Modified: Thu, 04 Dec 2025 00:37:22 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c743b57526f89b47169eff7a4be5ef0bd27efe446e74b524347711fb632855`  
		Last Modified: Mon, 12 Oct 2026 22:26:51 GMT  
		Size: 5.5 MB (5524239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:f1308da075df166472456044bdae54459fd07489b51fe93e8fb8cedbf2b0b997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 KB (7753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f95dd1fb0f33ff8d2a9acff2a59d1b7b6507b94edcbacb3cf3b302dce4ea69`

```dockerfile
```

-	Layers:
	-	`sha256:b64bae88a3ee865bfe8c38796e19d86086b5effab32859cd23d16f76fa5a7073`  
		Last Modified: Mon, 12 Oct 2026 22:26:50 GMT  
		Size: 7.8 KB (7753 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:7a3d3184c1b0ee0696f33bf1b8578aa030013c8b18881c056b3e139b913ff3ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21976416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e2748c8b9b51020d22c4733ced983766d2d9c7cb9eae4d2c30804af5520a4db`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 03 Dec 2025 19:30:51 GMT
ADD alpine-minirootfs-3.23.0-armv7.tar.gz / # buildkit
# Wed, 03 Dec 2025 19:30:51 GMT
CMD ["/bin/sh"]
# Thu, 04 Dec 2025 00:35:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Dec 2025 00:35:22 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 04 Dec 2025 00:35:22 GMT
ENV PYTHON_VERSION=3.15.0a2
# Thu, 04 Dec 2025 00:35:22 GMT
ENV PYTHON_SHA256=d8a0a2f4a7f3d7090cf195e81814efe95f70554955557f40e149d8694a662751
# Thu, 04 Dec 2025 00:38:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:--Wl},--strip-all"; 		arch="$(apk --print-arch)"; 		case "$arch" in 			x86_64|aarch64) 				EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 				;; 			x86) 				;; 			*) 				EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 				;; 		esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:--Wl},-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 04 Dec 2025 00:38:16 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 04 Dec 2025 00:38:16 GMT
CMD ["python3"]
# Mon, 12 Oct 2026 22:27:45 GMT
ENV HY_VERSION=1.3.1
# Mon, 12 Oct 2026 22:27:45 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 12 Oct 2026 22:27:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 12 Oct 2026 22:27:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5f34bcd7b3c0108b00e414f3370e9140a1cb6e02ec1caaa14ff2f25408910a24`  
		Last Modified: Wed, 03 Dec 2025 19:30:57 GMT  
		Size: 3.3 MB (3278466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300b1e9dd64300c2371cfebe2b97e2d7fcfcacdde935e07e4e0bc370d0670df6`  
		Last Modified: Thu, 04 Dec 2025 00:38:23 GMT  
		Size: 460.6 KB (460587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f1efa8f6fe0d42935dde12c961ac1cf3583c1bdeb48975619d3e9e53553376f`  
		Last Modified: Thu, 04 Dec 2025 00:38:24 GMT  
		Size: 12.7 MB (12712859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693a6569522f3c5fcca8850136177ea3b77b711ef80a24a6ad22cac8bf86baba`  
		Last Modified: Thu, 04 Dec 2025 00:38:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf640a923b5a25ee4aff2758af413659624f1c21296eb2a3d2f773c7cb1910d`  
		Last Modified: Mon, 12 Oct 2026 22:27:51 GMT  
		Size: 5.5 MB (5524257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:7df9a8cfdd1c3091ee456ac13b6c4d8b0e577ccb8372087166399e4a12e5bd39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.8 KB (634751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c9c4b53883c35db675898ebb9ca12276ee7c23ff7697a1cc68aa29f1358bace`

```dockerfile
```

-	Layers:
	-	`sha256:0f89ae92edded65b7309fd0d39ea459cb85b012a9573ccf0bfecab1e03f94227`  
		Last Modified: Mon, 12 Oct 2026 22:27:51 GMT  
		Size: 626.8 KB (626783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13afc7125ecac6d34a4415214aee23a95300840f9b2f64bcf678ebfeed03c650`  
		Last Modified: Mon, 12 Oct 2026 22:27:51 GMT  
		Size: 8.0 KB (7968 bytes)  
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

### `hylang:1-python3.15-rc-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:fcdf88b213d98d5258c835c2ec6ed92b71454b3fb3729ea7dfb23b3d29f22e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23393078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9ccc642952ac14f433c44347d886fa257d18056ce554af180d9a5be1e4cca4f`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 03 Dec 2025 19:30:18 GMT
ADD alpine-minirootfs-3.23.0-x86.tar.gz / # buildkit
# Wed, 03 Dec 2025 19:30:18 GMT
CMD ["/bin/sh"]
# Thu, 04 Dec 2025 00:35:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Dec 2025 00:35:11 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 04 Dec 2025 00:35:11 GMT
ENV PYTHON_VERSION=3.15.0a2
# Thu, 04 Dec 2025 00:35:11 GMT
ENV PYTHON_SHA256=d8a0a2f4a7f3d7090cf195e81814efe95f70554955557f40e149d8694a662751
# Thu, 04 Dec 2025 00:38:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:--Wl},--strip-all"; 		arch="$(apk --print-arch)"; 		case "$arch" in 			x86_64|aarch64) 				EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 				;; 			x86) 				;; 			*) 				EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 				;; 		esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:--Wl},-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 04 Dec 2025 00:38:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 04 Dec 2025 00:38:07 GMT
CMD ["python3"]
# Mon, 12 Oct 2026 22:28:10 GMT
ENV HY_VERSION=1.3.1
# Mon, 12 Oct 2026 22:28:10 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 12 Oct 2026 22:28:10 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 12 Oct 2026 22:28:10 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3527b4f952d5950d8caa74dc0d1759215000f2f0a195344f0239c7e2805fe2fc`  
		Last Modified: Wed, 03 Dec 2025 19:30:24 GMT  
		Size: 3.7 MB (3685856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16bc4b5f31dd4b5fab3a04f90a41b1152c015baeb2f43ad268da3e37cc2f7cad`  
		Last Modified: Thu, 04 Dec 2025 00:38:15 GMT  
		Size: 461.1 KB (461105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b7213868403dcf81e2593110d6002bf9106c8aceb77688ccf0d3f73799e8cb`  
		Last Modified: Thu, 04 Dec 2025 00:38:15 GMT  
		Size: 13.7 MB (13721751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e09d9f98dc9ebc3a6dec3b0cf45a6344ca9dc9e13a570e2d60784308d357d7`  
		Last Modified: Thu, 04 Dec 2025 00:38:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e497b0c9612c0d5d7ccda48779941c66ad287700bb62cff3a105cb04cdba5f63`  
		Last Modified: Mon, 12 Oct 2026 22:28:16 GMT  
		Size: 5.5 MB (5524118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:b14e9ab1470c82c20241bc27f0daf7ba01041f8fb7f6284c2264065c701e5c01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **632.2 KB (632246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4948202f9152b878e66fb7567454ed73d4b8e2e83ec726335c0924f8980b157f`

```dockerfile
```

-	Layers:
	-	`sha256:3985f4393ec04938dae4b0365188bf820745e64802a25f4a7f4e943039d383f4`  
		Last Modified: Mon, 12 Oct 2026 22:28:16 GMT  
		Size: 624.4 KB (624382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3fb1102eabb1a0412c7b8bba98a8408784df3bcfeb4f159dc9021e205505439`  
		Last Modified: Mon, 12 Oct 2026 22:28:16 GMT  
		Size: 7.9 KB (7864 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:0490e39d2406c6a21d8f01c3ce675fd78ec4fbd2b42ac0b2f920b45b8ce32e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24128424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56053cf2b0b4be2f8c141c6571bbfe05d9c0d6ad0554a3e32c52532f57c1dd60`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 03 Dec 2025 19:29:24 GMT
ADD alpine-minirootfs-3.23.0-ppc64le.tar.gz / # buildkit
# Wed, 03 Dec 2025 19:29:24 GMT
CMD ["/bin/sh"]
# Thu, 04 Dec 2025 00:33:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Dec 2025 00:33:51 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 04 Dec 2025 00:33:51 GMT
ENV PYTHON_VERSION=3.15.0a2
# Thu, 04 Dec 2025 00:33:51 GMT
ENV PYTHON_SHA256=d8a0a2f4a7f3d7090cf195e81814efe95f70554955557f40e149d8694a662751
# Thu, 04 Dec 2025 00:37:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:--Wl},--strip-all"; 		arch="$(apk --print-arch)"; 		case "$arch" in 			x86_64|aarch64) 				EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 				;; 			x86) 				;; 			*) 				EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 				;; 		esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:--Wl},-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 04 Dec 2025 00:37:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 04 Dec 2025 00:37:45 GMT
CMD ["python3"]
# Mon, 12 Oct 2026 23:45:03 GMT
ENV HY_VERSION=1.3.1
# Mon, 12 Oct 2026 23:45:03 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 12 Oct 2026 23:45:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 12 Oct 2026 23:45:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bebb36295c11d2d52cd92944b382c4aa60dce148b63090816248052f38358488`  
		Last Modified: Wed, 03 Dec 2025 19:29:39 GMT  
		Size: 3.8 MB (3827017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d9eaadc0f25eb346087cdafd7e4d0cc1dc79ec0bbd2a3d9418c2b8760e83ae4`  
		Last Modified: Thu, 04 Dec 2025 00:38:04 GMT  
		Size: 463.4 KB (463358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36587b0f0c20da288aa931112ef9e7fe0ca7a4519d206c19f5ff066506be60ce`  
		Last Modified: Thu, 04 Dec 2025 00:38:05 GMT  
		Size: 14.3 MB (14313395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186ff60d22b525a5e6de58b6cb4228f47897ff9d4061eff7d05193c345d79273`  
		Last Modified: Thu, 04 Dec 2025 00:38:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c6abdf0a1b1591c0a0183c36cb2434cfeb5614ea8a97a3fa05b89a754c5b2f2`  
		Last Modified: Mon, 12 Oct 2026 23:45:20 GMT  
		Size: 5.5 MB (5524406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:184c561351603af5caa7666c7df89777da4a145821aef191f139861876da8b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.7 KB (631722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ad7563bb0c58b6185f72e7f7e956f3227cfba624c890f88f5b27f1474f2cf3b`

```dockerfile
```

-	Layers:
	-	`sha256:40e80b62a44d7979db5215e06c2b91b5a755b4bacdd0b84e27dffdee278537e4`  
		Last Modified: Mon, 12 Oct 2026 23:45:20 GMT  
		Size: 623.8 KB (623790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6780764d15d8aa0eacadb44f423e03bfb4e51006f19d323fe616252adb6cb9bc`  
		Last Modified: Mon, 12 Oct 2026 23:45:20 GMT  
		Size: 7.9 KB (7932 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:4a1fe3072bb21f708252ae81485758e7c63cd4f9b94cb615ca018cbcae53b6a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26222229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d74cb25374b1050f356aed23967fe9fd19a1d064a18ad463a54555b41b6794`
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
ENV PYTHON_VERSION=3.15.0rc3
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Tue, 06 Oct 2026 03:48:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 03:48:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 03:48:26 GMT
CMD ["python3"]
# Thu, 08 Oct 2026 10:56:21 GMT
ENV HY_VERSION=1.3.1
# Thu, 08 Oct 2026 10:56:21 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 08 Oct 2026 10:56:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 08 Oct 2026 10:56:21 GMT
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
	-	`sha256:212654f4393810be3393cc28fc664cd6a047a6bd1ac7d48c0c841685bff50159`  
		Last Modified: Tue, 06 Oct 2026 03:49:28 GMT  
		Size: 16.5 MB (16463733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2400d918b95554b50d59963eb784aeac622f471fe54f33f960c971d96bc5eeab`  
		Last Modified: Tue, 06 Oct 2026 03:49:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cf16f784bb21615847ab20c3860b929bdafc9d582dad8a697e7bd5def8af58`  
		Last Modified: Thu, 08 Oct 2026 10:57:03 GMT  
		Size: 5.8 MB (5765159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:00d4a08de5158cc4340c6d2cb427c7edad2b162f2c20582d4e3a01c281faacfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.6 KB (628567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c73223e99f75e697940e7f9ee46db9f98c358d89111cc21a004fd1afcb2ceb3`

```dockerfile
```

-	Layers:
	-	`sha256:432be05f49bee4c36b8091fa4a34f6db1322691780a133613aa2203e89353db0`  
		Last Modified: Thu, 08 Oct 2026 10:57:02 GMT  
		Size: 620.4 KB (620447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9f8a47237503bdfd27e19d16a4353713edcffd848ebacf3ed4fd34c4b1c73fd`  
		Last Modified: Thu, 08 Oct 2026 10:57:02 GMT  
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
