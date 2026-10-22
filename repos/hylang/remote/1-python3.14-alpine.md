## `hylang:1-python3.14-alpine`

```console
$ docker pull hylang@sha256:6b7a3f687bbf7d22eedaffe45ea4e04c5c174df6a58ce88dd9cb21e8ff317966
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

### `hylang:1-python3.14-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:ff705a3e9849f40f9241273646f6b24a1ec3ccf1d52d899f29b3cb1b23457e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23501265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8341c626df824965de4043de7521a0a5a3e929beb82c62ae86e02d5642f743d4`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:59:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:59:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 22:59:09 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 22:59:09 GMT
ENV PYTHON_SHA256=e02d9ac21cebda6e46435369744a92c65cc7cd8669697694122cf97ffacd1e53
# Wed, 21 Oct 2026 23:01:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:01:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:01:37 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 23:40:35 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 23:40:35 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 23:40:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 23:40:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c8e17c37680a5088e1c0f900c321fc83810c5961f8bfb9fb29df8080325212`  
		Last Modified: Wed, 21 Oct 2026 23:01:43 GMT  
		Size: 412.0 KB (412041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a73207b3c2491ce3b099dfb0161eedc71dd407a2457d77373e890475300cba`  
		Last Modified: Wed, 21 Oct 2026 23:01:44 GMT  
		Size: 13.6 MB (13555593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e039175c5c5573da91a8ef9b3d1b75105b50c58a0f2a0bb6b8d45124293b035`  
		Last Modified: Wed, 21 Oct 2026 23:01:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7f9d5504c7f8a5d9de0946d09aa95299140018eb50731dee31768897f69783`  
		Last Modified: Wed, 21 Oct 2026 23:40:41 GMT  
		Size: 5.7 MB (5680274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:2119498f69440f1ae73cffd1060c7158f07883f73ce51c5ff48aec13443911e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.7 KB (629707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb51a5827330e056ce3322c32f3f7e65385a20fcae9517c049b48f6960e5983f`

```dockerfile
```

-	Layers:
	-	`sha256:0ae15beb0ab4250ab2b387bb5b5d9661302e0acb71428099fb2eda357fcb148e`  
		Last Modified: Wed, 21 Oct 2026 23:40:41 GMT  
		Size: 620.4 KB (620369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80e20dd9daca4d49a357174987a95e4d1d32bdf57af743f784018da75412389a`  
		Last Modified: Wed, 21 Oct 2026 23:40:41 GMT  
		Size: 9.3 KB (9338 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:060346cd132fd583328c99044b78f38c4ab4764bea90dbaf4f0786881048f6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22821374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:537418ab81f395b79005fd5da904b08822a9933fc3dc9d2de9abd4087d9085f3`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:30:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:30:44 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 23:30:44 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 23:30:44 GMT
ENV PYTHON_SHA256=e02d9ac21cebda6e46435369744a92c65cc7cd8669697694122cf97ffacd1e53
# Wed, 21 Oct 2026 23:34:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:34:23 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:34:23 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:18:51 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:18:51 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:18:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:18:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04e812bac1bdf2c06a83d96e4885f994c9103d5dfed4a845ccc88984a0530cc`  
		Last Modified: Wed, 21 Oct 2026 23:34:28 GMT  
		Size: 413.7 KB (413731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83463739d4d0d0caa9eae6dcc31606fe25879ca8a5eadfb9f4531b77dfae3b7`  
		Last Modified: Wed, 21 Oct 2026 23:34:29 GMT  
		Size: 13.2 MB (13168754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54f78bb1609328e24de1902d34ac9b236749ac585ad10298801a6b8715837fb`  
		Last Modified: Wed, 21 Oct 2026 23:34:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d70fe405f7eca652d4ca056bebd3e98183b2559098b69b2bb3c0e15b967142`  
		Last Modified: Thu, 22 Oct 2026 00:18:55 GMT  
		Size: 5.7 MB (5680350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:9e2a2a2b207c31873bc0c1e20c434a16123970cd89c0ee02e458e01900d3a997
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f618f515c697d006ed24a240d9886f4840a0d4d1429b8dd17f83ba0b1c27c8f`

```dockerfile
```

-	Layers:
	-	`sha256:bd5aecd799a963c521b4d1e5e7a8ad71c5ba81e4a8d3b70d805e14bdff1de72d`  
		Last Modified: Thu, 22 Oct 2026 00:18:55 GMT  
		Size: 9.2 KB (9237 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:d3a05249837e0cdfeabbb92f2f458839bd46f3751372dd49df2b05a984ce4e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22124363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6611ce5970cf49c50438f6e8b5ed2059d3d89647c3ef3e868315488086bef631`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:34:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:34:44 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 23:34:44 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 23:34:44 GMT
ENV PYTHON_SHA256=e02d9ac21cebda6e46435369744a92c65cc7cd8669697694122cf97ffacd1e53
# Wed, 21 Oct 2026 23:41:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:41:00 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:41:00 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:31:26 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:31:26 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:31:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:31:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:150ac9c2eeb4436828dae470aa5708fd370783f05d6ec89366ec577b98e894da`  
		Last Modified: Wed, 21 Oct 2026 23:41:06 GMT  
		Size: 412.4 KB (412410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ea35051483fbeb63d50ffb60c3f0b1360712b276b163a3f48fc952a189822b`  
		Last Modified: Wed, 21 Oct 2026 23:41:07 GMT  
		Size: 12.8 MB (12764701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69eb0f8dcae623b529242b20769c0623570701759124739f5fe8892785b5b392`  
		Last Modified: Wed, 21 Oct 2026 23:41:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b838fbdb0434a134db22a801b04c21b78aa6aee4cc14d4ec96e4223c4ab08d4`  
		Last Modified: Thu, 22 Oct 2026 00:31:32 GMT  
		Size: 5.7 MB (5680343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:37c28ad2092a3386966d6d0880e72a4b6c6e8af64aa55360f9c25eb0ac116bba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **632.2 KB (632229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc7618433e8465fa28793a9f86b20e6195419d2f844cf27c05214fc161d284d3`

```dockerfile
```

-	Layers:
	-	`sha256:f77b2f6cbeb91170b29ab2971d28d028435ed7576e1c2ccfc72b733bae2413b3`  
		Last Modified: Thu, 22 Oct 2026 00:31:31 GMT  
		Size: 622.8 KB (622777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5589e7b368fb35b19b190c6eeedf5cc0bcd854d7d99b4f522a99644348192083`  
		Last Modified: Thu, 22 Oct 2026 00:31:31 GMT  
		Size: 9.5 KB (9452 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:57560af03a9a82a18c37d71d483419292d1d3abfaf3fd5b0470efdc5a77557e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26722404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a35b77b1b722575e6a441b7fe5d61b8bae3b1d649a41d90e34448f735cb62bd1`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:18 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 22:09:58 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 22:09:58 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 22:09:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 22:09:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:541523bae70c3c87e617205994d485e5de248b99777a05d2389c7db109fdc852`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 419.1 KB (419110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9625030534d1a3b72c2d657e8ed9482c1547ed87aa2ab33ca53b81d57246c601`  
		Last Modified: Thu, 01 Oct 2026 21:36:26 GMT  
		Size: 16.5 MB (16498458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6af1da8f48cad1a6394dd794801f8b21caa9c4160ca65d6c56df5d28a901ba`  
		Last Modified: Thu, 01 Oct 2026 21:36:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6cb678667ee0aa7565bc2bfebdb79e9203bb820737f9aa035a7d3dd86849540`  
		Last Modified: Thu, 01 Oct 2026 22:10:04 GMT  
		Size: 5.6 MB (5616929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:7f91403089f436613daaf7d3f4b44ec5e1e5e9c1892b6126c3f5c884377a2caa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.4 KB (636370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e9457c70723a47042cbff237879406304d8ceeb0f0678f7e49f932fb812c0b`

```dockerfile
```

-	Layers:
	-	`sha256:f39cd262543a50f9cd875a773ed7e0a52a0b2a3fdf4abb96fe0805c2964f7309`  
		Last Modified: Thu, 01 Oct 2026 22:10:04 GMT  
		Size: 624.3 KB (624318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5673f3281405bfa521fba67ce4f7a6dd7074d6c85f70401ca9d3db6be8efb6b`  
		Last Modified: Thu, 01 Oct 2026 22:10:04 GMT  
		Size: 12.1 KB (12052 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine` - linux; 386

```console
$ docker pull hylang@sha256:f2ae1d0c1890bf8ff3a32194378bdc9d115ebc921be8fd2af5f6b8bb9ceaf4a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23583518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6fdeb9c825036cc9a5e61cafeb59ee5d8d69c923721a926d227dc1e151d65b`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:21:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:21:13 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 23:21:13 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 23:21:13 GMT
ENV PYTHON_SHA256=e02d9ac21cebda6e46435369744a92c65cc7cd8669697694122cf97ffacd1e53
# Wed, 21 Oct 2026 23:24:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:24:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:24:05 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:22:17 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:22:17 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:22:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:22:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e255badc4c900f98e787b27f970d6ab3748ff48620081eb1e64db1c7de83b894`  
		Last Modified: Wed, 21 Oct 2026 23:24:11 GMT  
		Size: 412.8 KB (412802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1e6243c768eff159c05034c7db2ce940b43f636e48e829734f2fb9ee45e792`  
		Last Modified: Wed, 21 Oct 2026 23:24:11 GMT  
		Size: 13.8 MB (13811120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df13f9812452ce8cc3f2ef5b4df9a97b0a65d1ab21656ae0c3349d67faa30571`  
		Last Modified: Wed, 21 Oct 2026 23:24:11 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4b567e0e21921b08b6535bee884670c0d53c8ad84ea228ba0c85db74e667507`  
		Last Modified: Thu, 22 Oct 2026 00:22:23 GMT  
		Size: 5.7 MB (5680350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:37bea8a0823cda06ce3ddb610b4253ac2de25802898381791c3b8dcf5871d18a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.6 KB (629612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee28b13def725f8e10b0359a4aa41b5d37b989576940014c8974c364097e319b`

```dockerfile
```

-	Layers:
	-	`sha256:e83a90e4ccf9fb6a58a25d34eb3d2c0a6cac66993a9f9d61bcfeb12cb532a918`  
		Last Modified: Thu, 22 Oct 2026 00:22:23 GMT  
		Size: 620.3 KB (620324 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2b48cdd230b3087f046e0e3d156da767ea23e18ca6b8e95bb71f426a54541d2`  
		Last Modified: Thu, 22 Oct 2026 00:22:23 GMT  
		Size: 9.3 KB (9288 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:a8795a2b2168cfe9938854b4edf24a03e1d6cd2c659f08df03054c8971e18d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26703331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efa476297c3bbd5ab4aa600fa53829c5ce26d27cb9190d4b16ec7a79d757e29`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 22:46:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 22:46:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 22:46:54 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 22:46:54 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 22:50:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:50:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:50:57 GMT
CMD ["python3"]
# Fri, 02 Oct 2026 03:16:59 GMT
ENV HY_VERSION=1.3.1
# Fri, 02 Oct 2026 03:16:59 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 02 Oct 2026 03:16:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 02 Oct 2026 03:16:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c0d82cb49a6e98be9b2386af86988d7016f7feef52a57081fc28e490ef0496`  
		Last Modified: Thu, 01 Oct 2026 22:51:14 GMT  
		Size: 419.5 KB (419517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02652229bc9a6ddc5759426a566b64589ab420a854c5c65335e7a7aa92a45ed0`  
		Last Modified: Thu, 01 Oct 2026 22:51:15 GMT  
		Size: 16.8 MB (16848797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc571471264bc0f7d970f92215a31caa10c638abd8e5c1179d4187478115377`  
		Last Modified: Thu, 01 Oct 2026 22:51:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ec9a83d1a5ae0a9fae43f6f05a284a02d102ffa06bec8c62b7277aa826f01c`  
		Last Modified: Fri, 02 Oct 2026 03:17:28 GMT  
		Size: 5.6 MB (5617291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:b7720a04c818c6d8fb525a419a36a6969cd936af62cf2c72950a9bee4eeb633a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.1 KB (636143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1035466c1d81f88b2117139dc7c1ca0897cb352b7330628e1cd3ea34418c8a`

```dockerfile
```

-	Layers:
	-	`sha256:634e90654f5f28ba5921b47a0a5294af6356f2462900c4e7fa79e4590f948f97`  
		Last Modified: Fri, 02 Oct 2026 03:17:28 GMT  
		Size: 624.2 KB (624223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9120451ef4987cabb27ce34b43ab140782a8c40f79f21d6958b5caa8cb505a0a`  
		Last Modified: Fri, 02 Oct 2026 03:17:28 GMT  
		Size: 11.9 KB (11920 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:5583c4faf9be4789bb2a1e5d7a3f6cffbc76f0a329c5d2ce71d1a601982d953d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25518984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abafc2770d223e11d817eeca8c6b241c800eed8126733eb57ac4d56cf1a4fdc`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sun, 04 Oct 2026 00:51:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 04 Oct 2026 00:51:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Sun, 04 Oct 2026 00:51:09 GMT
ENV PYTHON_VERSION=3.14.8
# Sun, 04 Oct 2026 00:51:09 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Sun, 04 Oct 2026 01:35:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sun, 04 Oct 2026 01:35:09 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 04 Oct 2026 01:35:09 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 02:30:02 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 02:30:02 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 02:30:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 02:30:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ed96fffe6fbbf2a3b85a5196d329f06ddce61dd3f330e38cd3d9e0f59c61d`  
		Last Modified: Sun, 04 Oct 2026 01:36:08 GMT  
		Size: 416.8 KB (416756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6475349539d0609055e19d9a445643195aca67b7690e9d1e8e1e7c60093a870e`  
		Last Modified: Sun, 04 Oct 2026 01:36:11 GMT  
		Size: 15.9 MB (15909090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ff84ee34165cff558fd7ca36a26ced7461f42806add7257ccb9d2c7124413a`  
		Last Modified: Sun, 04 Oct 2026 01:36:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45ba9d8544677ac5af031b5c20e91c14fca47d08be3850441bf9b80446fa8717`  
		Last Modified: Mon, 05 Oct 2026 02:30:53 GMT  
		Size: 5.6 MB (5617519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:0633a94ad3e7d431a39fb4ba7d91cf4f0bc6f35f0493d26543800cb1c3b9dfc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.1 KB (636139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:115eb117e31097a10307c38da2103cfac7009cf20ce6aff6fcfb2bb272346237`

```dockerfile
```

-	Layers:
	-	`sha256:32857b8f103fd0197fc2ba2131322ae5513b91b61371381c8a01a667062c8939`  
		Last Modified: Mon, 05 Oct 2026 02:30:52 GMT  
		Size: 624.2 KB (624219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26d079001d45d34ee76f3b4cc4defbd7cef0291db92ffad47d37dd4180d2d13a`  
		Last Modified: Mon, 05 Oct 2026 02:30:51 GMT  
		Size: 11.9 KB (11920 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:ca4bde8416f6552ec4132a45f3a00ed914ee2443f3cd4aa4d651efc88ac39c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26111526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419405507c8fb48192da85c911b2aabf93896d254f375249355073afdfba8cc4`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:32:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:32:06 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:32:06 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:32:06 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:41 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 22:26:37 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 22:26:37 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 22:26:37 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 22:26:37 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74f3ef4f07aa58ff974297cf22bf3636c89d3ea5b723ee990e96be0b08d395f`  
		Last Modified: Thu, 01 Oct 2026 21:37:28 GMT  
		Size: 417.4 KB (417428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2be21020b93363f68701b1ef82cfc2fd9e957db389a1ae878e922b45c8c3c962`  
		Last Modified: Thu, 01 Oct 2026 21:37:30 GMT  
		Size: 16.4 MB (16361510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd46a6471fa4b69ae1b2919f3979de582643d7e8baa3081d9966e062a215d743`  
		Last Modified: Thu, 01 Oct 2026 21:37:28 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1088574cd295c14728539771d7de4931105bf72cc5e88863b6f0b64f2d82d1`  
		Last Modified: Thu, 01 Oct 2026 22:26:48 GMT  
		Size: 5.6 MB (5617000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:ba07755b39e5803dea9e8167b758668affcc89fb8e4987e3f76d62821bb6ea67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **635.9 KB (635920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921a9ddf875a95944beeb86750e9f9ef832e27a4c4599f50e3597ba71a5b1141`

```dockerfile
```

-	Layers:
	-	`sha256:0821bee4aac8210dd3feeeaf9bcaf4f0d9719827b256745b85e714c66891c32f`  
		Last Modified: Thu, 01 Oct 2026 22:26:48 GMT  
		Size: 624.1 KB (624117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c43ec411521bcbd8ed65cc6ec721656c5eb1bfddeda36a689273673194e6301`  
		Last Modified: Thu, 01 Oct 2026 22:26:48 GMT  
		Size: 11.8 KB (11803 bytes)  
		MIME: application/vnd.in-toto+json
