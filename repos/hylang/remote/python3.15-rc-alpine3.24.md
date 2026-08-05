## `hylang:python3.15-rc-alpine3.24`

```console
$ docker pull hylang@sha256:95e140788a756959dd581849d96a16d3cbfb07eed87f841f15cf59d05ce08510
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
$ docker pull hylang@sha256:ebcac5b6382109b3f4f9e59fa86c1b894783de4f871935cd401564bce84569f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24233031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b066e2a2ab64e91797f1d4443101ac7081a7dd3841cc74b84b5abb44284c87fe`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:32:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:32:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:32:23 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:32:23 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:35:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:35:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:35:06 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 15:57:15 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:57:15 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 15:57:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 15:57:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d0cedfebe4e5d23e555706a1efc0f90a07ba95ddf8f8647f96ba9f6e1d062d`  
		Last Modified: Mon, 20 Jul 2026 22:35:13 GMT  
		Size: 408.1 KB (408092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab96f092d01238035b965bf4da1e7b3f9dcaf5ec4b278c29bcaa9e332a53213e`  
		Last Modified: Mon, 20 Jul 2026 22:35:13 GMT  
		Size: 14.1 MB (14099510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6332d4b2655835bcf202bf0c50551fe1557fd684e4c8d6d5beb60a3591179b9`  
		Last Modified: Mon, 20 Jul 2026 22:35:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e0b5864208f519694cd53ec11c2b62b8c23c019143a2cf492c5b80a73bb4beb`  
		Last Modified: Wed, 05 Aug 2026 15:57:21 GMT  
		Size: 5.9 MB (5878790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:14d49b36d9bbae780d560478e3b059e3115e7e47bb4fa4607ea141f33d2b48e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.3 KB (616261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35714f62d2f5d14bfcdbc87935cd7b73c3a6f9e51383045587a7e9b26ea6ae11`

```dockerfile
```

-	Layers:
	-	`sha256:4ecd805c1a9c0a1b0020571c11f5b4b788396750105942433ea583723bd57898`  
		Last Modified: Wed, 05 Aug 2026 15:57:21 GMT  
		Size: 606.9 KB (606858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a291527e25b38b8ef4882caddcd0097ef31d59ffe649b349c91cf6129340f25c`  
		Last Modified: Wed, 05 Aug 2026 15:57:21 GMT  
		Size: 9.4 KB (9403 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:11518df6ba5097919ca3f9dff5b2918c7a9b23faf958052d5233547d0bb71105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24643360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94173e0ba92fee2bdd697593160475e4deace68bad1f4b94de38c53da3dd57d`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:32:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:32:00 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:32:00 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:32:00 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:34:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:34:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:34:45 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 15:57:30 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:57:30 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 15:57:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 15:57:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69deebaafbcb96e9142caf6e233e3b2088d9bf61a2c71fb901149f57bb88fd46`  
		Last Modified: Mon, 20 Jul 2026 22:34:52 GMT  
		Size: 411.7 KB (411741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9dbfb8aa6182a79f1b1964529d38713f48ecd09e49ee00ad4769f97a1d24d34`  
		Last Modified: Mon, 20 Jul 2026 22:34:53 GMT  
		Size: 14.2 MB (14169543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e82d04f47751a8989bb1a87571a3c038b396e617925ba13ca9ba14ee896316`  
		Last Modified: Mon, 20 Jul 2026 22:34:52 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6389b38655013df92af4015f9d1b4ab858a4fc588b04ec8aba355ec7915161`  
		Last Modified: Wed, 05 Aug 2026 15:57:36 GMT  
		Size: 5.9 MB (5878789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:6f0f64bd43f469375adaaf4d174576996edc1262b9e898f7792653443477922b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.9 KB (615867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e519de292ac5b990306a70fc691e766633c9dd62cd8248c610c9f9e71704054`

```dockerfile
```

-	Layers:
	-	`sha256:f203146797e89ecf25404fad16fee63aa76633b910e2c2e489820fddef27fc9e`  
		Last Modified: Wed, 05 Aug 2026 15:57:36 GMT  
		Size: 606.3 KB (606312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7db3bc55607492ffabc4f21c6e6324f9cb813d2f7402fcbe8e5d8e4cfb76dcb6`  
		Last Modified: Wed, 05 Aug 2026 15:57:36 GMT  
		Size: 9.6 KB (9555 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.24` - linux; riscv64

```console
$ docker pull hylang@sha256:f5decd7e3b808b60437c0215e09f868a707889156fe150fd53ac5f48fdbb5194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24040295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebf8a51be7e3a736942a5f84039786c7101b7af326c2c4e56f7050c9e17547e2`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 02:10:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 02:10:31 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 22 Jul 2026 02:10:31 GMT
ENV PYTHON_VERSION=3.15.0b4
# Wed, 22 Jul 2026 02:10:31 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Wed, 22 Jul 2026 02:54:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 22 Jul 2026 02:54:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 22 Jul 2026 02:54:28 GMT
CMD ["python3"]
# Wed, 22 Jul 2026 13:29:13 GMT
ENV HY_VERSION=1.3.0
# Wed, 22 Jul 2026 13:29:13 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 22 Jul 2026 13:29:13 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 22 Jul 2026 13:29:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f85b50cb8afed3b14c73988ba88b95ab5311e4fb557b7cd847e839d19a82fe`  
		Last Modified: Wed, 22 Jul 2026 02:55:15 GMT  
		Size: 408.7 KB (408655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d71d219a179cc83782c3e70f1f99118995745955748cd7a6166e385abc0e7c`  
		Last Modified: Wed, 22 Jul 2026 02:55:17 GMT  
		Size: 14.2 MB (14209389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c598690559d1fffa86b86812c82a22dd1e56d0b8ccf31afec2e1b7df45d4c5`  
		Last Modified: Wed, 22 Jul 2026 02:55:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:400927cb79b93d686a9e872b0509aec159d472ce8ca3ba18496ffb27c67d95ca`  
		Last Modified: Wed, 22 Jul 2026 13:29:52 GMT  
		Size: 5.8 MB (5847641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:0cd7f44064c6ce976551c39c05e63267859f9d3756f8a43c28a9052110fb1913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.7 KB (615732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a9413e99aa3e88e4a2938fd75cce3f4b66d362c70481752286fdee46a9edf5a`

```dockerfile
```

-	Layers:
	-	`sha256:c139bbd60825590fef3e067e9de6f63d049bb6f16206a87bf274b3abde0e3bbe`  
		Last Modified: Wed, 22 Jul 2026 13:29:52 GMT  
		Size: 606.3 KB (606261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b51b32fe8c9707396ffeb7aa9c9db4cdbb11557504753ed9cfdac7fad9541513`  
		Last Modified: Wed, 22 Jul 2026 13:29:51 GMT  
		Size: 9.5 KB (9471 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.24` - linux; s390x

```console
$ docker pull hylang@sha256:c113284c4da30932f7deff5a2a431d18f7fad8c528df0aa200005e7bf76308ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24574029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13d285f3df1c342b3ed3f39659a24d7840a947f60c9edf1c7e6b157f795027f`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:47:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:47:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:47:33 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:47:33 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:52:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:52:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:52:45 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 16:00:19 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:00:19 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:00:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 16:00:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f14ab86a79785afc8d2016a72b99ce993d473cba4575499d01e3a646446fd352`  
		Last Modified: Mon, 20 Jul 2026 22:53:13 GMT  
		Size: 409.5 KB (409508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0bae4338d80565031a8a743b3a0f2cc870edd503c726d62a7f398a5c479d3d`  
		Last Modified: Mon, 20 Jul 2026 22:53:16 GMT  
		Size: 14.6 MB (14575984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b768ce03736e851c404c1fa578586f73e9444f78c53ecd60263d2a662707a54`  
		Last Modified: Mon, 20 Jul 2026 22:53:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22469ef96fea41b538927d390e5be04ab350b8c326b947217fa927dff1a44863`  
		Last Modified: Wed, 05 Aug 2026 16:00:45 GMT  
		Size: 5.9 MB (5878970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:8debb682c85d7fc524819af5f8ffdfbfb1fe19f927c9ad1ec122caf5c17e6617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.6 KB (615610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9eff4f5b3fb31890b4df0eac028325a0642bee41b05ab8546c487665a5f4d863`

```dockerfile
```

-	Layers:
	-	`sha256:caa027f4ac2c8f23b846d483d924c085d8f74eef971e3cb7f84eda715a5b2956`  
		Last Modified: Wed, 05 Aug 2026 16:00:44 GMT  
		Size: 606.2 KB (606207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adb27eb7362287060ee8350a6496e04f182cd56d41932f6db924d91a9aea9e3f`  
		Last Modified: Wed, 05 Aug 2026 16:00:44 GMT  
		Size: 9.4 KB (9403 bytes)  
		MIME: application/vnd.in-toto+json
