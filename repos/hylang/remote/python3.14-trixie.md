## `hylang:python3.14-trixie`

```console
$ docker pull hylang@sha256:2599178d6dcdaf4e8e60d5fc38c84275a3a7782d7ca1e621c8dbf9b5263b1847
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

### `hylang:python3.14-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:90af5758861c7795ece82ce4048295fe0c65c5e605ba881d25fff86bef7e1c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49094917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0468aa4ee7febf2fca5eb2adb504a4fdc6438306b68b4930910f024b6941a60`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:55:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:55:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:55:47 GMT
ENV PYTHON_VERSION=3.14.7
# Sat, 19 Sep 2026 00:55:47 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Sat, 19 Sep 2026 01:03:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:03:01 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:03:01 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 01:41:45 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 01:41:45 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 01:41:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 01:41:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c21337b2448c4a8923205ad1e092a6464c809780ac426755a2065a39c03369d`  
		Last Modified: Sat, 19 Sep 2026 01:03:10 GMT  
		Size: 1.3 MB (1294128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8def98961a31d91a4dc44e69faedbed1efdc1fd5e756d5d4c7c42dd6c8e24f62`  
		Last Modified: Sat, 19 Sep 2026 01:03:10 GMT  
		Size: 12.4 MB (12363879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad232412d02ef04c3744a3b575ed85f8ce49361d8c38bb81b2b6a9fbbe014dcf`  
		Last Modified: Sat, 19 Sep 2026 01:03:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b089cb52dbf7573bc5091da8d1aae5481834fbb6c3a46eee3b3b89544c93d837`  
		Last Modified: Sat, 19 Sep 2026 01:41:51 GMT  
		Size: 5.6 MB (5606243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:f9e1ae74679f69b285fb98296967b7f0e6d5fd8fa5c5bf89968e37d0126f3b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2188483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afa9eeabbde652b4d11b56fef21054e552522c4b96ec6bf31fef5a0fdd84cd80`

```dockerfile
```

-	Layers:
	-	`sha256:c800720c9266ffbfcdf3672b8778bbaad25e6fe252aa63bcf04c99171efe35ef`  
		Last Modified: Sat, 19 Sep 2026 01:41:51 GMT  
		Size: 2.2 MB (2176840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92a7399a10fe9e4c1ab2021e6dfc1807db32b6b4e953b0c904869b45d27f9d69`  
		Last Modified: Sat, 19 Sep 2026 01:41:51 GMT  
		Size: 11.6 KB (11643 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:f180e084f73ffd27d59e3d355fdcdaa19dbb1de14fb3e94151059185c6fc866c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46920285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71ef387f57b250c4401676456de2823b301f6fea0c5b8d7c795d64cfc64b983c`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:02:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:02:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:02:04 GMT
ENV PYTHON_VERSION=3.14.7
# Sat, 19 Sep 2026 01:02:04 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Sat, 19 Sep 2026 01:12:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:12:48 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:12:48 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:20:55 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:20:55 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:20:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:20:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75dd02c449d6c69693503bbbb9bb20f3fe82dda5f9d9d5b5318a04e0421d2441`  
		Last Modified: Sat, 19 Sep 2026 01:12:55 GMT  
		Size: 1.3 MB (1277031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a28da620dcc925a783042e4de82475b7af166086e6ac088df09060a8ce05826`  
		Last Modified: Sat, 19 Sep 2026 01:12:56 GMT  
		Size: 12.0 MB (12038636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:982fd70c8b6f65929e148317b4c704bbedea2aa23ef846630ac38eb3c98942dd`  
		Last Modified: Sat, 19 Sep 2026 01:12:55 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71fa6fa52a60423969edffe2835f3f0e0702c7107de1eec6b8c8b3aebd14c19`  
		Last Modified: Sat, 19 Sep 2026 02:21:02 GMT  
		Size: 5.6 MB (5606337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:970cc94b4d5f4bcf1453a83723a4a6cc0f2de431b3d2d8dfdb984719a10d6b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2191724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd9d7328a588bf8591858667ee9c9249d52ed6aa1439528bf0870a91a26fea16`

```dockerfile
```

-	Layers:
	-	`sha256:2a83f5aa47339d56a68544494b6c9575ec6fedbeb1de4f688fb85fe3e48052f5`  
		Last Modified: Sat, 19 Sep 2026 02:21:01 GMT  
		Size: 2.2 MB (2179905 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac7071c81fcaa9546242ff5bb8f63d19cc9e260bd54e419af3a859af18d89b51`  
		Last Modified: Sat, 19 Sep 2026 02:21:01 GMT  
		Size: 11.8 KB (11819 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:b6836808ad69da7221e7bc9ae8d8eb99c7c2dd253eaf577d5cb1e1a458e5ed37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44835799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d823bc4e50e4252cc2f177db2433ef12fdcdfa0255e86ed98200ced9ac583ca6`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:40:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:40:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:40:44 GMT
ENV PYTHON_VERSION=3.14.7
# Sat, 19 Sep 2026 01:40:44 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Sat, 19 Sep 2026 01:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:52:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:52:21 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:45:52 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:45:52 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:45:52 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:45:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851cfc285a76e34a16be5ccbd9adc022b4502ebd87e064775d2acdd147369109`  
		Last Modified: Sat, 19 Sep 2026 01:52:28 GMT  
		Size: 1.3 MB (1250260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cf33dc62388c36bec782069ff362c9fa63dc8d45343c52d00938ad6a86a660`  
		Last Modified: Sat, 19 Sep 2026 01:52:29 GMT  
		Size: 11.7 MB (11729951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bfba2bc0d9d7be55b65c0dfa49c5c0998434453d3cd82b4edf8abd2057c238`  
		Last Modified: Sat, 19 Sep 2026 01:52:28 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5ee440c281c9d6e8824ef566f5a5459f14037d4286280496f6523bab2b1d1b`  
		Last Modified: Sat, 19 Sep 2026 02:45:59 GMT  
		Size: 5.6 MB (5606411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:6df8d6fede7d3b52425a5582e379eb124d1f3fca0dc04c35a3bce6d3bc83022c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2190177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7cf18aaef56d6f1b54b7cdb83819f7a5aa5bdd1ccf71b26bca5e388e203592`

```dockerfile
```

-	Layers:
	-	`sha256:aee78652a96a0adafc3ac272be0ea72be03251c082e675d84c13292559fc1547`  
		Last Modified: Sat, 19 Sep 2026 02:45:59 GMT  
		Size: 2.2 MB (2178358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:447660dad5af6b5e03bd71259d27dd2ce6b6b2f68d733cbc6fee5bd1f4b99542`  
		Last Modified: Sat, 19 Sep 2026 02:45:59 GMT  
		Size: 11.8 KB (11819 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:4cde036ea8daf2b8a1840a3c1f02ed2d00432a9d6f278796e40149bbe015f65f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49343861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca1dacbf22d1e64248062c8325f8ced74555f3291876c5dc9f4411262980f9a5`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:59:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:59:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:59:02 GMT
ENV PYTHON_VERSION=3.14.7
# Sat, 19 Sep 2026 00:59:02 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Sat, 19 Sep 2026 01:06:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:06:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:06:35 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 01:49:56 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 01:49:56 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 01:49:56 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 01:49:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b598a1e01708000a8744ee3153eb41e6dae89fe3bcfb702426793282170510a`  
		Last Modified: Sat, 19 Sep 2026 01:06:43 GMT  
		Size: 1.3 MB (1275314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e1b82b5135957beeb505d419f44fb93b121839be7cb5e7b8d440d436c64d957`  
		Last Modified: Sat, 19 Sep 2026 01:06:43 GMT  
		Size: 12.3 MB (12272470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7cb81352efcdda7193f8535197511770decf768ec2db5e11e7d690e31f1bd52`  
		Last Modified: Sat, 19 Sep 2026 01:06:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467f21cbbc241ee0c68833a4e3d999f6d2f909d112be307bb5046a9c37dcbb73`  
		Last Modified: Sat, 19 Sep 2026 01:50:03 GMT  
		Size: 5.6 MB (5606137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:8bc2710db5876979d290f2d05ded23452373b0c5b937399d000662b6db34bf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2189131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f3cd4e06e6f94487e3ee077c9af37fcdff79a7410b00ba076bb3ae04fc1e02`

```dockerfile
```

-	Layers:
	-	`sha256:6a5e0a075f413197da1ccaee114464a87d69bfc954df3eaadb20b71eafab8f91`  
		Last Modified: Sat, 19 Sep 2026 01:50:02 GMT  
		Size: 2.2 MB (2177242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7aa96bafa9830fff740f338dd227dff8b8549da5b5df201fefae0439a95e63d`  
		Last Modified: Sat, 19 Sep 2026 01:50:02 GMT  
		Size: 11.9 KB (11889 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; 386

```console
$ docker pull hylang@sha256:25d435fb0efb2fdb2af968b4c29498ecc8ee85455f1dbf3ad0bcd0c9bc4f66bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50750003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adda21792b786b75eedf719f1f31f3188a012292692e41c111f5a8a4cdbf8742`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:57:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:57:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:57:08 GMT
ENV PYTHON_VERSION=3.14.7
# Sat, 19 Sep 2026 00:57:08 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Sat, 19 Sep 2026 01:15:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:15:10 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:15:10 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:17:50 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:17:50 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:17:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:17:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040adbe3a8af36fa73944f4c764a069cf245429046c600df7799718e483e9cf9`  
		Last Modified: Sat, 19 Sep 2026 01:15:17 GMT  
		Size: 1.3 MB (1299133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b996a61f9ceb8a0da33b6331390a7836d4656f13d515c39a127d48143c44266`  
		Last Modified: Sat, 19 Sep 2026 01:15:17 GMT  
		Size: 12.5 MB (12503530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2b5928f5966e4f13d457863a6256ed3cad2461a8be377331ec415ea9506439`  
		Last Modified: Sat, 19 Sep 2026 01:15:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:643a7e6718de7c7d34a80c241e0fb0e95d87eec660474b73345c827dee5c4724`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 5.6 MB (5606693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:14320d7a134f0f091ec608aa06878805203150fec4aebdd7d667c06b8790e0f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2185512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a1b5d42638ed6dc57a0287a352e91617f953030ab6f413b1bb75683403e722`

```dockerfile
```

-	Layers:
	-	`sha256:563cb31bcfa3f7991efb821d5ae5bd3829da12f5e903a11bcd3e59bc4db728a1`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 2.2 MB (2173961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bebf6d5037c6ee4f68fb64cce9de666e1172e807cab72ed4820d1035120dcd9`  
		Last Modified: Sat, 19 Sep 2026 02:17:56 GMT  
		Size: 11.6 KB (11551 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:fcae92aef8a0371df23fef38959c6dca22e19fe3463cb818121166b7737be09f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.3 MB (53338350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8708cdab3802e74e7959a581b41f4c400f7e997bea0c9b0d07291f31a439b2`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 04:40:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 04:40:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 04:40:11 GMT
ENV PYTHON_VERSION=3.14.7
# Sat, 19 Sep 2026 04:40:11 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Sat, 19 Sep 2026 05:27:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 05:27:09 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 05:27:09 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 11:23:11 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 11:23:11 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 11:23:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 11:23:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c7bbb88c76e893540ce0e1990a9d27fc090e314f930565cf23c414f609d2b59`  
		Last Modified: Sat, 19 Sep 2026 05:04:48 GMT  
		Size: 1.3 MB (1322030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0e751abf9c61ae8f682d8ec7ec6e31cd8c8cb2fab9cb71abb335cbf577b104`  
		Last Modified: Sat, 19 Sep 2026 05:27:25 GMT  
		Size: 12.8 MB (12768565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe6ea4d45b0bc0030317a6af449f75edcb07da6d3969275ec32bcd36dec3e955`  
		Last Modified: Sat, 19 Sep 2026 05:27:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48265f6a60ab7dcc3e698cec2653c306585c1d71e8c79982805244469acf8bf`  
		Last Modified: Sat, 19 Sep 2026 11:23:27 GMT  
		Size: 5.6 MB (5606270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:438b0d98f8c38ce907b5c47110628ef98a5e07e7121a92fc0ca3145d3f9c6b78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2192238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771699e2280c22b4974d275ac57746f01960381afc361e443b6010ca64491e0f`

```dockerfile
```

-	Layers:
	-	`sha256:a83ee41d8e8052f4cc5a07aa46157a493ae2272daf0c77deb94c3e113436a63d`  
		Last Modified: Sat, 19 Sep 2026 11:23:27 GMT  
		Size: 2.2 MB (2180479 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23b00e9d6fea8ee763a4dcbc9bfb6a2c658cb24b1d775720e88353cfed79a1d9`  
		Last Modified: Sat, 19 Sep 2026 11:23:27 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; riscv64

```console
$ docker pull hylang@sha256:23c8288e659cf3fd7dbda5e7549ca9ef579fe3d33abad29c0ce55d354f98df7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50172468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0ecf156febff90590ba7d169c66af609df431e71e17c203bb8ed6ed31f4928`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 10:32:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PYTHON_VERSION=3.14.7
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Tue, 01 Sep 2026 20:14:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 20:14:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 20:14:18 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:09:43 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:09:43 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:09:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:09:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228bee8eb79349231f7eb6e86248518867cc180396e0c5b075eff54bbc38fef1`  
		Last Modified: Thu, 27 Aug 2026 12:16:03 GMT  
		Size: 3.9 MB (3878479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6cc9c3fe703277f78f9bc301584c4f519647aded5825e49cbd95c1f108b7b0`  
		Last Modified: Tue, 01 Sep 2026 20:15:27 GMT  
		Size: 12.4 MB (12390133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2e7454fbebc396dca36f9b85916f7a7f787935254bdc9cde50c40db0e3b390`  
		Last Modified: Tue, 01 Sep 2026 20:15:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0145968ef2e742166b9fca89a5b5bfd0ac0cc103a7a275245d05ad2f129383`  
		Last Modified: Thu, 03 Sep 2026 04:10:45 GMT  
		Size: 5.6 MB (5607143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:747b3cdda2af7f05df19974b565e345bf9bce74e4ed0ccc55db2dac6603a21b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2176899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629257d667596008d885c4b0d68ede79826395bc8a7c4b007e2ad5883e504f36`

```dockerfile
```

-	Layers:
	-	`sha256:3c0c6a323d6764dcf003cdefd61501199a173c513b8a36bf0f7264a0a78ebb30`  
		Last Modified: Thu, 03 Sep 2026 04:10:44 GMT  
		Size: 2.2 MB (2165140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2dce82aac90db8cbf7ab6559aba8226fb640c913cd57c0fafdef6c1a55930e81`  
		Last Modified: Thu, 03 Sep 2026 04:10:44 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; s390x

```console
$ docker pull hylang@sha256:66bc462886bbdc3649a7ecf8694ab1e8dde57ec3027ae902879fcb44da204253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49224553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435fe1e1d4fb17a0821d209abaa909723cc86b1a567cff614b8d2d230da56ff9`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 01:15:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:15:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:15:13 GMT
ENV PYTHON_VERSION=3.14.7
# Sat, 19 Sep 2026 01:15:13 GMT
ENV PYTHON_SHA256=3b48dac8fb59f62eaa67ac83c1eb12bda1b7a08406dd286e252c11a66be27f81
# Sat, 19 Sep 2026 01:22:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:22:08 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:22:08 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:17:00 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:17:00 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:17:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:17:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbb362e4fa5ccf9a808d3022d85af0e6d3533435857b212f27b362cbc7c909d`  
		Last Modified: Sat, 19 Sep 2026 01:22:20 GMT  
		Size: 1.3 MB (1306408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6752f964b40e35ab638efb14720a6ce1d480611945561b3d80cfd409db5b3e5`  
		Last Modified: Sat, 19 Sep 2026 01:22:21 GMT  
		Size: 12.4 MB (12412532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382392a5f04ebc90ee5af6ae231fd842f5950294cdcc5a0e493b55386df6d9f4`  
		Last Modified: Sat, 19 Sep 2026 01:22:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d37681a6fbece42c9521b929d0221393a3bef16301c71bf557685acf2d73189`  
		Last Modified: Sat, 19 Sep 2026 02:17:10 GMT  
		Size: 5.6 MB (5606215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:cdfb8ffa5ea12e6f9d0fc07599c235a594ede4b027a3fdd347502be56dd45839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2189921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fad53425158c51a968ac49148404d0205a452ed6c04b08b70998ba09e0ac4fb5`

```dockerfile
```

-	Layers:
	-	`sha256:5eff0997f29bee756497b8982f0e38c2f9c0605925ceb2a81566c0f6f123526c`  
		Last Modified: Sat, 19 Sep 2026 02:17:10 GMT  
		Size: 2.2 MB (2178279 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b4e0f9a4777ffebb8509e8e059fc0d68ea09ddc14f1af9deb1ba6b488ccaa14`  
		Last Modified: Sat, 19 Sep 2026 02:17:10 GMT  
		Size: 11.6 KB (11642 bytes)  
		MIME: application/vnd.in-toto+json
