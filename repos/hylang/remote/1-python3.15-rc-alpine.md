## `hylang:1-python3.15-rc-alpine`

```console
$ docker pull hylang@sha256:b6d9bedff97863203bc26bf72d412adf525968004e03199a5458b07fb19dcb00
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

### `hylang:1-python3.15-rc-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:bbac2e7a7751a201e6875ea61c2ef0419822f38a8657625bd3845f92e73f92d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26700786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacbd1a1e13528c89aa7d8261409bffc0a7fc221ebc7a5794bf9649284a15e95`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 22:45:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:45:48 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 22:45:48 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:45:48 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:48:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:48:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:48:34 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:06:59 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:06:59 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:06:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:06:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbcd099984b56499d4753df28593d4ca0623fa4f08c28fb439f108a72d9c8a6`  
		Last Modified: Tue, 01 Sep 2026 22:48:41 GMT  
		Size: 408.1 KB (408076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c42df38a736d79a14a826997e5ae7e2a8d4c5a262bdb870aec832d321aff04`  
		Last Modified: Tue, 01 Sep 2026 22:48:41 GMT  
		Size: 16.7 MB (16683118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28116db6b278139e193958b3d27115225dbc49cf29dfe35c208cd8a63edc6c67`  
		Last Modified: Tue, 01 Sep 2026 22:48:41 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f50c538a5bcb1171570fc97d27e2d56e07b3164756d00b7f7c674e67ea8ee64`  
		Last Modified: Tue, 01 Sep 2026 23:07:04 GMT  
		Size: 5.8 MB (5762952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:f6887a3df97b8f682edd429990ea05463ddd60e33ba77cf48c6c4251934a5cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **630.5 KB (630469 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fd7df92bac3a2ff009f2c36d9156163c6c0403ee1fd975ff3d93257f6adf5c5`

```dockerfile
```

-	Layers:
	-	`sha256:ce08e9ac1ce56bb79f4d71b250c22fedcec6d9ac2c9aa376bd84d502db227f1e`  
		Last Modified: Tue, 01 Sep 2026 23:07:04 GMT  
		Size: 621.1 KB (621065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f000a0bc03f9494dcb0200fd56948a1937b77437befd3b19aa9656a01a5a796`  
		Last Modified: Tue, 01 Sep 2026 23:07:04 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c74eb8f165ba34e6fe802fe6daed06f1441dc5dd39784bbd087793698db9c40a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27415445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f64f91c00b1ba6cb088cb49c962af90c77640e9ec90a85fc58e63fd8e0de85aa`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 22:45:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:45:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 22:45:09 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:45:09 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:47:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:47:49 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:47:49 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:07:43 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:07:43 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:07:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:07:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c181f41383ab539c813ed698f83f617cd7742894110bdcdb0f71e358e4832881`  
		Last Modified: Tue, 01 Sep 2026 22:47:56 GMT  
		Size: 411.7 KB (411740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a667291833b3aa1666d33d54b375dba0001fbf677203e228caab08a002ec11`  
		Last Modified: Tue, 01 Sep 2026 22:47:57 GMT  
		Size: 17.1 MB (17057537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2e2a548fe3557fbf80aae65316f7bab0d9ca6b3df92f27caefcd78c39a8c00`  
		Last Modified: Tue, 01 Sep 2026 22:47:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b83d6d1d954d24ca3ad2ebee20d080ff09a92a572c622c4763bb26830a151e`  
		Last Modified: Tue, 01 Sep 2026 23:07:49 GMT  
		Size: 5.8 MB (5762881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:36ce0778b9b84202fe63f66455e2112d167f0182df0a891e6a7f106e63663308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **630.1 KB (630075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e8004b286b3b14b7308a3b306da2bc572ec7fdc90a0c79cefe35c02c51a4b4c`

```dockerfile
```

-	Layers:
	-	`sha256:ca0bf42600a9163b0e8636156a44082a60a5d10d36504d8bf2e01d35b88c8743`  
		Last Modified: Tue, 01 Sep 2026 23:07:49 GMT  
		Size: 620.5 KB (620519 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46fb84e20f4b4a3e0f9a49203985268a80fa8ff048683f4b2b668a31057df998`  
		Last Modified: Tue, 01 Sep 2026 23:07:49 GMT  
		Size: 9.6 KB (9556 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:1afc3add76d90cf1a12aa8c85cad101525ff74f3adfb31cbc3c1733023bcb0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26203290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f162f8bcd33530e589f6dd7bb61b946487c8dfb8b5150aa279d3b92175995c3`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 17:09:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 17:09:21 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 17:09:21 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 17:09:21 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Thu, 03 Sep 2026 00:03:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 03 Sep 2026 00:03:56 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 03 Sep 2026 00:03:56 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 16:50:53 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 16:50:53 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 16:50:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 16:50:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17c7109d4af9f369b071d963351ab404bdf7fba6a49c0dd3e384874de7ab1bc`  
		Last Modified: Tue, 01 Sep 2026 17:52:45 GMT  
		Size: 408.6 KB (408639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af90a206b9c4167351676d8363feeafb1914e978d7637b66590ef9256a883301`  
		Last Modified: Thu, 03 Sep 2026 00:04:47 GMT  
		Size: 16.5 MB (16456280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9fe4d54bff38b89f393f0665940734733e2b65de1470d4cd387bb2d0abdeec`  
		Last Modified: Thu, 03 Sep 2026 00:04:44 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed760ee3a949d968a99f5129b5a1cfbf5f512832ba9c6d336a5e67b3568c1b50`  
		Last Modified: Thu, 03 Sep 2026 16:51:33 GMT  
		Size: 5.8 MB (5763762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:046c16053e633c49c4197466a5b2afdb0321a9edb7786962c36bd59ca2eb2d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.9 KB (629940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d1ee7ca3431318a1c5b85c972b039e8cf7f4af733d690dba0eeeaa6e80de1a6`

```dockerfile
```

-	Layers:
	-	`sha256:c78fc4536a27acfe2f129067a59355eb655dca76bcbceb2dbc40905904382003`  
		Last Modified: Thu, 03 Sep 2026 16:51:32 GMT  
		Size: 620.5 KB (620468 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e9459cfc407e033a9925efc65e66e31a7cc4d773c7517370a0b24008078ea36`  
		Last Modified: Thu, 03 Sep 2026 16:51:32 GMT  
		Size: 9.5 KB (9472 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:f652e9187af523e332731060b9ad5f707e575eeb313c9f64960abc8943e64de0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26817666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f81d296f5ab4e5ae71dd0b4d716475bebc7ed502fa2a8a235d5c88ef9c2ff67b`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:43:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:43:20 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:43:20 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Mon, 31 Aug 2026 23:43:20 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:49:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:49:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:49:50 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:09:06 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:09:06 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:09:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:09:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde989f3e7e779eb9b9ecd6bbe6abe0f7b883b4ae3ccd96aabaa726a7ad96a31`  
		Last Modified: Mon, 31 Aug 2026 23:50:19 GMT  
		Size: 409.5 KB (409499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33bb6bcc0c094445529ca31758d3562f3311cb0dd236d44ca7f184f98c7ac63`  
		Last Modified: Tue, 01 Sep 2026 22:50:04 GMT  
		Size: 16.9 MB (16935647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8b93198d74a453ee7b3038db6a43aad65a9326ad8c7bc5640c8e7dad4c4963`  
		Last Modified: Tue, 01 Sep 2026 22:50:04 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee15d026189299f8bf89366376732773920c3e4b8ba3e708e4334862dc363d1`  
		Last Modified: Tue, 01 Sep 2026 23:09:16 GMT  
		Size: 5.8 MB (5762950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:5b0ff45bd95fee5179bb00840db5830128d4b546b4f86cd314e5346a13f05105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.8 KB (629818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38cb0a72b8161c41ccdb64fe61dbd2fc48657f7ac904754291d7593e302c89a7`

```dockerfile
```

-	Layers:
	-	`sha256:efb478c68cd8ef7352d6b28e8cc59a7d0d309f4f80af56bdd39c4157cd33035a`  
		Last Modified: Tue, 01 Sep 2026 23:09:16 GMT  
		Size: 620.4 KB (620414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04a0de8b57892e4325bf64cc9022873e372b49e86cfa1e1f1a76ebd24b39df7a`  
		Last Modified: Tue, 01 Sep 2026 23:09:16 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json
