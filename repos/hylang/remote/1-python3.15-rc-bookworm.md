## `hylang:1-python3.15-rc-bookworm`

```console
$ docker pull hylang@sha256:98242c048d64033d3710bcd1ed8844913b207d4ac73666084f2c5c30efcb18ad
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

### `hylang:1-python3.15-rc-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:9988270587cf7f90ec3c0e831c330fa5df2c36a7e4e42f5ce30cb4642b60e074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53890146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c5f012620f6a244bbed039e835bbb6bb0d0d572edf158df6bbec7c42c93aeb`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Mon, 05 Oct 2026 21:24:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:24:10 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:24:10 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:34:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:34:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:34:42 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:56:53 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:56:53 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:56:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:56:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed19aa5389d27b9cc8d695d22756e3a444d14c50b733c80bb13e999da25b116`  
		Last Modified: Mon, 05 Oct 2026 21:34:49 GMT  
		Size: 4.0 MB (3980913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd82fd12d1a1e728f6ade9be6b698d894cf181bb96c3ea00cb4cd806f2fcf7f`  
		Last Modified: Mon, 05 Oct 2026 21:34:50 GMT  
		Size: 15.9 MB (15906518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd17d3103ac9999b65cafa6960beddbb604ee6e341a976a5ad5e5d88b1f1f81`  
		Last Modified: Mon, 05 Oct 2026 21:34:49 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a05e79cee20c10c5364d9131509b452a204695a9df727e5d3563d5f97226a32`  
		Last Modified: Mon, 05 Oct 2026 21:56:59 GMT  
		Size: 5.8 MB (5764022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:a0389251b74c730fc892baa8eab41e2b8587fbe7d383fb6064a860a34c6b8d0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc5966cecdc63f382f45d02cace54d79e508d07671107728de9a8af038491385`

```dockerfile
```

-	Layers:
	-	`sha256:21a63f2379a038d250df8ced74fe7d50041e7cc2af3448a557ac3413935bd8d0`  
		Last Modified: Mon, 05 Oct 2026 21:56:59 GMT  
		Size: 2.6 MB (2550322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6bb530ea14d453dfae01e6f975357424f341026b8475b1f906ec7ab7608ae99`  
		Last Modified: Mon, 05 Oct 2026 21:56:59 GMT  
		Size: 8.1 KB (8067 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:d60990b957be7b8fedffb5a74d276cc5e51e4fd3b0e34fe145f349496e05578a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45640220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121805f6f78a53f000863fdd7cbaaff48cd4b44966e94c0208f9e51d712ecd86`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:40:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:40:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:40:24 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Sat, 19 Sep 2026 01:40:24 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Sat, 19 Sep 2026 02:03:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 02:03:58 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 02:03:58 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:45:51 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:45:51 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:45:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:45:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6451ddc437f1d0ab0c139c5b942d3ef1063020d32ec9b787b11103132daafc22`  
		Last Modified: Sat, 19 Sep 2026 02:04:06 GMT  
		Size: 2.9 MB (2940442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9afd425a17e091d49e392809f39317b3e3f92044fb6cdf9b87459c3145f670`  
		Last Modified: Sat, 19 Sep 2026 02:04:06 GMT  
		Size: 13.0 MB (12993451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642784462c6d939bf619b3e772fc303ad9f6abcf5f056af0bd2d17d7541a3bc0`  
		Last Modified: Sat, 19 Sep 2026 02:04:05 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211f66e01d3ce294169ca1d54737ba80ff5ceadcca83c413d34567ad4d3177b8`  
		Last Modified: Sat, 19 Sep 2026 02:45:58 GMT  
		Size: 5.8 MB (5762961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:e9f5c401cb177ad3f27940a943d7f43c5730b0edc27c266a173ceef13e5df182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30838b037a8346abe4fc78165b766e503f638a83702b59b8e32f847dfd31a278`

```dockerfile
```

-	Layers:
	-	`sha256:038c36fe768f5bf1c42781c069f21c81a198d562eddf0c687bb914d924e37609`  
		Last Modified: Sat, 19 Sep 2026 02:45:58 GMT  
		Size: 2.6 MB (2552567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1e25f14772b9b6c6d8e38997a0fa65bc64c8e55443a88fe322774cf4b68ce0e`  
		Last Modified: Sat, 19 Sep 2026 02:45:58 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:246c5d7fcef3f44e169452893b4cdeebcef433bf03b1cea05f6a52d40b4e4d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53458581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69eb016263e1de99a541aa3e5a237ae9a9a4983b55d968c8dec5d8624db916da`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Mon, 05 Oct 2026 21:24:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:24:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:24:25 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:24:25 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:39:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:39:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:39:47 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:53:19 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:53:19 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:53:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:53:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b9199f64f9f41a68577ba4e7a101814fbf5c7c0be24f3508490d0b118710bc`  
		Last Modified: Mon, 05 Oct 2026 21:39:56 GMT  
		Size: 3.8 MB (3816188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187905de9ad4b0f04a2d83862e3e4b48597413599ac1522cce7b37e5dfbbc8cd`  
		Last Modified: Mon, 05 Oct 2026 21:39:56 GMT  
		Size: 15.8 MB (15754472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d36bbe5d8446098b01869fdc2cd80215d58bb11a8b785e80f3cd6fad8477995`  
		Last Modified: Mon, 05 Oct 2026 21:39:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff10442db663c2a14fe05d25f5ddc014e9a7eb63db493fb2ef493ecc19daad4`  
		Last Modified: Mon, 05 Oct 2026 21:53:27 GMT  
		Size: 5.8 MB (5763991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:e11048af245e183aa551bf761d65e3af0f7ea88e073f41b11d7121eb7c77252b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d75ad148402d7991f6a6a603725b5c892189cc44dbce741824869cb0ae89e16`

```dockerfile
```

-	Layers:
	-	`sha256:0178efe89b7e345840a8e7d89210a007402676e9610a98249f38ff3742c01ad7`  
		Last Modified: Mon, 05 Oct 2026 21:53:27 GMT  
		Size: 2.6 MB (2550587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78b751c02e258b8e6aeb3326e242deb8795439a9bcf24ce0b03e0e81d503bc19`  
		Last Modified: Mon, 05 Oct 2026 21:53:26 GMT  
		Size: 8.2 KB (8171 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:18fa1808a906fd865840fd011884406193e42ca34df7fefb35de3352fa6c7967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55069289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2828e39a03ed8ebb27fecee95c76af9e81703330ec631e05e8660716ce8182e2`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Mon, 05 Oct 2026 21:27:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:27:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:27:20 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:27:20 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:41:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:41:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:41:57 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 21:57:43 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 21:57:43 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 21:57:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 21:57:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba633b915da5aaf62804dc7151c768238a146c36ff7f99e7f06ced60165171d`  
		Last Modified: Mon, 05 Oct 2026 21:42:05 GMT  
		Size: 4.0 MB (3986769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79002b4096e70f621de314d5d4170eca6c597e932eeaeae4acc59b952089f14`  
		Last Modified: Mon, 05 Oct 2026 21:42:05 GMT  
		Size: 16.1 MB (16091873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba0df13571df4c4831056561418c20388c77e0d02199a21e2d8aedbecc0aab8`  
		Last Modified: Mon, 05 Oct 2026 21:42:05 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0c73a80bc0b7a75a2840df62b2e9287451656d6776bb4a2af53407e452eb31`  
		Last Modified: Mon, 05 Oct 2026 21:57:50 GMT  
		Size: 5.8 MB (5764291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:5cfa143712ed977191c9f6f169acff22fff1abad0d5d817cbe66205298ace288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2555524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f13fdc8522aa263fbe49ad599159faf419c342364698e6b8ad058c7755ed18`

```dockerfile
```

-	Layers:
	-	`sha256:43feca7bee6af3727ca56f5f6df06610b47c872bc18b57fa64b25f3d91e2dfb4`  
		Last Modified: Mon, 05 Oct 2026 21:57:50 GMT  
		Size: 2.5 MB (2547489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:913418fa2e005a183301e09bc74096d70793af320b9a42605a65b4f6b6011a98`  
		Last Modified: Mon, 05 Oct 2026 21:57:50 GMT  
		Size: 8.0 KB (8035 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:e7c5df758547be3483af60080a2c6a846c47a83574e8d6c164aa10d0bb09842a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55752259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38c500a0601ecc6e3f0fe964bb7a157737e70f46bde33a8d336395d7eb5d1619`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 04:42:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 04:42:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 04:42:05 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Sat, 19 Sep 2026 04:42:05 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Sat, 19 Sep 2026 05:21:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 05:21:49 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 05:21:49 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 11:22:25 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 11:22:25 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 11:22:25 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 11:22:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0a47d14acff0cb2bad267667bcdb0c8eff8a09fd796bff4b618a369e996e2`  
		Last Modified: Sat, 19 Sep 2026 05:22:03 GMT  
		Size: 3.7 MB (3737971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495c7628dc12f9e4122147eba377f8699fa300bedcf0d5bf708636966afdd3fb`  
		Last Modified: Sat, 19 Sep 2026 05:22:04 GMT  
		Size: 14.2 MB (14167379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71318db2dcf1a45890271e0f8b5c7bf1475c2519cc1645ecdb090d68fcb5e0c4`  
		Last Modified: Sat, 19 Sep 2026 05:22:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6238c5fbd1f583f2234eea5de5d0543d96ee7732852a8ede14b762ab5d0c6fd6`  
		Last Modified: Sat, 19 Sep 2026 11:22:38 GMT  
		Size: 5.8 MB (5763097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:516970d64b634823d6e968f2ccacdaa5b99c93346cc8e1bc13341c5a5b612ef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6fd27b1bc7f17dd78ef15a5c565d2acda8112c99b90e5b8041b904935e857fc`

```dockerfile
```

-	Layers:
	-	`sha256:f3990dca3855bedb165c91de95da23f04c2a704126f227105b9c821c64ffca32`  
		Last Modified: Sat, 19 Sep 2026 11:22:38 GMT  
		Size: 2.6 MB (2554760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:707cb400e03e5216dfe817b0ce5cf68bc3279585301ef9b6220df993b3cd27b2`  
		Last Modified: Sat, 19 Sep 2026 11:22:38 GMT  
		Size: 8.1 KB (8111 bytes)  
		MIME: application/vnd.in-toto+json
