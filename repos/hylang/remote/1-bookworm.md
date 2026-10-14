## `hylang:1-bookworm`

```console
$ docker pull hylang@sha256:43a6a49d69a176fb1334ee1e3dc9d3579462cc1cd322a023796e64b4a00376e0
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
$ docker pull hylang@sha256:5b9924bc6f1a1e9294f5781f502ea60a682119fe5d4b7e85c0ee55a233c4b617
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.3 MB (53263058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a9636428db214cb51e3481b5fbf80e41381de790b844f82a12f8ea9626bb1e4`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 22:27:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:27:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:27:18 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:27:18 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Mon, 12 Oct 2026 22:38:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 12 Oct 2026 22:38:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 12 Oct 2026 22:38:05 GMT
CMD ["python3"]
# Tue, 13 Oct 2026 23:03:37 GMT
ENV HY_VERSION=1.3.1
# Tue, 13 Oct 2026 23:03:37 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 13 Oct 2026 23:03:37 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 13 Oct 2026 23:03:37 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0189723043ee1d4139991625b5014fd4f6dc7c70f80f92bcab9cfdf8f603e544`  
		Last Modified: Mon, 12 Oct 2026 22:38:13 GMT  
		Size: 3.3 MB (3342298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0ac79ad66a161bb5504aa4cb1297708059499f7a050fc823adce5a05c9baef`  
		Last Modified: Mon, 12 Oct 2026 22:38:13 GMT  
		Size: 15.9 MB (15907121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e55f5d15f01944485878bda7e8b242a589d0f344a06a11640366c25e3e5f54b`  
		Last Modified: Mon, 12 Oct 2026 22:38:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1dd6bf48ff9b66125c6fc098aaf0991057a399fd3dbc95f91b2e495a47cc83b`  
		Last Modified: Tue, 13 Oct 2026 23:03:44 GMT  
		Size: 5.8 MB (5764067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:114a1269455b3a9dacf50630ba71e106362314832ad710ca0c3ee7c5100010b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5710dc23f1801b739b4902d2c888d5dc7203e29dfc6709345b3dadb6829e450`

```dockerfile
```

-	Layers:
	-	`sha256:87a85b4fdf8426a8a26151513aeba34dcf4b46def8153f6b24188bc8c3aa7666`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 2.6 MB (2551524 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac8b4b7e5f9263f54af0d780d70136d2a88b6d496af1084a4b9bfa7e14281f22`  
		Last Modified: Tue, 13 Oct 2026 23:03:43 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:4e0157d3950b5464062055257535e05c41b7e3f98a869d853b8bb485f0ac0c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47560345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc10d027d90a6e18f199a8b3e173d77f2c938755abfb333f05d0abbb26d4b527`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 22:27:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:27:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:27:19 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:27:19 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Mon, 12 Oct 2026 22:51:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 12 Oct 2026 22:51:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 12 Oct 2026 22:51:34 GMT
CMD ["python3"]
# Tue, 13 Oct 2026 22:56:35 GMT
ENV HY_VERSION=1.3.1
# Tue, 13 Oct 2026 22:56:35 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 13 Oct 2026 22:56:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 13 Oct 2026 22:56:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3b6497109c3afea90bd6c6978da451c0277ece8eb36236164f831660029a82`  
		Last Modified: Mon, 12 Oct 2026 22:51:42 GMT  
		Size: 2.7 MB (2748594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6abc9aec3f9352709d225a75976931b463f17de1e3c02329cad18f1cab2652`  
		Last Modified: Mon, 12 Oct 2026 22:51:42 GMT  
		Size: 15.1 MB (15090745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5361a3ef259074c6e576dff8542885b54903258412384d1fc907fbe62be72e0f`  
		Last Modified: Mon, 12 Oct 2026 22:51:42 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60e2d66d705f8d83b4cb9633a4bd260b41cd65a5876511723f2d2c0f74d3eb6`  
		Last Modified: Tue, 13 Oct 2026 22:56:42 GMT  
		Size: 5.8 MB (5764185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:73482dbf1a8185332d90a22c5f18a6cee4fdcac04848d10f57469ff4a97b526e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2563172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124a05ebfebe7d76aaad6fdaaa57164a7b18c9fa6e03ee259c825a7fca34ae47`

```dockerfile
```

-	Layers:
	-	`sha256:d70d4215d6f8e7515113df8d552b311e14f59b4b1613fceaf39a8668868c29a4`  
		Last Modified: Tue, 13 Oct 2026 22:56:42 GMT  
		Size: 2.6 MB (2553801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85986b36118f140ac1f19640a9d02f010b01e9bc35472d8e56a76d27fc3eb404`  
		Last Modified: Tue, 13 Oct 2026 22:56:42 GMT  
		Size: 9.4 KB (9371 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:cd39d5ad85bb8dbc788355298c7f0a8e35118c5e6ef6f2a6b2c6c1e259804712
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52832312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93e325486afdfeefd3b5e40af1585e0e8a9b55092b1e4e0033d932cb5f7d93f`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 22:26:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:26:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:26:44 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:26:44 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Mon, 12 Oct 2026 22:41:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 12 Oct 2026 22:41:58 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 12 Oct 2026 22:41:58 GMT
CMD ["python3"]
# Tue, 13 Oct 2026 23:02:40 GMT
ENV HY_VERSION=1.3.1
# Tue, 13 Oct 2026 23:02:40 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 13 Oct 2026 23:02:40 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 13 Oct 2026 23:02:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beb28d6fd607a092c47cb6349ec2a1e2c987f7d0ec1d522e4355553f1a8ac87`  
		Last Modified: Mon, 12 Oct 2026 22:42:07 GMT  
		Size: 3.2 MB (3176221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c8c86a99740d8a3f054bcb1e75b64ba6ac41e37d60e8a86689b1b2463fac96`  
		Last Modified: Mon, 12 Oct 2026 22:42:08 GMT  
		Size: 15.8 MB (15754487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010b4b43fd896410ecbe8487e0a2a10540495ab4587e5f2d6bc66dda0b763428`  
		Last Modified: Mon, 12 Oct 2026 22:42:07 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cdd3cad2193b69045e0c9373453632d20db153741db3ac0fcbceae322aee2c7`  
		Last Modified: Tue, 13 Oct 2026 23:02:48 GMT  
		Size: 5.8 MB (5764175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:7665e276317f3d28ccbeeeee00b48df67494b3b1a028078752658c0b4bd490b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c891c5d1a66e9cce0878249af463216f8b4133dbff5bc185004e1e9a5d36369`

```dockerfile
```

-	Layers:
	-	`sha256:f02461828eae5cdab3818ea9a47e393aff0223d0e0d24e5b924d542a776c6ac3`  
		Last Modified: Tue, 13 Oct 2026 23:02:48 GMT  
		Size: 2.6 MB (2551837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1dc454cc47eef760b45970609440e6f7b193e2cf47405f2858fddf68a923fff`  
		Last Modified: Tue, 13 Oct 2026 23:02:47 GMT  
		Size: 9.4 KB (9411 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:9d61d60cb1761f4fa940325393cf6cfed61a33eb2781db620eaf34bdb8beab48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54443285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c33113e080829fe16805d721469f30ff08b5b299d450622d4c10e890d11b8175`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 22:26:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:26:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:26:44 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:26:44 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Mon, 12 Oct 2026 22:41:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 12 Oct 2026 22:41:09 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 12 Oct 2026 22:41:09 GMT
CMD ["python3"]
# Tue, 13 Oct 2026 22:57:24 GMT
ENV HY_VERSION=1.3.1
# Tue, 13 Oct 2026 22:57:24 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 13 Oct 2026 22:57:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 13 Oct 2026 22:57:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7951f604b70bb29de3c6f6b3086a9816ce484ac3dabca3f022ea806255b8497c`  
		Last Modified: Mon, 12 Oct 2026 22:41:18 GMT  
		Size: 3.3 MB (3348046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8483c3ed9609012b7412c03208d3bead99dab2bbc9f2f736347763dafb63c42a`  
		Last Modified: Mon, 12 Oct 2026 22:41:18 GMT  
		Size: 16.1 MB (16091396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86687e3ca4fdb93016bf536a775a5d970c5cef54232ffe32fcb214ac26326777`  
		Last Modified: Mon, 12 Oct 2026 22:41:18 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1926a3161c3d81e94d9462076d55b6c5ce14cdfc527775636bef555d5f6901c7`  
		Last Modified: Tue, 13 Oct 2026 22:57:31 GMT  
		Size: 5.8 MB (5764220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:13b42667b00ac2aaedcffbc3a8269af281b12895e2cade570392379cd228e86e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aca0ecc73ca383acb0760d11f040c054b106d63bc9e0c7f6504368ba10dc1e5d`

```dockerfile
```

-	Layers:
	-	`sha256:502f4628be00a07a2a43f9e5d6c9542b58ca3a34f65fad70516ce1e588c18be2`  
		Last Modified: Tue, 13 Oct 2026 22:57:31 GMT  
		Size: 2.5 MB (2548671 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:24696991074243612d18cfa548a9c7d9a26b4c796cd8e373c6212133259452a8`  
		Last Modified: Tue, 13 Oct 2026 22:57:31 GMT  
		Size: 9.2 KB (9207 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:68027e01b5d49129f311afd60f6833fd7d825b51a9800f50ac78e86cd746fa85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.0 MB (58044080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ebf2a6cdf5a811a790a9e8a64de1fa75a197ac39b13d9f2f470ab043a267b0`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Mon, 12 Oct 2026 22:55:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:55:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:55:54 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:55:54 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Mon, 12 Oct 2026 23:43:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 12 Oct 2026 23:43:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 12 Oct 2026 23:43:29 GMT
CMD ["python3"]
# Tue, 13 Oct 2026 23:19:25 GMT
ENV HY_VERSION=1.3.1
# Tue, 13 Oct 2026 23:19:25 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 13 Oct 2026 23:19:25 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 13 Oct 2026 23:19:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fc434283aca15ecb79e19fa8da379f7d024477334fbbac450d889a29d9e6f3`  
		Last Modified: Mon, 12 Oct 2026 23:43:52 GMT  
		Size: 3.5 MB (3548126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08bdcbd0391227c376dcfb9b35d22237349bcec8bce6c38b044f6516b1ba902a`  
		Last Modified: Mon, 12 Oct 2026 23:43:53 GMT  
		Size: 16.6 MB (16638869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5040c5c93366b60384411d2784debf816f67dce20d0e6202220810c5a0527871`  
		Last Modified: Mon, 12 Oct 2026 23:43:52 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764b8daf0a4a0601b700ece53d831748933e75109d100f0eba5e45adf2e540f4`  
		Last Modified: Tue, 13 Oct 2026 23:19:51 GMT  
		Size: 5.8 MB (5764401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:2f74dc313bffd7720b6cc66ee02675eb37cd7845b1efe33fa672dcf75a817ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2565313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d52bf545bdd9c2cf6e7d2e037433f495f392ec4e0db08019285c8684761a587`

```dockerfile
```

-	Layers:
	-	`sha256:a228990b36c4d3903f4ff2760e446b162974c268351261504896e0dc827b616c`  
		Last Modified: Tue, 13 Oct 2026 23:19:51 GMT  
		Size: 2.6 MB (2555986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07fe3eccc88600e612ac45afdce856642dca5556cd41891ba593c91967c810ab`  
		Last Modified: Tue, 13 Oct 2026 23:19:51 GMT  
		Size: 9.3 KB (9327 bytes)  
		MIME: application/vnd.in-toto+json
