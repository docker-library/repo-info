## `hylang:latest`

```console
$ docker pull hylang@sha256:56ed8fafcafe571d7065b18fd26c3d4dc74c3724ded44af6fbe237c65457845f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 18
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
	-	windows version 10.0.26100.32995; amd64
	-	windows version 10.0.20348.5256; amd64

### `hylang:latest` - linux; amd64

```console
$ docker pull hylang@sha256:ef8b3fec1ea82712a474e64c174f05a3acd613ddeed818ddc07867655568b4b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.1 MB (49124458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9537a586dec57163de8b3ed3544702300735a7f8e88fb6536b2c4aecd3864a3d`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:59:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:59:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:59:55 GMT
ENV PYTHON_VERSION=3.14.6
# Tue, 14 Jul 2026 01:59:55 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Tue, 14 Jul 2026 02:07:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:07:16 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:07:16 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 02:46:17 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 02:46:17 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 02:46:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 02:46:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ef6bf557b964af2625a37b765b3c8890f7a5fca6a4fd8f58d70db1adfe164e`  
		Last Modified: Tue, 14 Jul 2026 02:07:24 GMT  
		Size: 1.3 MB (1293273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2fb5800bc41ebae70b49dde01f5b018473be472f0980e152c26e993ce86f1c`  
		Last Modified: Tue, 14 Jul 2026 02:07:25 GMT  
		Size: 12.3 MB (12335539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e643ab40c29e592ca9672a5b9b1e47d6845fe849c459585dc999772f60034d18`  
		Last Modified: Tue, 14 Jul 2026 02:07:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e13f36cb1b32e063ba86ad13829a2282ab09dca05c070d898afba6d289fb4e`  
		Last Modified: Tue, 14 Jul 2026 02:46:24 GMT  
		Size: 5.7 MB (5714493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:latest` - unknown; unknown

```console
$ docker pull hylang@sha256:de65a71bcdab43fb4d05e353885fa45f0072d42688af5fccd929c2b453dd2a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabc6188c8ec3d60d62233c3b559a4f3466fa08e512c78804b70192d85a4a75c`

```dockerfile
```

-	Layers:
	-	`sha256:1eb17656a84b9761a2f82d45d6c1379e2fc166b850077faf187999797003cef5`  
		Last Modified: Tue, 14 Jul 2026 02:46:24 GMT  
		Size: 2.2 MB (2156727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a240149cf4309dd38b2b734938cad6ca6711271e7d71b78ca7876001e184a3ca`  
		Last Modified: Tue, 14 Jul 2026 02:46:24 GMT  
		Size: 11.6 KB (11643 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:latest` - linux; arm variant v5

```console
$ docker pull hylang@sha256:f1ec3771504f13191ab771fe45d63afc2164398675447bf9035dedc221032529
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46957439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c747098616cfb462221254cca09414aa46909913b0ee16a06903ce823affc50`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:42:38 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:42:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:42:38 GMT
ENV PYTHON_VERSION=3.14.6
# Tue, 14 Jul 2026 02:42:38 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Tue, 14 Jul 2026 02:53:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:53:40 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:53:40 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 04:09:39 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 04:09:39 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 04:09:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 04:09:39 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ba394c4f34c47f2e7bc1f6867e1c49684992dc6b61753278da5aa333115cb01`  
		Last Modified: Tue, 14 Jul 2026 02:53:48 GMT  
		Size: 1.3 MB (1276403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9d91aa2eff6216ed5e845dc71e34747b11cfaa1c6bef1958724d8bb499ef19`  
		Last Modified: Tue, 14 Jul 2026 02:53:48 GMT  
		Size: 12.0 MB (12011394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3594be561e9ff8eadffd2826ba7c1137ec85ab5b89e8b248f5e85fcdc0f5756`  
		Last Modified: Tue, 14 Jul 2026 02:53:48 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4afc5c1bdac9a714f5c378e729bdf61785a33936e18226cf6bd68a4bd07d1f`  
		Last Modified: Tue, 14 Jul 2026 04:09:46 GMT  
		Size: 5.7 MB (5714575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:latest` - unknown; unknown

```console
$ docker pull hylang@sha256:6923fbe9effc666ec813cc05a08d420d081faa4f41247b5ccb6481723e937afc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db6466bdca7089731306096ee67b6f2cb4ae74c46e4b02723ebb2df146c4c0f0`

```dockerfile
```

-	Layers:
	-	`sha256:c6870e824d8c8700fdcfdaff2b6a661ab32b08949a81e2c21146d92e579b664c`  
		Last Modified: Tue, 14 Jul 2026 04:09:46 GMT  
		Size: 2.2 MB (2159792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12b26fca1dc69894a588b99754b2b4457aab21ea28080c9e564096f4cbf71c5c`  
		Last Modified: Tue, 14 Jul 2026 04:09:46 GMT  
		Size: 11.8 KB (11818 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:latest` - linux; arm variant v7

```console
$ docker pull hylang@sha256:4007b58fd103055f5f4d7be63954bcdc73fcc02660ed7d988c16d28c87654c76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44872887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79dc4e79c8043c556acf4cc5b34da0cc7da53bc99345d2e4d2c8c966aa02bd0`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:19:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:19:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:19:12 GMT
ENV PYTHON_VERSION=3.14.6
# Tue, 14 Jul 2026 03:19:12 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Tue, 14 Jul 2026 03:30:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 03:30:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 03:30:39 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 04:36:04 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 04:36:04 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 04:36:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 04:36:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da36b2b23c6a8ca5550aa5ff3f64f2e941cfbeb148307e13875556a89243e068`  
		Last Modified: Tue, 14 Jul 2026 03:30:46 GMT  
		Size: 1.2 MB (1249149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb0c21c5e5bb76a5acd9e23a64aa347adbd31dc5e5b48291ecfd8befb662e8d6`  
		Last Modified: Tue, 14 Jul 2026 03:30:46 GMT  
		Size: 11.7 MB (11702624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00a4096c6e6198c25ba515be7ab25e56ba47056cad6290aeb5072bf85a894ef`  
		Last Modified: Tue, 14 Jul 2026 03:30:46 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fe4154ebdcb898e33d73bc08e719fa544a1c245a91d632254ed7d0ecafcf62`  
		Last Modified: Tue, 14 Jul 2026 04:36:10 GMT  
		Size: 5.7 MB (5714398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:latest` - unknown; unknown

```console
$ docker pull hylang@sha256:781d1cead5413ec322730cf75ed1f1b82f888e984970186c5cb01ab96c6d0ac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34aea7e7a7d5726fab89ea9e05e00d7f6b4de1e62a4a490f06940563c27630ed`

```dockerfile
```

-	Layers:
	-	`sha256:76cd3d40311fad6962fcc0a965dd3fd136fef07fe2519619735676d4cd65ed5a`  
		Last Modified: Tue, 14 Jul 2026 04:36:10 GMT  
		Size: 2.2 MB (2158245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7a097c0bc3a3a1c11d53a2379e71284d36788a8c68b4f49e34639acb16a7cbd`  
		Last Modified: Tue, 14 Jul 2026 04:36:10 GMT  
		Size: 11.8 KB (11818 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:latest` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:a20f244c9261cb8de1c2f84467c9a027cb02fb1264f1551767ce30988e4397b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49379168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8bfa03fece6887b0d0127d0a54f4213242df5a6bed0e9d852133e667f802df`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:03:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:03:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 02:03:42 GMT
ENV PYTHON_VERSION=3.14.6
# Tue, 14 Jul 2026 02:03:42 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Tue, 14 Jul 2026 02:11:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:11:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:11:21 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 02:53:54 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 02:53:54 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 02:53:54 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 02:53:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19873ad5d03358f70dc3d26ae8681995556c9460236f0428c85ee988bd6b1dd0`  
		Last Modified: Tue, 14 Jul 2026 02:11:29 GMT  
		Size: 1.3 MB (1274125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db4514f465560e8d05f29c11f802ef829ec918c7bb405fe7ec76dd6460588add`  
		Last Modified: Tue, 14 Jul 2026 02:11:30 GMT  
		Size: 12.2 MB (12246520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c879017f1fa945a043946db5f45d5ec18a205a5e6fa076a8b12748b7861d166c`  
		Last Modified: Tue, 14 Jul 2026 02:11:29 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bfd429ee98c5355c012ad8b21b09a757c88c11513d2ac54c0c62ae28207ed5`  
		Last Modified: Tue, 14 Jul 2026 02:54:02 GMT  
		Size: 5.7 MB (5714569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:latest` - unknown; unknown

```console
$ docker pull hylang@sha256:095093aac23575962047f670e71cc672f7c84909e34c9bfd0b8fdc0960c72559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2169020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f3d2a1ef0cd2444c3808c1514729f8479e8d6b8d634eecfa5bf2b2edd18ae30`

```dockerfile
```

-	Layers:
	-	`sha256:ab3df6889a81ea77ab29d3206a42d734165e7551c7e0818b3f379ce02f52ab9b`  
		Last Modified: Tue, 14 Jul 2026 02:54:02 GMT  
		Size: 2.2 MB (2157129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6504b785faeb3574b056eeacb3492bfd2f099119c79944673a786513583ea970`  
		Last Modified: Tue, 14 Jul 2026 02:54:02 GMT  
		Size: 11.9 KB (11891 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:latest` - linux; 386

```console
$ docker pull hylang@sha256:323321e1f70d371ffca4bb2e90a88735ab2a608a8c7c56e795dedb8ad11f325d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50783292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbb72a6f88c66e0ad5d65e10e81678145546bef2924f8cb48daeba7d5b24a08c`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:59:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 01:59:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:59:14 GMT
ENV PYTHON_VERSION=3.14.6
# Tue, 14 Jul 2026 01:59:14 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Tue, 14 Jul 2026 02:18:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 02:18:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 02:18:15 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 03:18:45 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 03:18:45 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 03:18:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 03:18:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea5d82d60907f6108f0be1975d62784b30b954b35cc93684b7878ab074ed83ea`  
		Last Modified: Tue, 14 Jul 2026 02:18:22 GMT  
		Size: 1.3 MB (1297762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e537aaf17f9de68f28bb572da1f3be709497b12bbb40d34108b2dc0c81c5d101`  
		Last Modified: Tue, 14 Jul 2026 02:18:22 GMT  
		Size: 12.5 MB (12474121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b09682bf405f4296eb5bc8dfbb123ae4bd42799bead3e45347f8aecf833736b`  
		Last Modified: Tue, 14 Jul 2026 02:18:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba88bdb3cfa9086f38e456d335e02651fba0549a3939037474e3e5ce39a7832`  
		Last Modified: Tue, 14 Jul 2026 03:18:52 GMT  
		Size: 5.7 MB (5714859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:latest` - unknown; unknown

```console
$ docker pull hylang@sha256:62733e887f0ad5f15fe0d1234549e02b1270e36167f79a748e33bf43afd59566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637ff5f048a42996d37de6dda13c4ca07e9792c90fa9678df6a19bfbda0cb337`

```dockerfile
```

-	Layers:
	-	`sha256:9b6b75c33587e764d5733190f7e4db0327ebad43a756972c3300c4b45fc67ca9`  
		Last Modified: Tue, 14 Jul 2026 03:18:51 GMT  
		Size: 2.2 MB (2153848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26647a8608a50f1fb3c5749615fe61b880a923aed8fc961d7beca7306e1d14a8`  
		Last Modified: Tue, 14 Jul 2026 03:18:51 GMT  
		Size: 11.6 KB (11551 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:latest` - linux; ppc64le

```console
$ docker pull hylang@sha256:203d0560849c20026e9ff4d71fe2e567971458dca37f4528a9cb1018ecb02703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53384016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd3540748642bef6982bcb0d5ea7db0b671a8fff373ddb57c8d6c25da39c4e6`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 05:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PYTHON_VERSION=3.14.6
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Tue, 14 Jul 2026 06:02:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 06:02:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 06:02:47 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 14:26:42 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 14:26:42 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 14:26:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 14:26:42 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9b965cff9151135c00ea74516cd640b3c0220c80b703fbb752b2df4bf7fa51`  
		Last Modified: Tue, 14 Jul 2026 05:40:10 GMT  
		Size: 1.3 MB (1321298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8865ba0de28e9fd797dcd1ec477d5156a4d9e860b419ad08abfe1819e6230a54`  
		Last Modified: Tue, 14 Jul 2026 06:03:00 GMT  
		Size: 12.7 MB (12746219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e145a92da5d2fa61bdf1ea45c8515c010cd55888cf2aefd8b17d06e44939fc`  
		Last Modified: Tue, 14 Jul 2026 06:03:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac753600b9803815485d16c91932f2bdadb02720117bc4c991f435f09913775`  
		Last Modified: Tue, 14 Jul 2026 14:26:55 GMT  
		Size: 5.7 MB (5714773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:latest` - unknown; unknown

```console
$ docker pull hylang@sha256:1f49a283761afe287b2b59cb09b5d0fb5540564a04cba75f172c52a1987c8da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2172125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117b8b974801197f75f02a50d37c0d22b2aab580e2690f94887d955dc719a398`

```dockerfile
```

-	Layers:
	-	`sha256:dabf7319094166b346e29c89f94ccfe28a326ad0eeec3a438f806905ee1d7b36`  
		Last Modified: Tue, 14 Jul 2026 14:26:55 GMT  
		Size: 2.2 MB (2160366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aba2ffff133398bb932e198943796356fd82fd05446d203284f820441f721f1f`  
		Last Modified: Tue, 14 Jul 2026 14:26:55 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:latest` - linux; riscv64

```console
$ docker pull hylang@sha256:ae981d2c292994d8dcbb21e325f2b890a49eaf8f797da004fc05926c0b5f1cda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47618338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee062850c814532f0abc2acfe3d32de1840ff4a829d4401a9051caf551eeb81e`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Sun, 28 Jun 2026 15:46:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 28 Jun 2026 15:46:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sun, 28 Jun 2026 15:46:45 GMT
ENV PYTHON_VERSION=3.14.6
# Sun, 28 Jun 2026 15:46:45 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Sun, 28 Jun 2026 20:31:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sun, 28 Jun 2026 20:31:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 28 Jun 2026 20:31:50 GMT
CMD ["python3"]
# Mon, 29 Jun 2026 11:28:15 GMT
ENV HY_VERSION=1.3.0
# Mon, 29 Jun 2026 11:28:15 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 29 Jun 2026 11:28:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 29 Jun 2026 11:28:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1037ba7db6f690117c82e3915002f80e0130d96a622e005401dfd750b24abb75`  
		Last Modified: Sun, 28 Jun 2026 17:27:26 GMT  
		Size: 1.3 MB (1261166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c05ba89637049d26b0aebb9864621feda7ea898658976d78cf667180cbec6cc`  
		Last Modified: Sun, 28 Jun 2026 20:32:58 GMT  
		Size: 12.4 MB (12359964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0059390d700dc9dec6b77763cb64f6d1e49ca5e4235ea38544c04f4d989f5a32`  
		Last Modified: Sun, 28 Jun 2026 20:32:56 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae9761482b04ddf0386a8afff6082c3b7ddcae2e3f8d54f79a335c8a79eedf1`  
		Last Modified: Mon, 29 Jun 2026 11:29:15 GMT  
		Size: 5.7 MB (5714579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:latest` - unknown; unknown

```console
$ docker pull hylang@sha256:dc513771ace376bb26a98ee3874dbd46ee9d200479afff72e7da6a24e81719c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2162460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075666520feee859a7114cbcbb44c5545a3e1cda39fb0b40e18c40db62b7d164`

```dockerfile
```

-	Layers:
	-	`sha256:207cd35bafc58f5b4f2489d0a8fbb4a7aa65fcd809f3e439eb23a111b86a1742`  
		Last Modified: Mon, 29 Jun 2026 11:29:15 GMT  
		Size: 2.2 MB (2150701 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80c29007ab8dccd8068b0cbb9a1110b619466ed47de525aaf7579ddbde7ce018`  
		Last Modified: Mon, 29 Jun 2026 11:29:14 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:latest` - linux; s390x

```console
$ docker pull hylang@sha256:e3330db39245b5a882c70c9fbd4717dc7a2ce57466ae7bb86b7cdb1a3374d59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49248769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35569e47714160499994e8af8fcd5a400a2bb6f7f0c673d610dfb0fd8d99dea5`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 03:43:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 03:43:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 03:43:32 GMT
ENV PYTHON_VERSION=3.14.6
# Tue, 14 Jul 2026 03:43:32 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Tue, 14 Jul 2026 03:51:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 03:51:33 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 03:51:33 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 05:22:28 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 05:22:28 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 05:22:28 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 05:22:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebffddecd8bed9964430f0b635acb920a3e870632ac55230a522de4d2003188a`  
		Last Modified: Tue, 14 Jul 2026 03:51:45 GMT  
		Size: 1.3 MB (1305800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593ccc651a63e030eba81208a84b235931a1df5714810635f2134246f960ebe8`  
		Last Modified: Tue, 14 Jul 2026 03:51:46 GMT  
		Size: 12.4 MB (12381828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af0265df8eefa9bc23631ca9d5990cad38bed489dd439e14b78fb02158df987`  
		Last Modified: Tue, 14 Jul 2026 03:51:46 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e11828661592a19bce34db5b23a82d0f190723b05c5ad6fa82aea6260412a7`  
		Last Modified: Tue, 14 Jul 2026 05:22:40 GMT  
		Size: 5.7 MB (5714260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:latest` - unknown; unknown

```console
$ docker pull hylang@sha256:da8acc18eeba501ca94e91cfa813eabcadcc97f98eccd3d14a486e8177f48bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2169809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef4bc2ec513f2b05d5a0a4f68f8089a0b74b850ce706fdfad2b75ade20f56ddc`

```dockerfile
```

-	Layers:
	-	`sha256:bd4020b44b35dda97ee45a8682bb1b5d1d6513643e57182757eae84770a50fcd`  
		Last Modified: Tue, 14 Jul 2026 05:22:40 GMT  
		Size: 2.2 MB (2158166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27e5d57874ae1c8dee29989e1cda40e196c783c97b3ee5722587e58a0dc56077`  
		Last Modified: Tue, 14 Jul 2026 05:22:40 GMT  
		Size: 11.6 KB (11643 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:latest` - windows version 10.0.26100.32995; amd64

```console
$ docker pull hylang@sha256:ab1c2a18dcfc694cd20ffcc61f38e93850a4c9ce3079fe2838fedf058d5c62d6
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2350144511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7f89921c94cacacfef340a154d3009b7dc46de2ceea92719a8e2fdb1e8859f3`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 07 Jun 2026 07:36:39 GMT
RUN Install update 10.0.26100.32995
# Wed, 10 Jun 2026 20:37:26 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Jun 2026 20:37:26 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 10 Jun 2026 20:37:27 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 10 Jun 2026 20:37:28 GMT
ENV PYTHON_SHA256=14b3e9a710a3fcf0bd9b55ab6b60412bd91227563f813fc49040cabc0209e0bd
# Wed, 10 Jun 2026 20:38:14 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 10 Jun 2026 20:38:14 GMT
CMD ["python"]
# Wed, 10 Jun 2026 20:41:28 GMT
ENV HY_VERSION=1.3.0
# Wed, 10 Jun 2026 20:41:28 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 10 Jun 2026 20:42:08 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 10 Jun 2026 20:42:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee71d57b2226db82d002abc39a97b7dd144f007db435566364a0285bf115b83`  
		Last Modified: Tue, 09 Jun 2026 18:08:12 GMT  
		Size: 756.1 MB (756083682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fc9a997338ddaf558cbb62e8e96240b9040922612155dc4c04e83adce4cef7`  
		Last Modified: Wed, 10 Jun 2026 20:38:22 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5170cb4f27ed1706dfd668dbe4227f203f88f77fa5c86baee53878058266689c`  
		Last Modified: Wed, 10 Jun 2026 20:38:20 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfcd032f2a8cbaed2facc67dd44a97bacb717e8b91696f1dbda641b6905dcbf`  
		Last Modified: Wed, 10 Jun 2026 20:38:20 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042d4656944b21e9692d4e3965cdf60498479a29ae603dfcb562d5ba01ceba94`  
		Last Modified: Wed, 10 Jun 2026 20:38:20 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793682d25c288ffa41079c0530d431ff7fb3bcee6cfb96bbae934c189120c7f5`  
		Last Modified: Wed, 10 Jun 2026 20:38:27 GMT  
		Size: 62.6 MB (62581917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e81f5184a8e3ba3841c0923751efa7a7865b5038ec2650bc34ced326c26980`  
		Last Modified: Wed, 10 Jun 2026 20:38:20 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb90d5e3b8387f1e060d47cb51df2cbc2e2e60f74f06c4166c4161b23f18422`  
		Last Modified: Wed, 10 Jun 2026 20:42:13 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97dd62915093671fa7c497af98d39356bd9e53a29c3b70654f3f8381353d8555`  
		Last Modified: Wed, 10 Jun 2026 20:42:13 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4c4e50022c25e8fa7d99eae2292cd6f4cc388e80aa5f3c08e458f8bd7be35f`  
		Last Modified: Wed, 10 Jun 2026 20:42:14 GMT  
		Size: 8.4 MB (8409308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a397124e2cb5c25d0097c90ba5f2e016389f4d0da91e7813c3d2c379d96bf92c`  
		Last Modified: Wed, 10 Jun 2026 20:42:13 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - windows version 10.0.20348.5256; amd64

```console
$ docker pull hylang@sha256:c00e933ada2c8022c46f1351a52a9ae8a33755885c9949c7c612728dbb0d008a
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2203003271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13ce3414e6879e7d80384558ef626cb4ec80ed995a4b01ce47d6ddf99a55b656`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 07 Jun 2026 06:43:23 GMT
RUN Install update 10.0.20348.5256
# Wed, 10 Jun 2026 20:37:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 10 Jun 2026 20:37:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 10 Jun 2026 20:37:29 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 10 Jun 2026 20:37:29 GMT
ENV PYTHON_SHA256=14b3e9a710a3fcf0bd9b55ab6b60412bd91227563f813fc49040cabc0209e0bd
# Wed, 10 Jun 2026 20:38:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 10 Jun 2026 20:38:22 GMT
CMD ["python"]
# Wed, 10 Jun 2026 20:41:30 GMT
ENV HY_VERSION=1.3.0
# Wed, 10 Jun 2026 20:41:31 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 10 Jun 2026 20:42:00 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 10 Jun 2026 20:42:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6897a04901ec162be0eabd7eb636b5ac50d6e37c880f1db618610f2d777b1ce6`  
		Last Modified: Tue, 09 Jun 2026 18:12:58 GMT  
		Size: 643.1 MB (643106423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6efdeb7b9257507127f091d76dedd48b4e9315c618931c7843fe791444fef5e2`  
		Last Modified: Wed, 10 Jun 2026 20:38:29 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbef0a9ed23b87025e4bcaa41890235aa60e301f69c19c22582258ac5cb619dd`  
		Last Modified: Wed, 10 Jun 2026 20:38:27 GMT  
		Size: 1.3 KB (1334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9afac6236488dffd5eb3bd308bd6036968c8c074899c92120bef7921084b6bc7`  
		Last Modified: Wed, 10 Jun 2026 20:38:27 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ee807f1d9fd2ce4482fd975e84e54c1902301af2eb573cfc2012a1415177bb`  
		Last Modified: Wed, 10 Jun 2026 20:38:28 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def964152d8d19e60c468d2e475afb609fbf2652ed2a16ab3c224396effc6ea7`  
		Last Modified: Wed, 10 Jun 2026 20:38:34 GMT  
		Size: 62.6 MB (62587974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d08759384096f4909eaec98732c51c4cc9e2e86f98a0dab1b6b51c5d70f0652`  
		Last Modified: Wed, 10 Jun 2026 20:38:27 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d24524b000bfdd859bacf5def87afeb4eb33bd0d90e1d2f3238dee17ec5c1ec5`  
		Last Modified: Wed, 10 Jun 2026 20:42:05 GMT  
		Size: 1.3 KB (1308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:358dcf95399fdfef3b7db3aa2b1a1b78d0d0927a788a4d50a23ed123674e767c`  
		Last Modified: Wed, 10 Jun 2026 20:42:05 GMT  
		Size: 1.3 KB (1329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e739c2f9dbca3b754e6e2e16bcfa3efd438fbecde198ba3e2cffafaa032832ea`  
		Last Modified: Wed, 10 Jun 2026 20:42:06 GMT  
		Size: 8.3 MB (8279223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54184a88082c5bad85c2b7e644377e5e347e5ef024917b3d856b24b22ad1f8df`  
		Last Modified: Wed, 10 Jun 2026 20:42:05 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
