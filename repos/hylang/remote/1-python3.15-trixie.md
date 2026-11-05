## `hylang:1-python3.15-trixie`

```console
$ docker pull hylang@sha256:4538932fca6497e49bd46492723cd92e2268d9c771e53a88c478adb3a55863c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `hylang:1-python3.15-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:79d3905b1c68b74a440083169c278ace83c63a27a5dfa19a8b79289c20ffc98a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50025021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0266dd994a7cac41d98916576777ed48b511cc0b6be9e1d2c969d80a0e6a6980`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:50:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:50:21 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:50:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:50:21 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 07:50:21 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 07:57:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:57:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:57:06 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:49:42 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:49:42 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:49:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:49:42 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:490d435ea3632a742a946aeca973fe266efc4478e415ba8ce4f47b7f33844ebe`  
		Last Modified: Thu, 05 Nov 2026 07:57:14 GMT  
		Size: 1.3 MB (1289826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba56bf6127ad2b67230d545572f827a2f23ad144cf9956ff1358115f2c2b74f5`  
		Last Modified: Thu, 05 Nov 2026 07:57:14 GMT  
		Size: 13.2 MB (13155201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01b8d07ba2aedfee532b6ef060890497b36bfbf331936d61b1ec8daca364716`  
		Last Modified: Thu, 05 Nov 2026 07:57:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a4b991d92f5b5d7475a760c6164ffa0fcc34766e75b67c5f1b767e1b5e509ab`  
		Last Modified: Thu, 05 Nov 2026 08:49:48 GMT  
		Size: 5.7 MB (5723613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:0c2cb5de928ae5fb1a46bd8b73de1ae2347c2a78bfce95b1f4525fee7d43eb4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2192895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e27289f3e84d7198e3e1155186dc5fd0dff5f69e7abe73bea00884dc68b19fa5`

```dockerfile
```

-	Layers:
	-	`sha256:d999d211285287a174bd937a8b9a9bbf493f5d63d7d520128dbafe6605baa986`  
		Last Modified: Thu, 05 Nov 2026 08:49:48 GMT  
		Size: 2.2 MB (2181237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ae13cb22d0589d902822e146b9a27e11a5df0dbb9bccfdaa7ba79e0a5e73357`  
		Last Modified: Thu, 05 Nov 2026 08:49:48 GMT  
		Size: 11.7 KB (11658 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:eda84bec79f5a2c91049cb6270bc445658543be579ca2dab029c2a93c0d4c390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47835789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8231664e1b922496c1149089e0984620a0015e6756fa89927a3d114abb8159`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:52:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:52:34 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:52:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:52:34 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 07:52:34 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 08:02:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:02:46 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:02:46 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 09:21:12 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 09:21:12 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 09:21:12 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 09:21:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a59360210a963ad1539485e9a4d8862c280ab3924404059d5bf3ab0d632fb2`  
		Last Modified: Thu, 05 Nov 2026 08:02:53 GMT  
		Size: 1.3 MB (1273026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ea3d9ec07875f754f9ff65b0f413e1fdc7aea7f60efe61e53769cbda484742`  
		Last Modified: Thu, 05 Nov 2026 08:02:53 GMT  
		Size: 12.8 MB (12819258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f53076f1f62dd3922ba2c022b27a532fae316de04e42c6303001627f9405109`  
		Last Modified: Thu, 05 Nov 2026 08:02:53 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e5bd4681b0df37939b5351eff7125e6cc242613e01761d0ff0ac114828ebf2`  
		Last Modified: Thu, 05 Nov 2026 09:21:20 GMT  
		Size: 5.7 MB (5723640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:015958b4594b50d4cbf6dc439dd70f4082efef76d12afb4b4508b32b49b4cba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2196137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88377ef38868d63d35ebd2344ef1ef0ac173c089692da3753e06f0c8b916b871`

```dockerfile
```

-	Layers:
	-	`sha256:46db03890786c111459073119d909e8fe54056e2af330655a9b2b369ef4e6b41`  
		Last Modified: Thu, 05 Nov 2026 09:21:19 GMT  
		Size: 2.2 MB (2184303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d4ea20bab74f8296dd3b0621dabff210146805be0ba4f60b1d269a3010571c0`  
		Last Modified: Thu, 05 Nov 2026 09:21:19 GMT  
		Size: 11.8 KB (11834 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:b2d9e1697d7b414c6d84bb616984c435f7851025383c7c0a12b4ed7ae8a8eede
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45966227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5048258446b4c5314cfcf7ff238a9a68cb1fb51af9f4b1ffd7391916e2dca715`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:31:05 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:31:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:31:05 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 08:31:05 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 08:42:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:42:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:42:53 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 09:47:32 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 09:47:32 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 09:47:32 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 09:47:32 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634520fbb822248aec7dd0dee0a79d9cbc88891d3547de30acd7e1b8e588cd3e`  
		Last Modified: Thu, 05 Nov 2026 08:43:00 GMT  
		Size: 1.2 MB (1245758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e9c61e8e68d4a932eddc5531aa378fcd7279a7496f9e5916f12fa93b5748b08`  
		Last Modified: Thu, 05 Nov 2026 08:43:00 GMT  
		Size: 12.7 MB (12723774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b434c90a11f82dc4bc927d07382c5c3bf2a35cabd523050d379e93e057b857e0`  
		Last Modified: Thu, 05 Nov 2026 08:43:00 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167011160408bae8482640fa473f63c5c7fa7ee7e2ea8d76d837b7507559f44d`  
		Last Modified: Thu, 05 Nov 2026 09:47:39 GMT  
		Size: 5.7 MB (5723525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:7222791974ffedda3812e7f850f8584b64c365895bfe86ebf329bfa7403500a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2194592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17506468727897e7324007a659f48a3f7c28f54bf7f1601a1588ff9ddb78b8ab`

```dockerfile
```

-	Layers:
	-	`sha256:4e780df80c41584a43eceed7dfdcfb52916d9f3bf9892b17ac92d545dde2aa32`  
		Last Modified: Thu, 05 Nov 2026 09:47:39 GMT  
		Size: 2.2 MB (2182758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5df0df83f21bdb3d1fe6e3863ed86a50f6bc09b54d0d63b8a423843b804296c`  
		Last Modified: Thu, 05 Nov 2026 09:47:39 GMT  
		Size: 11.8 KB (11834 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c9f33adf5c9d140460f709a5cbc6acdad986b0d73d99c8bfc35bbf7bed2c4939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50266883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0d352c20746aa9de08b227e5354bb9ab7923ede2fcbe59ac71449afb52a5c6d`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:55:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:55:21 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:55:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:55:21 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 07:55:21 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 08:03:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:03:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:03:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:49:56 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:49:56 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:49:56 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:49:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8201317da3d347fda745bf801c8c2a5f0655fa13c176e93bb25a0b52aa82be`  
		Last Modified: Thu, 05 Nov 2026 08:03:44 GMT  
		Size: 1.3 MB (1270237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7731a0a62721d25fb16971b220770e350a9cc563e6d212a45696c69d051a87`  
		Last Modified: Thu, 05 Nov 2026 08:03:44 GMT  
		Size: 13.1 MB (13058846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405d5f23d33fc68792d0c7c40f677c70e8acb48ea3ceb1c985d64a6d3895fe7f`  
		Last Modified: Thu, 05 Nov 2026 08:03:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baddd590e8cbaf558f3ad732601963577fa86f457d4f32f25645803e9516b4a9`  
		Last Modified: Thu, 05 Nov 2026 08:50:03 GMT  
		Size: 5.7 MB (5723514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:36f990d14710406d5cbaa89ec4b74162eaf46b93ad72330b556437c71cbc4376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2193546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60831039f712b488864bcbb41c4995953e274a6f5873a98bc4568b6abcb15762`

```dockerfile
```

-	Layers:
	-	`sha256:5bc663185caaabad5c1a9a7c587e56292d42a8d6f6d0f8a77883334ce69598e1`  
		Last Modified: Thu, 05 Nov 2026 08:50:03 GMT  
		Size: 2.2 MB (2181640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f012cb9a7e455b941f94ee1dbedbf0d762a915d85bd2887e80f66e708113107b`  
		Last Modified: Thu, 05 Nov 2026 08:50:03 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-trixie` - linux; 386

```console
$ docker pull hylang@sha256:17b2e72390a456cecbe8effd01986f0ab6cde315671195446e3b5868619e3a44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51455047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13a6283d51f1e97a644e37251cc6cf6744b27647c39c0b590890d0988d49c31b`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:48:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:48:40 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:48:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:48:40 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 07:48:40 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 08:08:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:08:43 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:08:43 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:42:50 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:42:50 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:42:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:42:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f7332638ed37df4b1fd8984db6bc74a95f6f316a658c644618166e427a4572`  
		Last Modified: Thu, 05 Nov 2026 08:08:50 GMT  
		Size: 1.3 MB (1295174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f67581ebdad60fe45ce643e77d658ad5d88d6521569b771fb34ec99bfcde819c`  
		Last Modified: Thu, 05 Nov 2026 08:08:51 GMT  
		Size: 13.1 MB (13064916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68d7da1d2a042ce1b069faba4a6b6020676a4c9f4a2821411ac21b31a3493cb`  
		Last Modified: Thu, 05 Nov 2026 08:08:50 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f26c542beb9c779e4b94274d7014badb478770310cb401a60be20a74e65be9dd`  
		Last Modified: Thu, 05 Nov 2026 08:42:56 GMT  
		Size: 5.7 MB (5723949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:9f5370c00a54301ac2d3409e4329ac53a35f8e1eabbd81f8264671a68034fce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2189922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c4aa0ec70dfda41333ff615d9c4fd85b0b9b2f417698d016d3443c64d8e4cdf`

```dockerfile
```

-	Layers:
	-	`sha256:aa66fe008ed54e6ba2615cd2e417815e33303f8967aa6eda5cb9987f7e9554c9`  
		Last Modified: Thu, 05 Nov 2026 08:42:56 GMT  
		Size: 2.2 MB (2178356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05ac4f2e4491c271400b38a48969517cb99e55e14c17aebf928bdbe860de62ad`  
		Last Modified: Thu, 05 Nov 2026 08:42:56 GMT  
		Size: 11.6 KB (11566 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:634c1d909721f55a635a6a31a6d600c9cf55c94b5ed8892e075be13fd85b2dbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54277678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:455ce32bbfdb67d15aaebf51f907c16f2f017c65e713cd833329d14256087de3`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 11:57:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 11:57:45 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 11:57:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 11:57:45 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 11:57:45 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 12:27:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 12:27:51 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 12:27:51 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:21:08 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:21:08 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:21:08 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:21:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244bc261c1f9cd5919b2b73ac9878558e16796be0efa4d2488fdbcdcbe163822`  
		Last Modified: Thu, 05 Nov 2026 12:21:06 GMT  
		Size: 1.3 MB (1318378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fde4d91e47de53a5cbc53ea4da9a318177c42954d7300937b6fd8e1d65c85cd`  
		Last Modified: Thu, 05 Nov 2026 12:28:07 GMT  
		Size: 13.6 MB (13567682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da304206eaab3d2986a770e7d79416e5b247cb46023534dd28867c683863b63`  
		Last Modified: Thu, 05 Nov 2026 12:28:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cebc544c82d8c15415cce6dcec4cbbc5e41d5bc2d41aa1842710499af30e0ed1`  
		Last Modified: Thu, 05 Nov 2026 20:21:27 GMT  
		Size: 5.7 MB (5723721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:51224a8e8f46dba4845bd0ffc8fd34c7328253a25dd6f70cc1a2546c74641772
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2196659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac5b98eb4f5e36003ae96321c49501009dce89f86e7cd2fbf6e66b979e816a33`

```dockerfile
```

-	Layers:
	-	`sha256:6e497430fa304ed8c996410b39397419c51e606580b95ded0d2adc547b3d07e2`  
		Last Modified: Thu, 05 Nov 2026 20:21:27 GMT  
		Size: 2.2 MB (2184885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71c70a852ddc9859634b78428b11c6cd30b25fabdc81be524f41da8f40444824`  
		Last Modified: Thu, 05 Nov 2026 20:21:26 GMT  
		Size: 11.8 KB (11774 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-trixie` - linux; riscv64

```console
$ docker pull hylang@sha256:8d706a52789ec57a11e49ead79a5c53527649add4b8e5f01d68ee5109841afb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48729020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd6e5c0d5c32a546606af3f15c31c43b64f0f10549a3c7bdbb4a7fd7bcc7bace`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Mon, 02 Nov 2026 01:26:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Nov 2026 01:26:00 GMT
ENV LANG=C.UTF-8
# Mon, 02 Nov 2026 01:26:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 02 Nov 2026 01:26:00 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 02 Nov 2026 01:26:00 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 02 Nov 2026 04:53:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 02 Nov 2026 04:53:44 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 02 Nov 2026 04:53:44 GMT
CMD ["python3"]
# Wed, 04 Nov 2026 01:56:33 GMT
ENV HY_VERSION=1.3.1
# Wed, 04 Nov 2026 01:56:33 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 04 Nov 2026 01:56:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 04 Nov 2026 01:56:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:268f15c60c8aa6283cb0aacc61a5e19e4ad83c1ee7c5403cf1c0f732c2095efe`  
		Last Modified: Mon, 02 Nov 2026 03:06:45 GMT  
		Size: 1.5 MB (1505731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99336cc9d1b838db24140bea683dd44ce7ef481269b4abeec60592fc2e1412cc`  
		Last Modified: Mon, 02 Nov 2026 04:54:55 GMT  
		Size: 13.2 MB (13152986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ab1c145fb160f7b43300eebc3e7611990a42474220ff75673037e8853b7ebf`  
		Last Modified: Mon, 02 Nov 2026 04:54:53 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62086b648ad6415fd0eb8285866dd99e4b7d048180a2b5d784895eb60bbb77e5`  
		Last Modified: Wed, 04 Nov 2026 01:57:37 GMT  
		Size: 5.7 MB (5724384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:989191127878cb4f6ee3134f97640adef75682120163abc50e98a919ab418d7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2187026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ce099ad070b13c72ca6db00d23d80a6ca528db967376d902dd6893a24c4b569`

```dockerfile
```

-	Layers:
	-	`sha256:a0e89a59f5269a9aef12ee4c9f3c2acea02bbf25d6c67ca2d48c898195946a69`  
		Last Modified: Wed, 04 Nov 2026 01:57:36 GMT  
		Size: 2.2 MB (2175252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:905dd08245d37370d5de0702257f73069fa69997801f6018b6be8fc5d40baa71`  
		Last Modified: Wed, 04 Nov 2026 01:57:36 GMT  
		Size: 11.8 KB (11774 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-trixie` - linux; s390x

```console
$ docker pull hylang@sha256:24cc336162b003e5f49a46ac647c6dab1a032c3a9d350781a1829a51b58a54b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50191067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fe412cd0bb6960b2c33d031623cad92a481c80a016a4c60f139e8d70f9a81de`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:16:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:54 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 08:16:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 08:16:54 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 08:16:54 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 08:25:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:25:04 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:25:04 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 09:16:17 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 09:16:17 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 09:16:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 09:16:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c5a28230c61176db4e0ad48251ab4edfc1c0cf58dc35211c188a1471650914b`  
		Last Modified: Thu, 05 Nov 2026 08:25:18 GMT  
		Size: 1.3 MB (1302773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5dce8a79944571dafd8c553dbe61927d635d71093dd51264c73d293681f5cb`  
		Last Modified: Thu, 05 Nov 2026 08:25:19 GMT  
		Size: 13.2 MB (13240434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527a87d9a5f49397a9f1207a587e87864a4774836b359746d781f77d71e55fe2`  
		Last Modified: Thu, 05 Nov 2026 08:25:18 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6befbdec767ff8a117f41fe96822a778449f5d97d80e3e2e4fd7b603af8a95b`  
		Last Modified: Thu, 05 Nov 2026 09:16:28 GMT  
		Size: 5.7 MB (5723493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:73ff26fba230bf75b9f46a054f227e4214f1f3b6a3c7897be857625ed042acd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2194333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2410beeae2499ccd0313c14a0a15575103df6844500ebe58f527faab5da0ac05`

```dockerfile
```

-	Layers:
	-	`sha256:3f00c51a1ba18be102f317288133baa0b55043723f9968ed116788bfdef8475a`  
		Last Modified: Thu, 05 Nov 2026 09:16:28 GMT  
		Size: 2.2 MB (2182675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42f03b19f3846b64fbb0d2b912e522373bd71ae83f4ba8462df1bec4321614d9`  
		Last Modified: Thu, 05 Nov 2026 09:16:28 GMT  
		Size: 11.7 KB (11658 bytes)  
		MIME: application/vnd.in-toto+json
