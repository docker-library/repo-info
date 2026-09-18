## `hylang:python3.14-alpine`

```console
$ docker pull hylang@sha256:c51a937903b26b714aa761544ae4e94a388a80428d072ad996e52d1035c7b69c
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

### `hylang:python3.14-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:7809392d83d0f11bf76c91b6cba33c0a78928ea3c9a103542b0722eb2f843376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23381060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f76da04c64b5f302e3db7bbb24d1d56a2c419c8493d135c714fedbcd549886f`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:47:39 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:47:39 GMT
ENV PYTHON_VERSION=3.14.7
# Thu, 17 Sep 2026 21:47:39 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Thu, 17 Sep 2026 21:50:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:50:24 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:50:24 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:27 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:27 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7fb2dd16ff9c960110d8d116d0c279609e4447d48f07afa831140582a1c2dfa`  
		Last Modified: Thu, 17 Sep 2026 21:50:31 GMT  
		Size: 416.3 KB (416264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132bc93beb6607174b92aeece332d15bc4a69319c6fe8350900116264a65e848`  
		Last Modified: Thu, 17 Sep 2026 21:50:31 GMT  
		Size: 13.5 MB (13508749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75161c08694017fbbe8e67a0d698c65e0f272f0bdedb46489e22fc1b2a05df1b`  
		Last Modified: Thu, 17 Sep 2026 21:50:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692f0824625d65709f45a80e88d800f885bee39cfc43fb64dce745f7255022ac`  
		Last Modified: Thu, 17 Sep 2026 22:35:32 GMT  
		Size: 5.6 MB (5606061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:b42445b0e40c08a100b45046aa1789913fc8ebe36d7c3acdfe54e12ef5113f01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.6 KB (636572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc545c7d4a094b3029cc6be6be12a95b7c36d15bc6cae0874039844e74098120`

```dockerfile
```

-	Layers:
	-	`sha256:cd93f993f52b07d205cc8d80abd4d5c9c713b97480816f6887540726253d57e1`  
		Last Modified: Thu, 17 Sep 2026 22:35:32 GMT  
		Size: 624.8 KB (624768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c13b7e11a180ade0be88c940c13f3a54d370a5c9354bbca415e7106e18b90f5`  
		Last Modified: Thu, 17 Sep 2026 22:35:32 GMT  
		Size: 11.8 KB (11804 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:6fab6b9b874580f6248aad7ea7a4e83dae3446204032b2479304afc68b8df2c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22705990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5a691ebdebd2ae6280e14d4e246027d5eee8aa834e25bbaa0a07865f6e72374`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:56:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:56:33 GMT
ENV PYTHON_VERSION=3.14.7
# Thu, 17 Sep 2026 21:56:33 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Thu, 17 Sep 2026 21:59:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:59:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:59:26 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:47:02 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:47:02 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:47:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:47:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71fe4b99a2d237e76b1a673801a1dfff370609dd5af4578aeec02cdbc375ad9a`  
		Last Modified: Thu, 17 Sep 2026 21:59:31 GMT  
		Size: 417.5 KB (417532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f5e7298b7edf2aeff6ccc9c767cca87fe985a01cc3ee16b6372f1e61771c5b`  
		Last Modified: Thu, 17 Sep 2026 21:59:31 GMT  
		Size: 13.1 MB (13126969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e3043b0ba851eb8ea60d963bed55f9a26785c8f652d33fe732e044781490c7`  
		Last Modified: Thu, 17 Sep 2026 21:59:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6afc998398baa37706b2f3f86cf9dd24da9a2f5f915d7149ab578d9a85f5b9b`  
		Last Modified: Thu, 17 Sep 2026 22:47:07 GMT  
		Size: 5.6 MB (5606127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:408a97cb0e8fb1951a15e7d446cf2b6286fcb7dbf059feaa57761d2c60bede58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 KB (11765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c73a23abcfdfe07d2a5c7739ce5aec4fbf8201c8ecbe28dd1dfa27a129709f8f`

```dockerfile
```

-	Layers:
	-	`sha256:9379e82578058d1cb8b7e290b18aeb77458ccfc35a95eacc77328ad554570cb9`  
		Last Modified: Thu, 17 Sep 2026 22:47:07 GMT  
		Size: 11.8 KB (11765 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:6e6e7d80b50da76ca28aa07aac0447d78fc0ec1ae4fc3f70ddb1821ecc740b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (22008894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:119ce7c0e2d01f6b08fb324e72baaa4c8daa4b284e3da60a7822b03a05c07790`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:57:27 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:57:27 GMT
ENV PYTHON_VERSION=3.14.7
# Thu, 17 Sep 2026 21:57:27 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Thu, 17 Sep 2026 22:00:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:00:14 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:00:14 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:52:57 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:52:57 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:52:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:52:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:277e3675b9f8cf9f3f956e6f674fb472bfa795f14c5574b578dd0fee7a52475e`  
		Last Modified: Thu, 17 Sep 2026 22:00:21 GMT  
		Size: 416.4 KB (416396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9688ceb3a89e8b38d43c7600ebf67c2383421ac49e8cb02fbcbc483fa0e55e9`  
		Last Modified: Thu, 17 Sep 2026 22:00:21 GMT  
		Size: 12.7 MB (12720972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf1427c01819b664bd314bb731fa5f9122de3c8d50d84be75ccf548f8a835f5`  
		Last Modified: Thu, 17 Sep 2026 22:00:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc2a87affae0fafb0aba5e57fa631245ce2438fa2fe9b039894dea6b59b9cff`  
		Last Modified: Thu, 17 Sep 2026 22:53:03 GMT  
		Size: 5.6 MB (5606075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:f95bbb3fe6b1c45ec1a8d65329d3e59121ed3480be3b938b0eb174361d2aaaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.2 KB (639220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9e0ebf8223fa6f7505e06fd2131be66e346344cd1002d419eaf4b26e26f19e3`

```dockerfile
```

-	Layers:
	-	`sha256:c87168a3d7a4c2f425777f1e1ebf8dd360fa411f147a2de6dd77dd79941192e0`  
		Last Modified: Thu, 17 Sep 2026 22:53:03 GMT  
		Size: 627.2 KB (627240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18c1cb2e48917402903c20bfb50deea5eb69f73fdc847f802042e8ef43e9c4b6`  
		Last Modified: Thu, 17 Sep 2026 22:53:03 GMT  
		Size: 12.0 KB (11980 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:a33f50b3edc7e43611b49108283a8d639fdf97291f240e1873845821673587ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23808254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23ea44bd4cef849d437ab85e51a25da272a86b6572dd8c0bf214d41dc68bc846`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:48:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:48:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:48:47 GMT
ENV PYTHON_VERSION=3.14.7
# Thu, 17 Sep 2026 21:48:47 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Thu, 17 Sep 2026 21:51:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:51:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:51:30 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:59:53 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:59:53 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:59:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:59:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868e40abcda8f67848c5763b8f0f6e8d57d7cf7e015b1a71b0cbaccc6545daac`  
		Last Modified: Thu, 17 Sep 2026 21:51:37 GMT  
		Size: 419.1 KB (419108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65712a36f5e476f5f476969cff4c4091e18fe88204d18eecef1fd070e12bf5cb`  
		Last Modified: Thu, 17 Sep 2026 21:51:37 GMT  
		Size: 13.6 MB (13595290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0d994633e32a06f07773538463e75f806ca3469887a210d3d15693eefa8a48`  
		Last Modified: Thu, 17 Sep 2026 21:51:37 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:114c0ca7e3972fd8a795ec14d1839d15aee49579834f39ce514c9a1de0bbef32`  
		Last Modified: Thu, 17 Sep 2026 22:59:59 GMT  
		Size: 5.6 MB (5605948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:72e6513495a564a011679fc533cc846abf86332977cc95cbd95049f68b63e118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.4 KB (636369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9bd7d897ee311522917536abf23cf4aa76cf5cfac3549dfc9a2029af3523ef`

```dockerfile
```

-	Layers:
	-	`sha256:2a0e243047880ecf1605859bebf56dd4ff55684433b53a82b313726aca68d0f8`  
		Last Modified: Thu, 17 Sep 2026 22:59:59 GMT  
		Size: 624.3 KB (624318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f2d2e1196dc9d00cd1dbcd5f28d7e404b47478fa866a2ea4923a33deb4f14ec`  
		Last Modified: Thu, 17 Sep 2026 22:59:59 GMT  
		Size: 12.1 KB (12051 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine` - linux; 386

```console
$ docker pull hylang@sha256:46b8060728371830c8ab2524e62425861a29873e3ca84b187108f1dae1d9be1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25835228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c067c36544ca18075b45067676fb18f6c777ce4db25dc9b70fcfc090e503765b`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:36:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:36:22 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:36:22 GMT
ENV PYTHON_VERSION=3.14.7
# Mon, 31 Aug 2026 23:36:22 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Mon, 31 Aug 2026 23:38:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:38:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:38:55 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:13:27 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:13:27 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:13:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:13:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26e388fc85a53b4ee5e2ddd536e7ebc146dcdb8bc5c86813286e7f945f95342b`  
		Last Modified: Mon, 31 Aug 2026 23:39:02 GMT  
		Size: 408.9 KB (408884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76bb5ef7fbff7cc621330265ed50ed18e4398c7aceb36684882e2737f01d0b5c`  
		Last Modified: Mon, 31 Aug 2026 23:39:02 GMT  
		Size: 16.2 MB (16150002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f30dec3a04c2e62b6cbaf5fc8966da98d7409776834df51fe0c16eb09445b2`  
		Last Modified: Mon, 31 Aug 2026 23:39:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9130873e0291a9aa314033d7859667e9caf8c5a23eb987550fb8c20d4e65f1c9`  
		Last Modified: Tue, 01 Sep 2026 00:13:32 GMT  
		Size: 5.6 MB (5605952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:73a807e9ca00b22b7c3daf3502707385db118028321bde354e40c310c1425217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **635.1 KB (635102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:093e388b347edc54a377ffbb5580cbad9cebbf5fb000dde104a26c4295123f83`

```dockerfile
```

-	Layers:
	-	`sha256:e72efcd2822550bed9739060796cfbc0b1f6a58b391f4752391cfdd602bf154e`  
		Last Modified: Tue, 01 Sep 2026 00:13:32 GMT  
		Size: 623.4 KB (623390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9dffd2af53815e42ed975d3b708dff9eff3e3fdb53dffda13e089a77436c9c6`  
		Last Modified: Tue, 01 Sep 2026 00:13:32 GMT  
		Size: 11.7 KB (11712 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:b37803ff8722505d4da6c52f7463635685f84449c33c2f19976e3d354a2402d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26664541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bee34233cb5c7f971e86e51856297b360e3c520fcaeacaa849c91ce87fa4133c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:50:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:50:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:50:58 GMT
ENV PYTHON_VERSION=3.14.7
# Tue, 01 Sep 2026 00:50:58 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Tue, 01 Sep 2026 00:53:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:53:59 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:53:59 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 04:08:09 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 04:08:09 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 04:08:09 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 04:08:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df021382b713823ff90b03b74d2f6213d0d013cb3dbcfc001e7d72239351a491`  
		Last Modified: Tue, 01 Sep 2026 00:54:11 GMT  
		Size: 412.3 KB (412297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5be6199cf2a3f8d93add19c22af879a274df5a2e9aa8378e7aba3318769074`  
		Last Modified: Tue, 01 Sep 2026 00:54:12 GMT  
		Size: 16.8 MB (16832489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe3dc8f80e7bcf16550e89631a84736d53e7d493599ed26381908252d3287af`  
		Last Modified: Tue, 01 Sep 2026 00:54:11 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:781f7f5b534f8699053b6b1c314bbdf9547f0873da008ae3a4778283d31da663`  
		Last Modified: Tue, 01 Sep 2026 04:08:19 GMT  
		Size: 5.6 MB (5606106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:37e3f36dc565501aa3e72661b17004e62f0e4201bd1d724cb83a97e6d2990313
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.9 KB (634850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:048c4f6123687d89a796015f0ec4db024f3071ea42292eac9b3ccffa150958ce`

```dockerfile
```

-	Layers:
	-	`sha256:9d1a6b4e242037cb30c731a0d36ecabd6da88643778c2feab769144eace189cf`  
		Last Modified: Tue, 01 Sep 2026 04:08:19 GMT  
		Size: 622.9 KB (622930 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b064b74c00da5a77702b8f224e076515ca2b3da1dd3b3a3490ab4e481f24ebf0`  
		Last Modified: Tue, 01 Sep 2026 04:08:19 GMT  
		Size: 11.9 KB (11920 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:61c908f3ccbfc357aa9639d1c9c2fe09e6bc344d77c9785a7379cbf9992ce473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25471134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1650b66255ac24260b486fe6857dffe89703b524ed7134dc81edfa04c1a41833`
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
ENV PYTHON_VERSION=3.14.7
# Tue, 01 Sep 2026 17:09:21 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Tue, 01 Sep 2026 20:57:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 20:57:23 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 20:57:23 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:14:52 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:14:52 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:14:52 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:14:52 GMT
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
	-	`sha256:4025f67cfa4067024b27a17e4feb2840ce8ea247e0afd7639d5644d81616c2ad`  
		Last Modified: Tue, 01 Sep 2026 20:58:13 GMT  
		Size: 15.9 MB (15880970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3b3634d12e8389333a0fd4404f881c8fe4b4a2d98ca31dbadebcda8c3f0a4a`  
		Last Modified: Tue, 01 Sep 2026 20:58:10 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a981a906968ff4e1ea0d33ad772d86b473e6c45e26e3d4ccfe10b15dfc07a1a8`  
		Last Modified: Thu, 03 Sep 2026 04:15:31 GMT  
		Size: 5.6 MB (5606916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:0154a1a224424ec2e25acb8cd6a0c672adee642025d3b754e2714593a05b7acc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.8 KB (634846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36c22c8e4a7288d65bc27635976eb0a7c4ee3562d25f9acd8c8ce5d75172547d`

```dockerfile
```

-	Layers:
	-	`sha256:5777ff9261a32b0f96e7739410515685833d9f1d8f2bda4c018a86070fbb6336`  
		Last Modified: Thu, 03 Sep 2026 04:15:30 GMT  
		Size: 622.9 KB (622926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfec46ece8e3d2ba5d2df8e29ac1366bf387bdce79c6442612ee687a2b556e68`  
		Last Modified: Thu, 03 Sep 2026 04:15:30 GMT  
		Size: 11.9 KB (11920 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:90e39ff68e18686dd002645ab48a39e12e35e2b623b75685a6b76ba9234be373
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26058106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b697b8429557115d746a80a93d28720b11769621f942b2ec1ee22e6623b9eef6`
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
ENV PYTHON_VERSION=3.14.7
# Mon, 31 Aug 2026 23:43:20 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Mon, 31 Aug 2026 23:50:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:50:02 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:50:02 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:31:57 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:31:57 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:31:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:31:57 GMT
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
	-	`sha256:72177ce10c56f457cebf44dac42409dd28cce340240baa99bae82bd90cff9343`  
		Last Modified: Mon, 31 Aug 2026 23:50:20 GMT  
		Size: 16.3 MB (16332908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c169feb311470534b9349bc3d4eda064f75a45c289b76552f1f4a636f88828`  
		Last Modified: Mon, 31 Aug 2026 23:50:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:001d2349becc6879e555c59d1d3804f55ae73737622ee11947bb560fce3134e1`  
		Last Modified: Tue, 01 Sep 2026 00:32:12 GMT  
		Size: 5.6 MB (5606131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:b70ba33009425ec05259c2f282fed6e97359c8754739fbf25f95203790f348e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.6 KB (634628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5250413d7f59e47a816dbd31db96f2c3e7b558197a8b476b31ca92bbe7fbe48a`

```dockerfile
```

-	Layers:
	-	`sha256:6e2c39023d73ebb9ff6f2c3c3fb82ee01751f06f21f0ae66914b799e10276a06`  
		Last Modified: Tue, 01 Sep 2026 00:32:12 GMT  
		Size: 622.8 KB (622824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d877307ac9e58dc09811a8d90eb12b4989160181665fea7189bf24607ea25986`  
		Last Modified: Tue, 01 Sep 2026 00:32:12 GMT  
		Size: 11.8 KB (11804 bytes)  
		MIME: application/vnd.in-toto+json
