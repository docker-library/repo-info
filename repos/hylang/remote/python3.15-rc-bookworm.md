## `hylang:python3.15-rc-bookworm`

```console
$ docker pull hylang@sha256:bfab81ca1bd97ad2ed15e8f1ced695067185e74158163ca9242c9fa9b628256b
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

### `hylang:python3.15-rc-bookworm` - linux; amd64

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

### `hylang:python3.15-rc-bookworm` - unknown; unknown

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

### `hylang:python3.15-rc-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:8473ca3ec7d5e7a9737a65370a2ff256023cf3098b3dc19a805fdf25401a7841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48186077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2696faed53b5c4e719b6068ea6c24f1831edfc1b174f78c86f316c5d41073bc0`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Mon, 05 Oct 2026 21:30:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 05 Oct 2026 21:30:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 05 Oct 2026 21:30:00 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Mon, 05 Oct 2026 21:30:00 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 21:53:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 21:53:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 21:53:42 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 22:15:17 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 22:15:17 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 22:15:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 22:15:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3c7653d4d32e5570e60ea0ae019c77e560b1f8a16282f0e73e78388a08843d0`  
		Last Modified: Mon, 05 Oct 2026 21:53:51 GMT  
		Size: 3.4 MB (3387521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f878f05ed9f6c45da5c97a1809ce4437d23f230f3d29c5f067f39ea2f5f74a86`  
		Last Modified: Mon, 05 Oct 2026 21:53:51 GMT  
		Size: 15.1 MB (15091036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d854da7f9dfb9378eb50a5f19ce5bf8802c8e979a9c2f9684e2bc19b1b61e76`  
		Last Modified: Mon, 05 Oct 2026 21:53:51 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b535399b3bb016e33a0a7594f23a0f820b397aaaed7521efbd073fc21a986565`  
		Last Modified: Mon, 05 Oct 2026 22:15:25 GMT  
		Size: 5.8 MB (5764154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:35f0b0d28948a655709fbadad3170a681ef273d293d22ef4cef99540fd76193d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca0339aa8297942e4ac754308a17bd6879a3f134b19ff2d22199208a3ee7b59`

```dockerfile
```

-	Layers:
	-	`sha256:7e004264630b93541dd17bee8aa21c51b22256a7cb309d6d012a19178933c8c9`  
		Last Modified: Mon, 05 Oct 2026 22:15:24 GMT  
		Size: 2.6 MB (2552567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38de7e9bf022adda3601d38242befc2be811005931b162b3a640158a079043c5`  
		Last Modified: Mon, 05 Oct 2026 22:15:24 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:07652f47eb6c2f4243932b2080c37beb38c9bbb9f70b1074f56d95e11d6c8622
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52832196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ac311af17857da5fe49f75221fbc5bc6292de61186c61135b2d24c7971f831f`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:56:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:56:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:56:16 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Tue, 06 Oct 2026 01:56:16 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Tue, 06 Oct 2026 02:11:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:11:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:11:53 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:44:18 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:44:18 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:44:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:44:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e3bec8a1229bc6d1becb8e6fcf6ec87008b84936136993d077b09e30512af1`  
		Last Modified: Tue, 06 Oct 2026 02:12:03 GMT  
		Size: 3.2 MB (3176255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2429cd21f7f6e77427b53e78bd7d2cae0b4c657d6db7e898f298aa10d01cabb2`  
		Last Modified: Tue, 06 Oct 2026 02:12:03 GMT  
		Size: 15.8 MB (15754425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc9bb35ec553a679cd118007bdbb4e876c8558b52453cb84980d4d3329178ef`  
		Last Modified: Tue, 06 Oct 2026 02:12:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3732b75dc87f8fcae2d278dea6fb17a517d528a1fe2b32e3c7a519812e55c004`  
		Last Modified: Tue, 06 Oct 2026 02:44:25 GMT  
		Size: 5.8 MB (5764087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:93e6186e98194b03b91d7404964088588ebfe78c10f00f43e37b79e3242ec90a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aabf973cfa9a83f0d8aa565c97251949cb74bb81d400eedecb1ae562ea09abca`

```dockerfile
```

-	Layers:
	-	`sha256:8e5e7f000f1eb58aa8355c034d1f53d3090b62d73859faa7d852155debfe3813`  
		Last Modified: Tue, 06 Oct 2026 02:44:25 GMT  
		Size: 2.6 MB (2550587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:beb44397b8260b41f3738b01c92c677849ec489fe4ab04dda91015cc59d38f8b`  
		Last Modified: Tue, 06 Oct 2026 02:44:25 GMT  
		Size: 8.2 KB (8171 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:4ea3d7c89fc8d9ec2983d34d4e31654b6ee7ade8a0c46f9b1179306a55089e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54443025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7de90c6c70171a535c6dc7ec67589bd300c55a73f3c403850f4e9a15298c5e5c`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:53:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:53:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:53:20 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Tue, 06 Oct 2026 01:53:20 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Tue, 06 Oct 2026 02:06:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:06:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:06:07 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:48:58 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:48:58 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:48:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:48:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa523bb6c945555ec957d3e1ac6e772d22aefd5ccbf45e8f2308a66de515f4e`  
		Last Modified: Tue, 06 Oct 2026 02:06:14 GMT  
		Size: 3.3 MB (3348032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228b26c0eb2444657f5703a8ddc41e0700784e01cdfe17fb434f05c66a06a55c`  
		Last Modified: Tue, 06 Oct 2026 02:06:14 GMT  
		Size: 16.1 MB (16091187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c52f45b9f04070c0b22f390d61e1cab7983fd167a34dc5b3bd7b965d01d0db2`  
		Last Modified: Tue, 06 Oct 2026 02:06:14 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d011a4b642a476fc487ae094ac3052eab597a1b55a73edc1c1b041caf20f366d`  
		Last Modified: Tue, 06 Oct 2026 02:49:04 GMT  
		Size: 5.8 MB (5764182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:175ff57a2017586d94c5c546bd24beb2851b8c73002fe21bec4af0ac06084d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2555524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735ad35123d2dbd04d40591c6dd9fc42627b4d72ee2a44b1021474546ce405ea`

```dockerfile
```

-	Layers:
	-	`sha256:618caa5ed203edaa53b7d24f8225f8c442b105b2e05b1e071d6b3ee2428e085e`  
		Last Modified: Tue, 06 Oct 2026 02:49:04 GMT  
		Size: 2.5 MB (2547489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0dbf2db3afee880f01c6add64a58171ff35deb3db83310a02288f44a2628e326`  
		Last Modified: Tue, 06 Oct 2026 02:49:04 GMT  
		Size: 8.0 KB (8035 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:60edeb5d077c83c75116db0b127fb6f473fa3e890d87c839bfcb8c10dd004242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.7 MB (58673864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02c21c8ed08d0a98c9779d9ea8cb11f60d24e9cb9b288d69fb13c743ed60f96e`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Thu, 01 Oct 2026 22:04:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 22:04:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 22:04:25 GMT
ENV PYTHON_VERSION=3.15.0rc3
# Thu, 01 Oct 2026 22:04:25 GMT
ENV PYTHON_SHA256=506630aa66d5441188f34df22c0760bfe87fc92212630493ebc9ff3b3a7a1d49
# Mon, 05 Oct 2026 22:37:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 22:37:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 22:37:21 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 23:21:23 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 23:21:23 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 23:21:23 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 23:21:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0c8ba5d0c541c4fb0b8a3cfb9194137798e92c7af67d551a5ad9866e3d0f41`  
		Last Modified: Thu, 01 Oct 2026 22:48:18 GMT  
		Size: 4.2 MB (4187061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d816cc2d0effe52492c1dcdeca29a3abdec9f3e91a1dbe59c53109ba19f8ce6`  
		Last Modified: Mon, 05 Oct 2026 22:37:40 GMT  
		Size: 16.6 MB (16638746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35364b41e66c03973ce56115b9277c6012088eafd2d937c81d43d7c696d60f56`  
		Last Modified: Mon, 05 Oct 2026 22:37:40 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af2a0bebed492d556afb78b4d5c86f74eb95c62f49d9927a04f1ca2d40eafc66`  
		Last Modified: Mon, 05 Oct 2026 23:21:50 GMT  
		Size: 5.8 MB (5764242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:6dcba1687991f8b91b21b5b8c28676d99c268752a1b9bd7c95d5a338c39b27ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090217f553d3a82c13e75feb6814031621f3c45f47a9e585d9f0d24209422f88`

```dockerfile
```

-	Layers:
	-	`sha256:bba1986b75d5702321e1be1fd18447a8eda6abadab3970ea3eb6145ba12adf6d`  
		Last Modified: Mon, 05 Oct 2026 23:21:50 GMT  
		Size: 2.6 MB (2554760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e864417b4e4744f3ee72b078fbe533fa86f99928a6358c8fda2c555839a5101a`  
		Last Modified: Mon, 05 Oct 2026 23:21:49 GMT  
		Size: 8.1 KB (8111 bytes)  
		MIME: application/vnd.in-toto+json
