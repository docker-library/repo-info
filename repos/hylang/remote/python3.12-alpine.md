## `hylang:python3.12-alpine`

```console
$ docker pull hylang@sha256:86d7a4ab48f740d7d1e018a42c229c73a6c9d5be5b3bf38b96501fdf9cf4c587
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

### `hylang:python3.12-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:c2f6667c3fbda9f97986ba54b346b5e6a187b899209e6a3d104bc465088fe292
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25865782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3201f7f25cf14822fb1dbae5c42ecce176bd5edce0d19e395bf6d3d164c779c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:05:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:05:24 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 00:05:24 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:05:24 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 00:05:24 GMT
ENV PYTHON_VERSION=3.12.14
# Tue, 01 Sep 2026 00:05:24 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Tue, 01 Sep 2026 00:10:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:10:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:10:30 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 01:12:02 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 01:12:02 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 01:12:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 01:12:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47393b668ce535d06e8967917d424c177e2ecccae83856d48b2e99164f8cc6cb`  
		Last Modified: Tue, 01 Sep 2026 00:10:37 GMT  
		Size: 408.1 KB (408093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2014fd3d47b2c2dd4dedc765822ac60ae269f3efa0e614f46ae29f540c7f1235`  
		Last Modified: Tue, 01 Sep 2026 00:10:38 GMT  
		Size: 16.3 MB (16346740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed62c91ccd94e36a928e96d704cfcf20861302590245cc12aa89a15a5d6be29b`  
		Last Modified: Tue, 01 Sep 2026 00:10:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c41f42efc0e927e36c66601026bfcd8113ef6116bf13a1117123811ace5c7fc2`  
		Last Modified: Tue, 01 Sep 2026 01:12:08 GMT  
		Size: 5.3 MB (5264310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:33bcdd65e572ff35cfcf57cc61bfd0f97d7d0ea1422ac6d84a00b34f40defbd2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **645.3 KB (645349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5452e05edf82200f87a76729b31e34e253df91b9b550d619754490af13f54170`

```dockerfile
```

-	Layers:
	-	`sha256:d229d7998ed8317c8a9afb98dae2ce9a5c02711bd3ea66ed30a675085912a12a`  
		Last Modified: Tue, 01 Sep 2026 01:12:08 GMT  
		Size: 635.9 KB (635942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42a772ec8e3c97a68c7bf0cd131757ec78a9dbbca34ce2b7cc45e39b7897d5f5`  
		Last Modified: Tue, 01 Sep 2026 01:12:08 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:c76d0e2faad3ada3502ba3d9dba9baafcd09e08bb7fcac4ba7c031a72f3290cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24770823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48d1faf3303333b1878bb1a6a12d8bbd9d090ab01b117e13a0243774f21a84e`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:39:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:39:49 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 23:39:49 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:39:49 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:39:49 GMT
ENV PYTHON_VERSION=3.12.14
# Mon, 31 Aug 2026 23:39:49 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Mon, 31 Aug 2026 23:46:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:46:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:46:30 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:18:27 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:18:27 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:18:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:18:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c045f88cbd6caeada039e6efce4ae8537b178d58e12de136058ecb21d1316d`  
		Last Modified: Mon, 31 Aug 2026 23:46:36 GMT  
		Size: 409.9 KB (409947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6fc3fc6abfb96b9d4e20ab3367e22be9e2e42f1396040898a7312aa26df89e`  
		Last Modified: Mon, 31 Aug 2026 23:46:36 GMT  
		Size: 15.5 MB (15542935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcce809186a2cb56b50d317e259fb3bc89fa2fe6c1fa3b7ae8ed303add19964d`  
		Last Modified: Mon, 31 Aug 2026 23:46:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:862fefc3bcb7e31407847947c2baf456f92c578f08cff44cb16b6e22d6b4e7c2`  
		Last Modified: Tue, 01 Sep 2026 00:18:32 GMT  
		Size: 5.3 MB (5264244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:c6d354d1d3e92c7b463c80f2d4d489d6766adeb6f9361a2232701265a5b6246d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8876d20013c898e4ff7b3051ed1d59ef831bb1e0330c5df8c00b9181844ca24`

```dockerfile
```

-	Layers:
	-	`sha256:de1ef231cb7c32a8e8f934a9dff4048d479e72cd05ffa9a0c128ca58b1eadf9f`  
		Last Modified: Tue, 01 Sep 2026 00:18:31 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:e745e313b00852d2e67ef69bcb71b71685f69b9b17ad007bf96e33ccac5eecf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23910110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7cd02e52ef70216d808276b2dfbfef050d2e29c751fb4e503962983e96ac75`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:59:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:59:19 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 23:59:19 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:59:19 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:59:19 GMT
ENV PYTHON_VERSION=3.12.14
# Mon, 31 Aug 2026 23:59:19 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Tue, 01 Sep 2026 00:06:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:06:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:06:27 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:23:39 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:23:39 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:23:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:23:39 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17bb64344ec090cf489d2da6151aede24814f40a75ba177fd73a1740daa9bc2`  
		Last Modified: Tue, 01 Sep 2026 00:06:33 GMT  
		Size: 408.5 KB (408539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f190b1e799325d820d2f422190f15e01df34c8d5c75f6fcc0db13a3f81be00ae`  
		Last Modified: Tue, 01 Sep 2026 00:06:34 GMT  
		Size: 15.0 MB (14976479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:326d56e3a7b732dd6d5527cdddf1e531a564eda167a9fa16b9ae0aecd1890ecf`  
		Last Modified: Tue, 01 Sep 2026 00:06:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f70b2c61d0607b86c6bc0a44b25ebc9146e815b348cd9a660d69f1af860290b`  
		Last Modified: Tue, 01 Sep 2026 00:23:45 GMT  
		Size: 5.3 MB (5264228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:2daeda7cfce1cb9107cb6e3cff19d949636ab9bdd50cb3a9c8af0bf3f28fbd81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.9 KB (647869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c31e7cd7a0a4291cfc9e402cb2116f72303e61630f0eccc567badfa982754e17`

```dockerfile
```

-	Layers:
	-	`sha256:3f39969e986869d62a6c8d6204b3e35e6c82b70f0b75ee08b21d92162de314f6`  
		Last Modified: Tue, 01 Sep 2026 00:23:44 GMT  
		Size: 638.4 KB (638350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13478c790b1de6bd093c1c1d4642666f03c2ba095d9e3fb28feffc0622280930`  
		Last Modified: Tue, 01 Sep 2026 00:23:44 GMT  
		Size: 9.5 KB (9519 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c1b12b9f94458bef7b24fb03e72f87c883675a61e48411bd47b3ad2b39aae328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26643360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b56dc5712be777f19b13ed6d46459fb4002da872812908a01eddb1945d5d76fc`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:43:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:43:33 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 23:43:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:43:33 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:43:33 GMT
ENV PYTHON_VERSION=3.12.14
# Mon, 31 Aug 2026 23:43:33 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Mon, 31 Aug 2026 23:50:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:50:14 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:50:14 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:13:06 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:13:06 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:13:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:13:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a485d5dac595f5e3632bb25f74ea1087ca1954f4862db495d74c8b906cb7a8b`  
		Last Modified: Mon, 31 Aug 2026 23:50:21 GMT  
		Size: 411.7 KB (411714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679686af9d4108111544248cbadfb1658fda03720f174367af0cc9b5ca154760`  
		Last Modified: Mon, 31 Aug 2026 23:50:22 GMT  
		Size: 16.8 MB (16784165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc05c92714f288debe886b63e530e4f636eaa3474754f69aacff147794e0b97a`  
		Last Modified: Mon, 31 Aug 2026 23:50:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd385184f25c7ba2c5e95336b123d88ceb0c28d942018546b8cb493b9441de8f`  
		Last Modified: Tue, 01 Sep 2026 00:13:12 GMT  
		Size: 5.3 MB (5264197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:b3d462a63df6e411b5bdb04ea9f9eb3f6e0ac946456622193f6471766b9698fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **645.0 KB (644954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7897daa3beac0848d9e7ed6b37ddbebf467a19bd31c297fe68cbe4b39b002ab0`

```dockerfile
```

-	Layers:
	-	`sha256:2e3953ab8343f722fea2bf6fefd320b542109d4982888a75f29d10b614883301`  
		Last Modified: Tue, 01 Sep 2026 00:13:12 GMT  
		Size: 635.4 KB (635396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aec86a242fd770ac58150bdd83aed02ab780fbfd384a1809c91afc7e62590b0c`  
		Last Modified: Tue, 01 Sep 2026 00:13:12 GMT  
		Size: 9.6 KB (9558 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; 386

```console
$ docker pull hylang@sha256:f813cf469181555f58dc259019e13f3ddfe185f3c498601e2739903b136a3905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25707933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e7d5bba6e46599c2e962ad3ab5f331b045e93e83f0ae350b0d808de1668cf92`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:42:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:42:37 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 23:42:37 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:42:37 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:42:37 GMT
ENV PYTHON_VERSION=3.12.14
# Mon, 31 Aug 2026 23:42:37 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Mon, 31 Aug 2026 23:47:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:47:46 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:47:46 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:15:17 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:15:17 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:15:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:15:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08eafafa6963a73057550fff4393c0122dd96dba40735fba27ea6e5f60b6e57e`  
		Last Modified: Mon, 31 Aug 2026 23:47:53 GMT  
		Size: 408.9 KB (408858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:831687d4220ababdafc8d3447cab59b6e116cf163b3ad2e483673b61bff24939`  
		Last Modified: Mon, 31 Aug 2026 23:47:53 GMT  
		Size: 16.4 MB (16364487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf770dc7cb5b9d22ab9e4cc22d5a6a8393c205801340dba36766cefa6a30456`  
		Last Modified: Mon, 31 Aug 2026 23:47:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c47bf9d82776ee0bc6921a217ea910eb70eb352e025c96f1fb63206d83c0ffe`  
		Last Modified: Tue, 01 Sep 2026 00:15:23 GMT  
		Size: 5.3 MB (5264199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:ea5899dd0a8865a60d0ca10dd9feffb66020b3f25812f9221dc37cac69e37c89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **645.3 KB (645252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a839df4fc060583c49a8ee65b0f2c4c4a5d907121188045b0a472886c35a2d5a`

```dockerfile
```

-	Layers:
	-	`sha256:78db1698c282aead5025c0980ef2a7461064142c76f5d8173c665e69f361093d`  
		Last Modified: Tue, 01 Sep 2026 00:15:22 GMT  
		Size: 635.9 KB (635897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d260d068694a263a186282cbd9caa7863cc55a6581c5a2169bae434a3b576d5`  
		Last Modified: Tue, 01 Sep 2026 00:15:22 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:c16e925c1d855f9610eedb600dcfa14e827d4ce7b683d19c65f0d0e87e9041f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26563588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990646c7a531203b276ce035da59b78614ac9f1b6b4162f2e8b584ba869a7e29`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 02:17:41 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 02:17:41 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 02:17:41 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PYTHON_VERSION=3.12.14
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Tue, 01 Sep 2026 02:27:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 02:27:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 02:27:54 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 04:14:34 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 04:14:34 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 04:14:34 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 04:14:34 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d210b05295b23111ad9ac4c37543979cb7952539eaddcd7e73cc1dec195411ed`  
		Last Modified: Tue, 01 Sep 2026 02:28:05 GMT  
		Size: 412.3 KB (412285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:101a14301cb034454932027b5ec925cb3934e85f5eed994d53b709f78d7090e0`  
		Last Modified: Tue, 01 Sep 2026 02:28:06 GMT  
		Size: 17.1 MB (17073395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9d9eaf8cdd50f822c54d3dc1ebadae33105398b5581ab79425c3f08f29d0e5`  
		Last Modified: Tue, 01 Sep 2026 02:28:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cc03ad0518ffad166666f658f8e24795c75d465d4dfa3c89800106cc81857c`  
		Last Modified: Tue, 01 Sep 2026 04:14:44 GMT  
		Size: 5.3 MB (5264260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:d8f92380618b157df4c4bfb5107bb2df2c2425494ab4a7494691d75ed161b697
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 KB (644824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43760eaf2da920f90c0ac8481cab5262b240a324be28190312f2745df2756363`

```dockerfile
```

-	Layers:
	-	`sha256:3fc99435b4f75fc4bdf1ab97ca374f31a649bcfbcfa4ed7db8f601c6fba9fb5d`  
		Last Modified: Tue, 01 Sep 2026 04:14:44 GMT  
		Size: 635.3 KB (635349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aecab7183e2a3546f41b32f7365d2302ec1396f6423a77896f0a967ff5175adc`  
		Last Modified: Tue, 01 Sep 2026 04:14:43 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:67650a3e8e5207ec415f0fff20faefbb71739ddc3f0fa564093275a659a64125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25272000 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c781e145578320718a34e1a99a847d0635a7b73026f54d4b9b32d5fd8f5ca0b`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 02:10:17 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 02:10:17 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 02 Sep 2026 02:10:17 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PYTHON_VERSION=3.12.14
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Wed, 02 Sep 2026 02:44:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 02 Sep 2026 02:44:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 02 Sep 2026 02:44:34 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:40:51 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:40:51 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:40:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:40:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914bf5a089621f8461f56dd92da4a1b1112c22e5f67444d0523cf7db398b8407`  
		Last Modified: Wed, 02 Sep 2026 02:45:23 GMT  
		Size: 408.6 KB (408648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59d89cc692d934f044a29e1d29ed2a962e610aed2e93bcd06540c69fa2bcbb9`  
		Last Modified: Wed, 02 Sep 2026 02:45:25 GMT  
		Size: 16.0 MB (16023394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003d7dac5554ef22d2bcdeabc46828277c5bd6f31351ceacd834757b2a9dd56c`  
		Last Modified: Wed, 02 Sep 2026 02:45:23 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9db6de42dce7ad2c053167e36cdbe1b4e1b1846f5e27aeef0d49242d20f41f9`  
		Last Modified: Thu, 03 Sep 2026 04:41:30 GMT  
		Size: 5.3 MB (5265349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:25553759e22cab6ff098d5329ab09d4aa21460f4e57fb5211c82faeb2c8ffebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 KB (644819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4531667978ff05668d6567fa7a2953d61ad12137f88ba3133cfb8fdcffd1506e`

```dockerfile
```

-	Layers:
	-	`sha256:269d1b919b839093600e054a519bfd73a6e384ccec65d15c3b7be2c0065a6d2c`  
		Last Modified: Thu, 03 Sep 2026 04:41:29 GMT  
		Size: 635.3 KB (635345 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60685e83497fca52f4c48286669b249f6abe65f3b2e912fa426035ad2d517d60`  
		Last Modified: Thu, 03 Sep 2026 04:41:29 GMT  
		Size: 9.5 KB (9474 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:e29e3f2b4a582ffb80df41646bf5fc113ea6d54bb93029bf6baefe21cfe6ee75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26030354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e274ebb9759101b8ec515e9cab82113f28785bd7fdee3e62afae5d65ea6d40`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:02:04 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 00:02:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:02:04 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PYTHON_VERSION=3.12.14
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Tue, 01 Sep 2026 00:10:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:10:14 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:10:14 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 01:24:05 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 01:24:05 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 01:24:05 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 01:24:05 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2b70cacdcf2536a432722326a83028457208f6d13529c1243a87f3f1fcf1b4`  
		Last Modified: Tue, 01 Sep 2026 00:10:29 GMT  
		Size: 409.5 KB (409498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a064a5400d1a04c8e231cb91bea4a4856d20251d92ba6e0d3112e2698bd5345`  
		Last Modified: Tue, 01 Sep 2026 00:10:30 GMT  
		Size: 16.6 MB (16647006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825f22e7f42ff24cac68119d4748ee99ecbcc8f9b1855b75dd797aae0a60b450`  
		Last Modified: Tue, 01 Sep 2026 00:10:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1fa87b9e5793de6f2155f473645b7b823d300e781065e0f5761aa4cb77733d`  
		Last Modified: Tue, 01 Sep 2026 01:24:16 GMT  
		Size: 5.3 MB (5264281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:df36b1ece1c27fe129506023f0b45916dac0bad2f9c1fb58ff15a35d7a4ed1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.7 KB (644698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88748a32c9280f4ea4f18722dfff05909dd8c544b5866043ca6774441349ed5`

```dockerfile
```

-	Layers:
	-	`sha256:0e7c8d164016780fb361321c9722a49f9409c1fc3c3c951bfa92733426d867ad`  
		Last Modified: Tue, 01 Sep 2026 01:24:16 GMT  
		Size: 635.3 KB (635291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e93fd20f0b0901f4c451cd5fccd5c1878a0b9a2aaef77066a6e9851c1c013dee`  
		Last Modified: Tue, 01 Sep 2026 01:24:16 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json
