## `hylang:1-bookworm`

```console
$ docker pull hylang@sha256:7b60c7b4967fb5292fc8c11f10cd537f978b23b7809526ce67ad8b5512789412
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `hylang:1-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:17f33791fe7dbeeb52e77966036b2bc97585b826fbfd95ad0e677cfaeefb65e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52551473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20fb2b16466d7a7fd08bc6344a94b5f3991869ce9b36c4183dc906786d2d9793`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:52:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:52:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:52:57 GMT
ENV PYTHON_VERSION=3.14.8
# Tue, 06 Oct 2026 01:52:57 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Tue, 06 Oct 2026 02:04:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:04:46 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:04:46 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:51:11 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:51:11 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:51:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:51:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea95d2ab382ff97ec2d6ac25327d00c3f08fe2877dfa8ab6cb9cfb7e4245185a`  
		Last Modified: Tue, 06 Oct 2026 02:04:55 GMT  
		Size: 3.3 MB (3342320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:902d5fe0cd9225c8c113f6af022b926275f3c1851e7c81a0ab561f11580230eb`  
		Last Modified: Tue, 06 Oct 2026 02:04:55 GMT  
		Size: 15.3 MB (15342492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496c1a902b3a93cea3e54b90b79dbcaa0e58ad90c3fe9dd0a43c9557dc47f17d`  
		Last Modified: Tue, 06 Oct 2026 02:04:54 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb322d896bcd6ef730397fee44bd975643be0b8478f5452c37f1d9ef47168a9`  
		Last Modified: Tue, 06 Oct 2026 02:51:17 GMT  
		Size: 5.6 MB (5617088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:dca2db813df4aec6c607f620e34a39358500e8b7b5e646ecd360db5cea1d42f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f542d3eb962a334b4b9daca2b55810703ccbc7aa51b1908c2cfba3f52f57e369`

```dockerfile
```

-	Layers:
	-	`sha256:22bcbbf0503fd18de9af0745fa639bcf8a9e46e09b5903a078367df24881670a`  
		Last Modified: Tue, 06 Oct 2026 02:51:17 GMT  
		Size: 2.6 MB (2551524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4695ae3431d24f375e2318f8af8be08766b572c1306f73631a82134416f786f8`  
		Last Modified: Tue, 06 Oct 2026 02:51:17 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:12a49763cc7ac3e8d164671401c4ac59aa1df2891945a7b36684fc286c7bd5f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46590851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c5c23c56c6f0c0e15d1b94929b0b554c2a29addd4cafd8fc70b689e3523357`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:37:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:37:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:37:21 GMT
ENV PYTHON_VERSION=3.14.8
# Tue, 06 Oct 2026 02:37:21 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Tue, 06 Oct 2026 03:00:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 03:00:46 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 03:00:46 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:44:08 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:44:08 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:44:08 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:44:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2ef76fb83fa61b6ece2c4f3898ed22b8abe842b0aae3779a46fc61e8eb19ca`  
		Last Modified: Tue, 06 Oct 2026 03:00:54 GMT  
		Size: 2.7 MB (2748626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b168a7d4e9e025296f8475f55235f91fa2d42124b5b02d687954cf24ce176505`  
		Last Modified: Tue, 06 Oct 2026 03:00:55 GMT  
		Size: 14.3 MB (14268264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9127cb9441506744fbbf554aaefdce37c73cd8cea089eb4d08238556fbd7f61`  
		Last Modified: Tue, 06 Oct 2026 03:00:54 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba09b8714a2602f4d26d67f14a7168f8c43fd27d4fe03a5018ed63c6d1a9236a`  
		Last Modified: Tue, 06 Oct 2026 03:44:16 GMT  
		Size: 5.6 MB (5617140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:aa751537aabb0868cf5bf3ba7b253e8440e8f9051f7559a44446a727c73df6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6c968f206bae3a1a37c389301fba6f435c1381f3471f9e1995740d59a980d4e`

```dockerfile
```

-	Layers:
	-	`sha256:3b9e82d1348b937c404c3b83fb02406059e917a41ade483085d8d83acac8090c`  
		Last Modified: Tue, 06 Oct 2026 03:44:15 GMT  
		Size: 2.6 MB (2553801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4075c5f608db08c150c9bf0863d6085594cb2bd41bc6fe49728025245bdb1b6c`  
		Last Modified: Tue, 06 Oct 2026 03:44:15 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:7a4fe02dc7dc41b7449215399742cd036d272f450bf164378f192032f70a4fbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52119693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7073f575aa5efb1aead62db516a461052b9e0308d6e15fbb616da44ca96db094`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:56:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:56:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:56:19 GMT
ENV PYTHON_VERSION=3.14.8
# Tue, 06 Oct 2026 01:56:19 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Tue, 06 Oct 2026 02:11:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:11:09 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:11:09 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:44:20 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:44:20 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:44:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:44:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093e231a86444ece2b7bbd37df2ee3f7a633dc43c5caaf4d5e50b74bbdfaf6e6`  
		Last Modified: Tue, 06 Oct 2026 02:11:18 GMT  
		Size: 3.2 MB (3176254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9f43d87fa406625ad840e5bffdc442d18afa25386ab2ba2e3e6a05c26b7249`  
		Last Modified: Tue, 06 Oct 2026 02:11:18 GMT  
		Size: 15.2 MB (15188859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36edb990f42c36add8e6c09e11a151aa4af9804ef6fd3b04ac6edec98da8783d`  
		Last Modified: Tue, 06 Oct 2026 02:11:18 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a046d03ba94bf4ac8e2d5012507d591b2f53ab8deb388cfc5aa3b555fd9954`  
		Last Modified: Tue, 06 Oct 2026 02:44:27 GMT  
		Size: 5.6 MB (5617151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:ead2e992ff1771f86e96bbde836399ef84006cb601460b1fddfcf288777def07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbda21d2ed2c2c2ccad1feb3c78e7c860daa7d36b46ff9cfb54ec5b4be4c6bf0`

```dockerfile
```

-	Layers:
	-	`sha256:bc2bc3ce4977433993f26b335331223b9757d839b69c1887b7d8190db37abfca`  
		Last Modified: Tue, 06 Oct 2026 02:44:27 GMT  
		Size: 2.6 MB (2551837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:259105c443e4705aae9da42db8fd33246a84fb0b1c6d1be6c9597f85b54dd646`  
		Last Modified: Tue, 06 Oct 2026 02:44:27 GMT  
		Size: 9.4 KB (9411 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:c42ffe3f64ed2431e4a59c24380091eb71b9d83ac906858f001f4f31732166c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (53964815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a7b7adfff694b34fd507f135b178cfe9baacb15e7cb5861fd75c9da50cf8b9`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:54:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:54:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:54:16 GMT
ENV PYTHON_VERSION=3.14.8
# Tue, 06 Oct 2026 01:54:16 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Tue, 06 Oct 2026 02:05:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:05:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:05:39 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:48:43 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:48:43 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:48:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:48:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5624313f8b0a1b90d9e1e2f5c5d3f09f05def6e39ead0a5168c7e9419881bc98`  
		Last Modified: Tue, 06 Oct 2026 02:05:46 GMT  
		Size: 3.3 MB (3347976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a5dc20d0995220d37a5f3ff524fec362c41af409039c606b197ee5c89ed45d`  
		Last Modified: Tue, 06 Oct 2026 02:05:46 GMT  
		Size: 15.8 MB (15760067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0593b3718da11ef48f1fef8f4329e372b9d368ce3d0d6ed039912b5f9b246568`  
		Last Modified: Tue, 06 Oct 2026 02:05:46 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a811b869e12783e4a1cde33b8306828ed1bd29e99ee6765eda91199f478404c`  
		Last Modified: Tue, 06 Oct 2026 02:48:50 GMT  
		Size: 5.6 MB (5617149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:59930a9d837bf2d5171914814ce66140d9c1a7a2e2ae34f5227868df63be2cd8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2393ba03b312e4d26ccb4d93575916963b8448c8b1e256d2ed104f4c8d6586b6`

```dockerfile
```

-	Layers:
	-	`sha256:60480700880d7192c51b3666ace4dd7cfc155d4362c3bca23b0df0676d6695a5`  
		Last Modified: Tue, 06 Oct 2026 02:48:50 GMT  
		Size: 2.5 MB (2548671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c39210846bfcc31cd062ef0500f74fb1228f338ae8e51fed8d725aea55cc658`  
		Last Modified: Tue, 06 Oct 2026 02:48:50 GMT  
		Size: 9.2 KB (9206 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:a62cb5d2b4d14a64c845c5d1e5a5b8ad029834e36f0dd641b0f83e73595d8ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57332262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:575b041dc3aacc4b487a71b15886de7f09cbc055d60ce6a9d03482286bc0a5e8`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 06:18:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 06:18:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 06:18:22 GMT
ENV PYTHON_VERSION=3.14.8
# Tue, 06 Oct 2026 06:18:22 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Tue, 06 Oct 2026 07:46:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 07:46:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 07:46:53 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 14:03:41 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 14:03:41 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 14:03:41 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 14:03:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a19deda3e0c49cc35e8195b6688b1a62b510c2dab7d0b2326a9f189d635467`  
		Last Modified: Tue, 06 Oct 2026 07:02:29 GMT  
		Size: 3.5 MB (3548116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a245ee3edf370a614a6c7c7997b9ec970dccfc1f0490a7c4dc188ff5a35898e`  
		Last Modified: Tue, 06 Oct 2026 07:47:11 GMT  
		Size: 16.1 MB (16074152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b64d04fd5fcf733d32657ef9ad89f75cad2f36e014092a5ffdb4f0bd91f50f3`  
		Last Modified: Tue, 06 Oct 2026 07:47:07 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd9a17f288642e18dd77bd186d823476ff22bcfb57aeae83b8bdab116ffdd06`  
		Last Modified: Tue, 06 Oct 2026 14:03:58 GMT  
		Size: 5.6 MB (5617310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:6fac52ac111c262b9e84548383244ed2a20bb90f6db042180a0d27f9e6158512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2565312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:793e5220d782aa4002e906674a10c2e825f3e83429f16824a10c8878f9084d14`

```dockerfile
```

-	Layers:
	-	`sha256:aa2417854b85cd842b5780a891df653ea9313444dba52b1cef4eb52b023b89c9`  
		Last Modified: Tue, 06 Oct 2026 14:03:58 GMT  
		Size: 2.6 MB (2555986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af933fd80a362904800fa2e5a6fc1f7e8a7a88803da5b4b1a9895be248d66120`  
		Last Modified: Tue, 06 Oct 2026 14:03:58 GMT  
		Size: 9.3 KB (9326 bytes)  
		MIME: application/vnd.in-toto+json
