## `hylang:1-python3.12-alpine3.23`

```console
$ docker pull hylang@sha256:e68bca961cc1498ba1dd57e730bf654b7b9af64b4ecf8c1711073bf7c59761b1
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

### `hylang:1-python3.12-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:76be03fc7c7fc2863d5511533f83c6ccb8122e26e113a9cfe0fd4ee523490e4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23298147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a20acd4e48bf0bf53306f0f86814254d4074bcd4e4fdd5326aa9e673fff97b`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:47:52 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:47:52 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:47:52 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:47:52 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 17 Sep 2026 21:47:52 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 17 Sep 2026 21:53:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:53:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:53:13 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:47 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:47 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a53f349d365faaf2e750526440992e7a70f11f358f0e1a7f7dd5027a80c2cbb9`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 416.3 KB (416265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f543027e66d335b41e161e2d4519190dfa012e8bdb8b81f8b452b56054fad9`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 13.8 MB (13768923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae57ab79c4d38dd2a7b10534b92845d3238fe4941cde72659ee462e127415c3`  
		Last Modified: Thu, 17 Sep 2026 21:53:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02eddab372337f7c2741a4bd162c737850cc8762a8e6332a05927bfb4f8ca1c4`  
		Last Modified: Thu, 17 Sep 2026 22:35:52 GMT  
		Size: 5.3 MB (5264204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:9dd90e179da1c8908ba87386ae4828278825b2e5c72bd86b74c34c9e5f75874e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.2 KB (644168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2b535f0fa56dd649fa112f8a18758677875f7d34aa03ea377a4a10315b36a6`

```dockerfile
```

-	Layers:
	-	`sha256:ec0cba4644b1a225c90e667f5c68fd7f594f1ec06a0f07478916ef098b177dc0`  
		Last Modified: Thu, 17 Sep 2026 22:35:52 GMT  
		Size: 636.1 KB (636065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6463dfa336bf4ba68727fb8feb5cbef28a3148d2b7e5a9e9b83884bf9938d85a`  
		Last Modified: Thu, 17 Sep 2026 22:35:52 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:2b6da631d46c3bbcdea4e2ea5f3040f07f9982c8f3753d72cc9b9d64a670672d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22565219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7d4ec3ef0039dd3dd4c5f34130871fa42128917886cbcbe01a19d07135c9de1`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:01:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:01:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:01:06 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:01:06 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 22:01:06 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 17 Sep 2026 22:01:06 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 17 Sep 2026 22:08:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:08:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:08:13 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:49:35 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:49:35 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:49:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:49:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d5768eab233a3701a70aad361b684a0f961dd778875ead3820dbe14ce79c0a`  
		Last Modified: Thu, 17 Sep 2026 22:08:17 GMT  
		Size: 417.5 KB (417490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40018b357d6f96782e447262abd79ceccf72c65e216c92d4e0fd84916887b6ff`  
		Last Modified: Thu, 17 Sep 2026 22:08:18 GMT  
		Size: 13.3 MB (13328278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6ba5c988776380bd0e0e4f7b12812562d01728392ef1a76796db3bf62be31b4`  
		Last Modified: Thu, 17 Sep 2026 22:08:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed55dbe3f408f2d72d2a1b26949d22c213b2d978c90cdcd8ab7afd76309e737f`  
		Last Modified: Thu, 17 Sep 2026 22:49:39 GMT  
		Size: 5.3 MB (5264277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:956c495c436c92d4d1a0ac92235dc952368f7a3ce3517eeef492283975ed0d11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe57710d1a939950c4ae4859a906e27759a9005c52756ec61d98ec20050c1f3b`

```dockerfile
```

-	Layers:
	-	`sha256:5aeacc0db9ca1e51fb2de3caca4a08b44e712e113896c01682db98926959b27a`  
		Last Modified: Thu, 17 Sep 2026 22:49:39 GMT  
		Size: 8.0 KB (7968 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:2c61dc0d47c29aa16594c55f76dc4fa2c1872564e0affbcf5e1bc290e8808c44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21871910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55bf07f1bcab464c86f5540f7cc371977b4cfeab2e7337863c3a685c3950a2ad`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:07:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:07:24 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:07:24 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:07:24 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 22:07:24 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 17 Sep 2026 22:07:24 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 17 Sep 2026 22:14:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:14:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:14:29 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:53:14 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:53:14 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:53:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:53:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73abefb6aa3ca1b09fb1f11e622e21eac261f6488da7f038f814455820846d67`  
		Last Modified: Thu, 17 Sep 2026 22:14:35 GMT  
		Size: 416.4 KB (416412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00003302ee144b60835c9ec9598684b1a579c1b6bd064b218e24919a0427d655`  
		Last Modified: Thu, 17 Sep 2026 22:14:35 GMT  
		Size: 12.9 MB (12928145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fec80a90163aaab23f68a0f336347ac8ac8334463773c916de2815a5a71ed7c`  
		Last Modified: Thu, 17 Sep 2026 22:14:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7e4546045fa111c856a148845b0c6d90a10ff3952863c637444c66e4376e68`  
		Last Modified: Thu, 17 Sep 2026 22:53:20 GMT  
		Size: 5.3 MB (5264191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:705c35928491c32688e6dffd25c7b819fc6b1b2f06b5e762e4f6253b6f6307ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.6 KB (646624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a37d8a7a1b69b55bb751122ab60c262a23953434cc6d33a93d8c0a5b57f6829`

```dockerfile
```

-	Layers:
	-	`sha256:260f08b0eb759659e0b948b9d4494f74ed5bda83a710b09a44437f5cbdcdf665`  
		Last Modified: Thu, 17 Sep 2026 22:53:20 GMT  
		Size: 638.4 KB (638441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:39bc7b6fea5b883b6ab6b914c733c6cca7aa04e4c4755fe3d4367116bd916058`  
		Last Modified: Thu, 17 Sep 2026 22:53:19 GMT  
		Size: 8.2 KB (8183 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:d9b47485fca38be08cb5882f7a7b671396249beddf78759895132a3b58ee0b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23781111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce05fb1f0f1fec9196e775cd85996b3c1ff93e670776943782bea6832147894d`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:53:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:53:18 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:53:18 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:53:18 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:53:18 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 17 Sep 2026 21:53:18 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 17 Sep 2026 22:00:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:00:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:00:13 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 23:00:01 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 23:00:01 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 23:00:01 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 23:00:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6085c255d6c4eb5cffb70484921227e0e76415dde3acff000fb49f27b64e4769`  
		Last Modified: Thu, 17 Sep 2026 22:00:20 GMT  
		Size: 419.1 KB (419118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5aebddda34b5bb912e061ab8892d394776728f91b42b73f473d0acc1dd5b4cf`  
		Last Modified: Thu, 17 Sep 2026 22:00:21 GMT  
		Size: 13.9 MB (13911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c6362b2f8cfd516a48c56c83c4f66f805d50fe5f2267788ba83c6f35a96be1`  
		Last Modified: Thu, 17 Sep 2026 22:00:20 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:669a4d5a9cee10a605dd9c9e713e354decbb50d4025130ac34e86e9d06271701`  
		Last Modified: Thu, 17 Sep 2026 23:00:08 GMT  
		Size: 5.3 MB (5264251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:180fe11432d384c91fa5cf96f41d7e9a5a8e8832b0c1db433907d2ff6ce44b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.7 KB (643678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc59ec3fd876abcf874c237c68615c03946d22e10d7011eeb1f3ed261d588a1`

```dockerfile
```

-	Layers:
	-	`sha256:36e13538b6a88151db22eeeab70df88d264607cbf33e46af0dcbf993841e2b89`  
		Last Modified: Thu, 17 Sep 2026 23:00:09 GMT  
		Size: 635.5 KB (635471 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3168e5eb6b68626a38a19ea6451fc655ff168e2e92395a020158e1ad411b1312`  
		Last Modified: Thu, 17 Sep 2026 23:00:09 GMT  
		Size: 8.2 KB (8207 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:21aa917c453af0e973f184ecf5a037786dd5920750c77f1ab68d793a80c2be98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25705611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f9c3b62dec677193bda04a4fc99e447814d5931527095c65a2041bb0bfd4776`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:43:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:43:18 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 23:43:18 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:43:18 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:43:18 GMT
ENV PYTHON_VERSION=3.12.14
# Mon, 31 Aug 2026 23:43:18 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Mon, 31 Aug 2026 23:48:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:48:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:48:53 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:15:20 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:15:20 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:15:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:15:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81180c210f111b47bd56498b31c096b4a21043125e9d0ca369cf0f7d4f012394`  
		Last Modified: Mon, 31 Aug 2026 23:49:00 GMT  
		Size: 408.9 KB (408869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8164d8a464833d5ef775cf4096f1aa8fbeeef8b4210e760294fd3c74ff060981`  
		Last Modified: Mon, 31 Aug 2026 23:49:00 GMT  
		Size: 16.4 MB (16364364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53ad651e0df1620e0c297cba350ac7146332b8a13d99c7045d4b255495f70f6`  
		Last Modified: Mon, 31 Aug 2026 23:49:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f51cecd3a7f89bdf7705dd78f7f1c791a6b3fd552d0641bacaa7e1f447b4aca`  
		Last Modified: Tue, 01 Sep 2026 00:15:26 GMT  
		Size: 5.3 MB (5264141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:f07f417c233ce61b548f1bed9077edb7a42722163172b4ecc061a34a1fe53651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.8 KB (642818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:458db486709a6af2f80eb634ac7a63cf0eed4d4a4e899ebfac43ffa4f9b39064`

```dockerfile
```

-	Layers:
	-	`sha256:e52a85c7c92599d5d539e58404cc22bb23f5c762ff92f4356c74d232a0c6babf`  
		Last Modified: Tue, 01 Sep 2026 00:15:26 GMT  
		Size: 634.7 KB (634747 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bbf766ce4fb55941e4fff3bff025aebb906330410add8c7e30531e100ddb6b43`  
		Last Modified: Tue, 01 Sep 2026 00:15:26 GMT  
		Size: 8.1 KB (8071 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:c61e65c159a5e2bc730f83137fb2f866c2adfcd055d68a712531860bb2f7bca2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26562273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ea3e9bc2a8df79467dfc5756d65e2b705f5408bd1cb3b3e9a418120bddc10f`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 02:20:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 02:20:09 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 02:20:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 02:20:09 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 02:20:09 GMT
ENV PYTHON_VERSION=3.12.14
# Tue, 01 Sep 2026 02:20:09 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Tue, 01 Sep 2026 02:30:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 02:30:22 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 02:30:22 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 04:15:28 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 04:15:28 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 04:15:28 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 04:15:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca153123937d3922cd457087616d1736cb370ccfbe56f0a32e6487eae0fb140`  
		Last Modified: Tue, 01 Sep 2026 02:30:34 GMT  
		Size: 412.3 KB (412291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b26c0f940d0a35c5d76d2e9315b0e67aea4097bc4b7038496592e1881f9fb3a4`  
		Last Modified: Tue, 01 Sep 2026 02:30:35 GMT  
		Size: 17.1 MB (17073116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866aa7f9a4436e5912ceceda5c4dbc90a6a3ae33b178a664b57cbbb4f9fe08b0`  
		Last Modified: Tue, 01 Sep 2026 02:30:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:363b521ebd3b3df452c714bde89808ff40d26caf5155da8ba8e5491d94a544b8`  
		Last Modified: Tue, 01 Sep 2026 04:15:41 GMT  
		Size: 5.3 MB (5264318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:d4fe7e4c02eb7ac3f840330487c059dc6f8802c80810515b3724f0a374d2b691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.3 KB (642302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15dbfd71dd4c9afd663022cfcc446d89926dd18780bb6027ec50508399a43fa2`

```dockerfile
```

-	Layers:
	-	`sha256:1d7195deff4930e9608f34961647e0d8657f7140cf9ffac89d0a495133d61aea`  
		Last Modified: Tue, 01 Sep 2026 04:15:40 GMT  
		Size: 634.2 KB (634155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:550d6178833a8bdc661d597706f12584714be6bb2f7844e698897ed604e5f38c`  
		Last Modified: Tue, 01 Sep 2026 04:15:40 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:2379c27a9237d7ebf4e4d9d2fea42fecd6a01f022bc164d9ac0b91aa00f9f170
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25269871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12604582de2f91824cdfbd5ff1f8d3db0026ef5bb4512c183074909840ab25d8`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 02:45:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 02:45:56 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 02:45:56 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 02 Sep 2026 02:45:56 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 02 Sep 2026 02:45:56 GMT
ENV PYTHON_VERSION=3.12.14
# Wed, 02 Sep 2026 02:45:56 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Wed, 02 Sep 2026 03:20:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 02 Sep 2026 03:20:11 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 02 Sep 2026 03:20:11 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:44:58 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:44:58 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:44:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:44:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4be85da6313d2bdac799b6426bf956cf219974dada1f7c0491cd722993f19a6`  
		Last Modified: Wed, 02 Sep 2026 03:21:00 GMT  
		Size: 408.6 KB (408642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6da154bcf85808080de106790775f1af06e7612c103b0fa1dbd2b4f4d7eedeef`  
		Last Modified: Wed, 02 Sep 2026 03:21:02 GMT  
		Size: 16.0 MB (16022343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a8ec1d28f62703dedfa2c872e94debde38f1a24252f0990dddd6f45e2b9cf9`  
		Last Modified: Wed, 02 Sep 2026 03:21:00 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdc3994a50b4658fbedc5ef4b215add571d931a1515e4aa75a71eb496c198e5`  
		Last Modified: Thu, 03 Sep 2026 04:45:38 GMT  
		Size: 5.3 MB (5265396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:32858b6fa685ebbdaa8bf72edc5b77182b86cf871e6d4cfc30139abeb695a7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.3 KB (642298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa7b03bb24edf337636f4e06a704080621e20fb0e089ad9bae031a1c0bf7da92`

```dockerfile
```

-	Layers:
	-	`sha256:c778ee8e4f175b8da8e0b2445daa2b109a91ba2b41c3580533b7b5b874306bd6`  
		Last Modified: Thu, 03 Sep 2026 04:45:37 GMT  
		Size: 634.2 KB (634151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6178e65900a2ac920d2e27398c8e937c8b78ca527841e2eebaec9e934c69ef4`  
		Last Modified: Thu, 03 Sep 2026 04:45:37 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:a102dc6580113e99d84587a938414ba26e6514286c4459e5522c58237b477eb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26028829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9751ba3de5e9f91a72b3139b60b581d5a1cf14bf31c5011fa1c915fedc25c5b3`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:03:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:03:25 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 00:03:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:03:25 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 00:03:25 GMT
ENV PYTHON_VERSION=3.12.14
# Tue, 01 Sep 2026 00:03:25 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Tue, 01 Sep 2026 00:12:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:12:01 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:12:01 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 01:24:06 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 01:24:06 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 01:24:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 01:24:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8137a6bd09951f730de76cfe7927eb7f3ebc3d99a3bfbd8d475b309a857d4577`  
		Last Modified: Tue, 01 Sep 2026 00:12:18 GMT  
		Size: 409.6 KB (409550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4ffbf6141e73a7888c01cadd6028c4aa50627456d968751645d05cc00da2c8`  
		Last Modified: Tue, 01 Sep 2026 00:12:19 GMT  
		Size: 16.6 MB (16647557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8254b37c5bc032e4055ef4d5ab22e6f4134147ee25db14b717d69891be88f81f`  
		Last Modified: Tue, 01 Sep 2026 00:12:18 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609d26ce32a57f8c943ebd8f6bbb3c96948afe2227b1660dfbaefaf7b5a91ff0`  
		Last Modified: Tue, 01 Sep 2026 01:24:16 GMT  
		Size: 5.3 MB (5264226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:39944a353f8b74da26811219f76c861621d4264097d6f6b701e88ee0e4e2e04a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.2 KB (642224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04fe9b2ec159897859ca19516298abefe4449de150ca6ad7be7f2e51176c5b06`

```dockerfile
```

-	Layers:
	-	`sha256:387c67d920e0572f04b74047353bb01eef2229b62bdad0c5392092b88fe84a2d`  
		Last Modified: Tue, 01 Sep 2026 01:24:16 GMT  
		Size: 634.1 KB (634121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80eaf4dc499ec73614c5fb8ece004c4cb90a023c70102954fd6f2d20b76f451f`  
		Last Modified: Tue, 01 Sep 2026 01:24:15 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json
