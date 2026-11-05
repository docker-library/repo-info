## `hylang:1-python3.15-bookworm`

```console
$ docker pull hylang@sha256:d04678d410c50f069ef5a5ff32bf503e0fee81d9b574a67dc3998943c7f13233
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

### `hylang:1-python3.15-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:87b59e8ef59ed595faabf681af398fc7dfc9e9002311bc21572668c97e772f0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51130417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8013540ee62357cc18595d09f86a1091c9ecafac1937e386046b950abf6c8e0`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:51:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:37 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:51:37 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 07:51:37 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 08:02:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:02:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:02:39 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:49:46 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:49:46 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:49:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:49:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405d30f28a335404e3946197ddc44f8705e0ad65a7719cd620e3b54fbecd6dee`  
		Last Modified: Thu, 05 Nov 2026 08:02:46 GMT  
		Size: 3.3 MB (3341506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d567d774d86f4585569f43b9f58123bdc46c31de791915ceff09ba524e241d5`  
		Last Modified: Thu, 05 Nov 2026 08:02:46 GMT  
		Size: 13.8 MB (13817110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313a3d8b6fc61b6b6ea9b853f0dd4663b0c669ffcfc19a752181193feba88feb`  
		Last Modified: Thu, 05 Nov 2026 08:02:46 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0e2241f6b89c944c1fd40e13ba1c00be994c43dce631bf781ed365127a1b93`  
		Last Modified: Thu, 05 Nov 2026 08:49:53 GMT  
		Size: 5.7 MB (5723570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:a2a02b7bec10f16c1aae405936e4fa2415903242f907e4fb33bc48ce0e3e3c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8052b4bf17ebfffcf76c8cac2632042a522d4ec474a1e2ef2c6de6920186c4f`

```dockerfile
```

-	Layers:
	-	`sha256:555a9fa57a98b64bfdf4114f21b60eaef2ed126b2ec580a46840cd26fbddfd03`  
		Last Modified: Thu, 05 Nov 2026 08:49:53 GMT  
		Size: 2.6 MB (2550231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cffaac20df65dac3f9105c34c41b923fa82ff9139f09b4f82ca81107640babba`  
		Last Modified: Thu, 05 Nov 2026 08:49:53 GMT  
		Size: 9.3 KB (9274 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:abf417a655fe7190a58efc271361b372553051f7886a40e6d63babc645b33f8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.6 MB (45599113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20ab65f4cef3cc178cb24de8d9bbe16dea685b2be2452fc1950fb38709a590b1`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:34:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:34:26 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:34:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:34:26 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 28 Oct 2026 02:34:26 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Wed, 28 Oct 2026 02:59:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:59:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:59:29 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 03:50:52 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 03:50:52 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 03:50:52 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 03:50:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41300907385ec3114dcc25701382b1500630b4c04ba165861e72bf1691a434b`  
		Last Modified: Wed, 28 Oct 2026 02:59:37 GMT  
		Size: 2.7 MB (2746606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1575cbf919f7f1d8171e958496851e53b1583f88ad476432dc0d5799ff5efc1a`  
		Last Modified: Wed, 28 Oct 2026 02:59:37 GMT  
		Size: 13.2 MB (13167733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc907850cd271faf62c842ff9986bf0200b46f8f7c4c263bff62e6dead5a84c`  
		Last Modified: Wed, 28 Oct 2026 02:59:37 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c934c2fa9e7d6a4c804231a7eb796b70def273bc6463f0b9201005a06b0a3e`  
		Last Modified: Wed, 28 Oct 2026 03:50:59 GMT  
		Size: 5.7 MB (5723558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:1ec170c81421e6971cd10af4c153f9a0402f0aa1cfa00e171cf82f88c23477c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ea43b1396ba3ca32a20f1d860f835ec70243cf6677b39e04bf63375e5c9b831`

```dockerfile
```

-	Layers:
	-	`sha256:109c4432f0cce51f43ea0973a3225b33213616a6a68a49a57aefb4cec0ed3643`  
		Last Modified: Wed, 28 Oct 2026 03:50:59 GMT  
		Size: 2.6 MB (2552508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f704ebd7b47260ecddc7aeb99c89c6f9b4912fc5be2c8b065a312c2232c6308b`  
		Last Modified: Wed, 28 Oct 2026 03:50:59 GMT  
		Size: 9.4 KB (9386 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:358666f80f501a82ce3b7d8aa17de171bc5c0650993639e7ce32f3b18a56a5be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50734186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de5cbafd2d2a15dd6e69c8716257334389e63a3156a094fe53e192533aa14783`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:56:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:56:57 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 07:56:57 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 08:11:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:11:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:11:55 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:49:57 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:49:57 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:49:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:49:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d7b7d50a0b6dd47f9cb139c724eeea92951a58dbb624c8c0c856de53971e68`  
		Last Modified: Thu, 05 Nov 2026 08:12:04 GMT  
		Size: 3.2 MB (3174175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a3d36a52a2e40de1f82d7b38173a57d19f6f89f55265b9a3a6761153f6cdd0`  
		Last Modified: Thu, 05 Nov 2026 08:12:04 GMT  
		Size: 13.7 MB (13691807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da1d4779cd32477a2dab74d231e453e4b3bf32a9f6e7070b471c0e212611047`  
		Last Modified: Thu, 05 Nov 2026 08:12:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb6880b7082a9d67b3d94ff5262de138ed1a68b524a5fe9b8e264ebfb303c44`  
		Last Modified: Thu, 05 Nov 2026 08:50:05 GMT  
		Size: 5.7 MB (5723598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:aa489b7a21edf85dea2b2ea58ad05c9386837a5519aaccd4e5687a1d9cc455a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ad39ba6517e996e2846d7159a703838e99eb320e9f01392a2f4efef38f27c5c`

```dockerfile
```

-	Layers:
	-	`sha256:fea74773478bd21ecaea127bf23281c82a297b5e4c5405ef94edab866209ade6`  
		Last Modified: Thu, 05 Nov 2026 08:50:04 GMT  
		Size: 2.6 MB (2550544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:662af814875b8efb63c11b903b6b9d2144b1c54aa53ba59862f409952aeb6265`  
		Last Modified: Thu, 05 Nov 2026 08:50:04 GMT  
		Size: 9.4 KB (9426 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:c09184db8ec7e355df6a45f5a2b6a3459c573ab868370912381f19990a62760a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52153362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2473db26c8a92d14124189213a28908eb46d3da8200902672e91635ac9700c9b`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:48:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:48:54 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:48:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:48:54 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 07:48:54 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 08:01:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:01:33 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:01:33 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:42:35 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 08:42:35 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 08:42:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 08:42:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dbb4f975c82a8f673acbd937821dc3247edaa7ee814b4c9132f6f4e6cc58a91`  
		Last Modified: Thu, 05 Nov 2026 08:01:40 GMT  
		Size: 3.3 MB (3345732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee04978d35103f92fc817fbce1ae75aa1a2eb1f1e14dd82e2f92e2658ec03d1`  
		Last Modified: Thu, 05 Nov 2026 08:01:40 GMT  
		Size: 13.8 MB (13844524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1066d3c78710f6df8714f0885eda8f32848351a6c63d0163eea92cf0cbf438`  
		Last Modified: Thu, 05 Nov 2026 08:01:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18f03b5421d07b1a812ee2a154c5dfa8358c3271c4e7938622a8282759cba77`  
		Last Modified: Thu, 05 Nov 2026 08:42:41 GMT  
		Size: 5.7 MB (5723647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:30c534fa2898eda92ab6c4ca12e86b0867b92f4ed5e24227d62442d5d78032c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2556600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb2e01eb100bbc70ee6fdedab0cf35d1d75678939f4f93e2830b756186210a0`

```dockerfile
```

-	Layers:
	-	`sha256:b85d109b861cd7f5d995bf6cd73a1f2677e64a05b63ea872729b666620774e5e`  
		Last Modified: Thu, 05 Nov 2026 08:42:41 GMT  
		Size: 2.5 MB (2547378 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9e76ba0c62db74c08e105cbc558bba53964bc0676be49be895b0a0412af16a8`  
		Last Modified: Thu, 05 Nov 2026 08:42:41 GMT  
		Size: 9.2 KB (9222 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:2e07daf3c22efbc5a075858d96c8b913845bc25cb4cd65d2f54d277a8a484886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55755678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50052fcf1561d0be48b27c897ad38a128e72235d7e5738200f7f6e24b8f6c78`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 06:27:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 06:27:49 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 06:27:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 06:27:49 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 28 Oct 2026 06:27:49 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Wed, 28 Oct 2026 07:11:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 		--without-system-libmpdec 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 07:11:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 07:11:35 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 14:29:20 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 14:29:20 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 14:29:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 14:29:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3489e22b9fa2ff497dd5db25eb12eeb70e1e4b6246c19e39271ff2756e1f42e9`  
		Last Modified: Wed, 28 Oct 2026 07:11:50 GMT  
		Size: 3.5 MB (3544532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e6f3aefb044cad200a8130b968494de9bd4a91ce4c9e85a70d6b0cb84040f15`  
		Last Modified: Wed, 28 Oct 2026 07:11:51 GMT  
		Size: 14.4 MB (14394365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c20cf3db1ac376e153f4fbbb43a9325491219d84e306ba246fc16aa425b09cf`  
		Last Modified: Wed, 28 Oct 2026 07:11:50 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e77073f1ab1b9043c4738588d8511a38cf74d87b2148b79415b749f96aac0aa`  
		Last Modified: Wed, 28 Oct 2026 14:29:35 GMT  
		Size: 5.7 MB (5723690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:0bdf64a7699535154eb88f538ae0e2d3e6824fe8626b7f6d31f074a08d6b6a6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2564035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523c60209fea4831f591c811df7d08f50bbb2f4dc92dde70382b7543072a313a`

```dockerfile
```

-	Layers:
	-	`sha256:b93ead4e4cd19e9959712405f93d26dca2c6fc04efa542329666754d91c4ef48`  
		Last Modified: Wed, 28 Oct 2026 14:29:35 GMT  
		Size: 2.6 MB (2554693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76719ec4780e6cc88d145afa715a036eed46727d76e3678f6570bca589cf0f88`  
		Last Modified: Wed, 28 Oct 2026 14:29:35 GMT  
		Size: 9.3 KB (9342 bytes)  
		MIME: application/vnd.in-toto+json
