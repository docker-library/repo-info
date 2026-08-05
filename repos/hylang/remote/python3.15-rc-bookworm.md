## `hylang:python3.15-rc-bookworm`

```console
$ docker pull hylang@sha256:8ed95688dab128d3f01b080ccec5512805b67518471b82e8af8d7d6f0b7de2b5
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
$ docker pull hylang@sha256:1a1ebbd3554904f7d1bfc3280b89c3f66f57b5a1fd416c7df09f98f5720bcce5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51233656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e55e1cf82cb0572907abd85de7fb5c2fa896f7a7ee89d53668cc2d66c43b9dc`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:01:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:01:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:01:09 GMT
ENV PYTHON_VERSION=3.15.0b4
# Wed, 05 Aug 2026 01:01:09 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Wed, 05 Aug 2026 01:13:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:13:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:13:30 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 01:48:55 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 01:48:55 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 01:48:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 01:48:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:039e6f9f9752f74a3ff4a6a224f64c7c864da16ed98f882107704328f41b9c42`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 28.2 MB (28232590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d979ad67d9fea124ee7595c616b1d7982a74248054ac34c6c543f9615808e6b`  
		Last Modified: Wed, 05 Aug 2026 01:13:39 GMT  
		Size: 3.5 MB (3520791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb18c18fcb490d556c39eafbe3248174d3acb2fccd7e0ec53d8e01c8272a9e99`  
		Last Modified: Wed, 05 Aug 2026 01:13:39 GMT  
		Size: 13.6 MB (13601587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b7a54b32ae9f9aca0c4c04ec4e15ca75878440aac92817d544efed3d214bad6`  
		Last Modified: Wed, 05 Aug 2026 01:13:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dfb373addf441757dfc02ded5381b14289ba6711225887e55400a575d66ba5d`  
		Last Modified: Wed, 05 Aug 2026 01:49:02 GMT  
		Size: 5.9 MB (5878440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:1bf53697949601a953f37bf72f823a745bda05f2f3d4742fc71cfe3740ad00c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2ce74b315f6d50c1d7942b1ef0297a7d776e27a853f27ea8e70ba0c4a0936e`

```dockerfile
```

-	Layers:
	-	`sha256:c116faf42580767310111c8b4cee526b3b824e3f114d33167a40ff77db7048e7`  
		Last Modified: Wed, 05 Aug 2026 01:49:02 GMT  
		Size: 2.5 MB (2530876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b71f2dbdcfdca7f42d2115b785d598580b9b2c437e0d62213e02ea5175f2e094`  
		Last Modified: Wed, 05 Aug 2026 01:49:02 GMT  
		Size: 8.1 KB (8066 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:c404ab1581a51ec8e2cd3e5391b45e504a5c34afef1ea15b4578f26c1364b90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45734859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab643065102ae4944845239297bf8d0fe060e3b6d1f29ca1d1400181b712e0a0`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:37:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:37:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:37:36 GMT
ENV PYTHON_VERSION=3.15.0b4
# Wed, 05 Aug 2026 01:37:36 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Wed, 05 Aug 2026 02:01:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 02:01:48 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 02:01:48 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 02:58:08 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 02:58:08 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 02:58:08 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 02:58:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41011a4d3409074de1a4ea5ffddf3b8364ff0f7e9e130307ba872c887db83c91`  
		Last Modified: Wed, 05 Aug 2026 02:01:56 GMT  
		Size: 2.9 MB (2928801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd67d8989236bf24d55d422df75e12c992f891a3e008def9a0965511a9607b6`  
		Last Modified: Wed, 05 Aug 2026 02:01:56 GMT  
		Size: 13.0 MB (12987504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5760848b9b387566a843dad59e9e8daf44bb503fda38743c300f383ff5d7856b`  
		Last Modified: Wed, 05 Aug 2026 02:01:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17730bd724e1ab8dc69f58ca1e4616744019164091ec4e149166526d788be613`  
		Last Modified: Wed, 05 Aug 2026 02:58:15 GMT  
		Size: 5.9 MB (5878555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:459563a158797711ad556f58b3c7c7c5504c4416c074ddbb5119b149d2072853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2541267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e67ab808a14416baf4ab5395e33f423d8cb90539bf1355f0f812132c9d7840`

```dockerfile
```

-	Layers:
	-	`sha256:19860e4c86b122cf01c9575ec4466408e7540909171413682219ccd6060ae14d`  
		Last Modified: Wed, 05 Aug 2026 02:58:15 GMT  
		Size: 2.5 MB (2533121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:354354c42b18bdcdd7d07a4d2fd078c8b60ef716040c82ad360452b3b5ca7523`  
		Last Modified: Wed, 05 Aug 2026 02:58:15 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:805e70ed43ce56a25a1f60a77d09a1f37d1005b4941aca4214b4f64aa96eec81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50840722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:467d8654a282e02484b759b9df247c3c5edbc22880610297dfb6c33d0296e4b7`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:04:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:04:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:04:14 GMT
ENV PYTHON_VERSION=3.15.0b4
# Wed, 05 Aug 2026 01:04:14 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Wed, 05 Aug 2026 01:19:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:19:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:19:28 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 02:23:26 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 02:23:26 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 02:23:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 02:23:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0f5d7465a5bb9d419f60c93d126a161286c73a1ede4a8b2e46bd5e7ad5782cc7`  
		Last Modified: Tue, 04 Aug 2026 23:51:47 GMT  
		Size: 28.1 MB (28117202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec99e59d39f29bbee2086b968d1604bdf75993f7416a97c843340dfde8ba0913`  
		Last Modified: Wed, 05 Aug 2026 01:19:37 GMT  
		Size: 3.4 MB (3352722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05811009e51107e294eccdc0006dcae7a108cbbcf38186d9e2406834a37aa68e`  
		Last Modified: Wed, 05 Aug 2026 01:19:38 GMT  
		Size: 13.5 MB (13492012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628f961019111fdcd0774f318391c3541228ed00a2e7051271d0f1ea4a52556f`  
		Last Modified: Wed, 05 Aug 2026 01:19:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc64fa931af48c5bb7df0e5a04ab5b870db3858abc6d05e24822e620a6dd6e1`  
		Last Modified: Wed, 05 Aug 2026 02:23:34 GMT  
		Size: 5.9 MB (5878538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:1decde664fa1d4f7c0dbb0670b4ecf35f645552c04f931c0e4efb294ef83da32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c42d2ea0849b442039c6f9d08645dcda767bd9d1b0106c0dee80a533769137`

```dockerfile
```

-	Layers:
	-	`sha256:1fa9ba90f63a2130163ca1d1fe64fa24ee13a31519fdcfdd705e3ad9dd0e3ee9`  
		Last Modified: Wed, 05 Aug 2026 02:23:34 GMT  
		Size: 2.5 MB (2531141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4737337ebe270a2810cf449162725bb5a764610c8b015b382c7c8fcecb60203f`  
		Last Modified: Wed, 05 Aug 2026 02:23:33 GMT  
		Size: 8.2 KB (8170 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:f6533fc0f783c54308fbea8646b64ce2323d891c69a10cbcc8f56fb1dd3bd845
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52273568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad7444d2592e8694bcfccab451b062d9fa2f7746b3ed932b0d4b194950b45950`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:58:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:58:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:58:06 GMT
ENV PYTHON_VERSION=3.15.0b4
# Wed, 05 Aug 2026 00:58:06 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Wed, 05 Aug 2026 01:12:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:12:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:12:25 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 01:53:53 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 01:53:53 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 01:53:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 01:53:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f07033bee7bd77f0bb45d8d79e0c1702af7e90872e8e16fd61375f07d076695e`  
		Last Modified: Wed, 05 Aug 2026 01:12:33 GMT  
		Size: 3.5 MB (3521283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9775728c526784ff8ac2fb82eee1cf905014413298b12333d0b599bd3081a9e`  
		Last Modified: Wed, 05 Aug 2026 01:12:33 GMT  
		Size: 13.7 MB (13652451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e5f7ae566b88ff8a65746c7d589032e3fc965c74c907768f835d42408d2c45`  
		Last Modified: Wed, 05 Aug 2026 01:12:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:710235d36bfd44ae5362522482e4b85a34ac4176e0685029a2e731e412d38179`  
		Last Modified: Wed, 05 Aug 2026 01:54:00 GMT  
		Size: 5.9 MB (5878608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:a1c0e18555bc399e19961097d0ec881eb3e8470fb7c42a02ae3fdfbfb11597bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:027f75ae26a777f729f7f100fd934da5729e3a8d62a10bd258b9c659c192af7c`

```dockerfile
```

-	Layers:
	-	`sha256:e4da036c0d3e8126f600785b13a29e2e301eadb882d6ea6dcb64f3f83125b8d4`  
		Last Modified: Wed, 05 Aug 2026 01:54:00 GMT  
		Size: 2.5 MB (2528043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:723d955a95da26a3d6ad009200c71b31a41600fe31fe287ce8092b79b4647cb9`  
		Last Modified: Wed, 05 Aug 2026 01:54:00 GMT  
		Size: 8.0 KB (8034 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:dd7bd99ad5d34c19c2981c6cd7d6d49419e4ccdaafee2e9b6074dd49ab18296e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55844256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c3b3932ebf0ad0a84d2dae2c4cba3e5bd7dc0a646c1b827737e8a2d7a9fc21`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:41:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:41:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 01:41:30 GMT
ENV PYTHON_VERSION=3.15.0b4
# Wed, 05 Aug 2026 01:41:30 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Wed, 05 Aug 2026 02:21:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 02:21:56 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 02:21:56 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 08:13:54 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 08:13:54 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 08:13:54 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 08:13:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbe48008e56a7ff764f2ec9f622e733b9bd729b5c22c64a4e5103e6193ee1876`  
		Last Modified: Wed, 05 Aug 2026 02:22:12 GMT  
		Size: 3.7 MB (3725234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2282bf294813b33f2a666e124c995083af3a83895b96ac20f0f2dbb2d6ead051`  
		Last Modified: Wed, 05 Aug 2026 02:22:12 GMT  
		Size: 14.2 MB (14163803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f3b75ac3b68d0d8bdca0eaa212e0eee75cf40a628bd7cda6ef1a63b9abdcaa`  
		Last Modified: Wed, 05 Aug 2026 02:22:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e025e01f96543803be9e7127d43a1583bbc7956e24ffbcfbfea9f2bf4b5bfb`  
		Last Modified: Wed, 05 Aug 2026 08:14:09 GMT  
		Size: 5.9 MB (5878648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:04d02351c32c1e2aacb952425d1dbfb14b06b2890a818652fecdad606bd91a96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2543424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7692bb1ca475bf397c0b964954572aa43d949af3232e3354dfe9ba47487aef9c`

```dockerfile
```

-	Layers:
	-	`sha256:7a35ba536bff67f477f78d6bb078e55ebfa610ff6c4673d12b1241454e69b9e4`  
		Last Modified: Wed, 05 Aug 2026 08:14:09 GMT  
		Size: 2.5 MB (2535314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b75692e1b2e42ff68c24ecb565242957cbd130686226fdefe1a325ec9177bc3`  
		Last Modified: Wed, 05 Aug 2026 08:14:08 GMT  
		Size: 8.1 KB (8110 bytes)  
		MIME: application/vnd.in-toto+json
