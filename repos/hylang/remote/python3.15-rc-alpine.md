## `hylang:python3.15-rc-alpine`

```console
$ docker pull hylang@sha256:5f016c52682d719aa6e855f468a39d98ac71a53b344ace59178bd77843aa3e40
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

### `hylang:python3.15-rc-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:eba9ff9bbea5227514fc012bfcb2ec9fb153959a38c6edc1a3c6586a1a5f23f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24135881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb20f050d723a16d1ea304723887cd180219511be7760e7fa60071a9d5d9c923`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:47:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:47:33 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Thu, 17 Sep 2026 21:47:33 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Thu, 17 Sep 2026 21:50:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:50:01 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:50:01 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:28 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:28 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:28 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e595e0a42a3dc0f9edb446ae129687db29f5147f991a2e3707bd0ab314cefa23`  
		Last Modified: Thu, 17 Sep 2026 21:50:07 GMT  
		Size: 416.3 KB (416270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fad7924014a6e21cc56289d41f1b089bf85706023c6bf6644a9d369f4cc0ad4e`  
		Last Modified: Thu, 17 Sep 2026 21:50:08 GMT  
		Size: 14.1 MB (14106600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b130d2c74ad749921cbaec7f7b852c8f4bed47afd7f815bfdf72f0693c65ee`  
		Last Modified: Thu, 17 Sep 2026 21:50:07 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5daefa2874d144efcc23ca47628079bc6c64a657a9b07aa4f7e1890d1781655f`  
		Last Modified: Thu, 17 Sep 2026 22:35:34 GMT  
		Size: 5.8 MB (5763022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:ef64457d630c302676c2390d1414c35f2f00ba5d34ce473c56b67b112862c853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.8 KB (631762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b222636cf4ebbe31da2937cc218184f5eae08a2ccffe007c3aee437f6007ba8d`

```dockerfile
```

-	Layers:
	-	`sha256:badac8568e329c77e015a61a40b17d8ad01ee0592f566818ec9b7dc1f12e3819`  
		Last Modified: Thu, 17 Sep 2026 22:35:34 GMT  
		Size: 622.4 KB (622358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58992760ef4eaaabacde500f9f2cbcbf4a30fc6fe602950ed5afa55a534d87b0`  
		Last Modified: Thu, 17 Sep 2026 22:35:33 GMT  
		Size: 9.4 KB (9404 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:8c76fe18f08023d1bce9fcb7b4fe876eb9bcca97ad0239e9afc61e0af361d7d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24551565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3353aaf8c90f9600ba3808543375896abbb063689376dc1d6f2e4f2a8c88cb63`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:48:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:48:36 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:48:36 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Thu, 17 Sep 2026 21:48:36 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Thu, 17 Sep 2026 21:51:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:51:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:51:18 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:59:34 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:59:34 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:59:34 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:59:34 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99ba33e5a626c89fd05341a46141622fdba04755d81dcf2966f290b47a3e9ad`  
		Last Modified: Thu, 17 Sep 2026 21:51:24 GMT  
		Size: 419.1 KB (419101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3840faab2f9067e44701137d2a105466155d920992717b3caa3b7d7c304d70c0`  
		Last Modified: Thu, 17 Sep 2026 21:51:25 GMT  
		Size: 14.2 MB (14181573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68c423031eb2eda05b0fbfa486fc288efa62a4d5282542c4ba231716a8738cc`  
		Last Modified: Thu, 17 Sep 2026 21:51:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863beb62ebe8c823f8b053c219e8735c99d1957ad78c1fbee0c7bda2ab22cbed`  
		Last Modified: Thu, 17 Sep 2026 22:59:41 GMT  
		Size: 5.8 MB (5762984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:75fe3b9b3bb3fb1faadd586da93392d64628bad26dfed052dcc5c095c6096319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.4 KB (631368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fa64a20489e8bf5297e878c678d6468bae57ef9e10e950995bc2168195a5d26`

```dockerfile
```

-	Layers:
	-	`sha256:43f91b669b313c0975723a4dc07beef6bbbfdb9ce9fc895945f4f76dc9e68ac7`  
		Last Modified: Thu, 17 Sep 2026 22:59:40 GMT  
		Size: 621.8 KB (621812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4869a4cfe781048201e38b072524ff108fbe7ca0181761e974b23bb960088ff6`  
		Last Modified: Thu, 17 Sep 2026 22:59:40 GMT  
		Size: 9.6 KB (9556 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine` - linux; riscv64

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

### `hylang:python3.15-rc-alpine` - unknown; unknown

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

### `hylang:python3.15-rc-alpine` - linux; s390x

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

### `hylang:python3.15-rc-alpine` - unknown; unknown

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
