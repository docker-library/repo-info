## `hylang:1-python3.15-rc`

```console
$ docker pull hylang@sha256:cdf0aa43c3d3bcd6510224669aa701f1b29d7295bd81d6040edd8998eb269a76
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
	-	windows version 10.0.26100.33296; amd64
	-	windows version 10.0.20348.5499; amd64

### `hylang:1-python3.15-rc` - linux; amd64

```console
$ docker pull hylang@sha256:24c2ce457bd94d46c819ee59dc7974f4f986197378056f1b49e73ce084360f98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 MB (52755690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5498e11c33f028bf343b7ec1455e32422cd7e67ead8b2b9dd00ba2f985babf6a`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 22:45:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:45:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 22:45:30 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:45:30 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:52:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:52:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:52:17 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:06:52 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:06:52 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:06:52 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:06:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4db59513e43d60f678d1e995a61b53228b75c925d50f4ce49f815fb2714f66bc`  
		Last Modified: Tue, 01 Sep 2026 22:52:25 GMT  
		Size: 4.3 MB (4265350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939801b3aab7d01246c78d2539c8904ce8c3e955260ec3aee0ca2a1168da2a7a`  
		Last Modified: Tue, 01 Sep 2026 22:52:25 GMT  
		Size: 12.9 MB (12934672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a7a4917704275bbbb00ae5967757d58acdee9182e8a1e659d64831dadd6518`  
		Last Modified: Tue, 01 Sep 2026 22:52:24 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9ee27df6e998ed1c50c99dabe90453c253b5e7929030822457e433c11d3fdb`  
		Last Modified: Tue, 01 Sep 2026 23:06:58 GMT  
		Size: 5.8 MB (5762760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:7b395110ed1af0a8f006c3adc7e75b6666829b26c4b79d250f075c89ac4f3c7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2178111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cf8eb000d01f58cd8c6e0a53c5bd9fbb54500a790173befbac65c6c6c728825`

```dockerfile
```

-	Layers:
	-	`sha256:6c12bcb3b2208d9f009d465e7bdc5317517d0e62726b27966983aa0018a0a1ec`  
		Last Modified: Tue, 01 Sep 2026 23:06:58 GMT  
		Size: 2.2 MB (2168794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2d4d8021e4a12a91f1499c82a058a389916e7dc7d9518ad4491a610c5f646ea`  
		Last Modified: Tue, 01 Sep 2026 23:06:58 GMT  
		Size: 9.3 KB (9317 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc` - linux; arm variant v5

```console
$ docker pull hylang@sha256:c2279145c7d97cdb18d9197a1e7165e92222a90cf863a63364174fae063ffa2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50021854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad19aa5c447e7b8f12f33ac8980c04a58616e0c814e4f737c5426d0a8c22111c`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 22:44:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:44:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 22:44:55 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:44:55 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:55:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:55:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:55:27 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:02:22 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:02:22 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:02:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:02:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d87fdcccdc55b249fa043b7b54e18b00b15e7ad81315fa41163ec912549f56`  
		Last Modified: Tue, 01 Sep 2026 22:55:35 GMT  
		Size: 3.7 MB (3658688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f03f152addaa3eef8de3fd9c7f85eaf038c593b51d10c21c2229e66d848561`  
		Last Modified: Tue, 01 Sep 2026 22:55:36 GMT  
		Size: 12.6 MB (12630993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f457317f5c8b4a6e3a65247f291e3d1a9a9a167c023baf69d1f80da8e41ed3`  
		Last Modified: Tue, 01 Sep 2026 22:55:35 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380b7925c77630a0a05158ae5b0baf2dbb7eb5657cbd76018170f93e719a04d3`  
		Last Modified: Tue, 01 Sep 2026 23:02:29 GMT  
		Size: 5.8 MB (5762981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:c65385e90d86f72d919f4edf58494bfba0b9cc5dc2d342c73ffe482c321dbaae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2181224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d63b019ec6303e309aacb2d17770565685e8522882d6ecd79db0a78482f487f6`

```dockerfile
```

-	Layers:
	-	`sha256:fc94deaea7e74e5ef1f4ef43b5cad51a73a3c09df8206fc87fea460b3e3150c8`  
		Last Modified: Tue, 01 Sep 2026 23:02:29 GMT  
		Size: 2.2 MB (2171795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9315c384c2752f1aa19911459399a25e5ffa77f98eb944ed3f3b24bf97c86a1`  
		Last Modified: Tue, 01 Sep 2026 23:02:29 GMT  
		Size: 9.4 KB (9429 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc` - linux; arm variant v7

```console
$ docker pull hylang@sha256:9ee735d81a13dfd1754e6f0b2dcfbc2da7e846b6b13408a311f7b9448a7e86cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47982470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:400a8282fde42fe46cc6fca7d882964a1bc490e4dd7266b0f41fa5e584ffe76b`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 22:46:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:46:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 22:46:49 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:46:49 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:58:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:58:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:58:34 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:20:11 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:20:11 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:20:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:20:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f7c02778db9eff4835b27099fc91b9c54ebd4c3dba29e6f02605ba2b7c38b0`  
		Last Modified: Tue, 01 Sep 2026 22:58:42 GMT  
		Size: 3.5 MB (3460541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b182fe60ddbe5a914a6aebaf1c63ae580d2cedff932441798205e4a0f3f158`  
		Last Modified: Tue, 01 Sep 2026 22:58:43 GMT  
		Size: 12.5 MB (12539657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6505d7acca8f3c718c52242292d7add95209911d1cddc257593e5657642f83b0`  
		Last Modified: Tue, 01 Sep 2026 22:58:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08abd7d2ea1b0ace491c00f9ad0be51052036d09a8854c01e7304e8796ccba25`  
		Last Modified: Tue, 01 Sep 2026 23:20:19 GMT  
		Size: 5.8 MB (5762882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:a1f5508f408815b7d91d0f1c3c35b5f3f089ce51f8bffd3cdeb21a91e2dfe43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2179676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad88243918e4ad98b92bd93b36b353135bbbc2035a2ea6ac970212ba4bc2aad`

```dockerfile
```

-	Layers:
	-	`sha256:f5afffcaf903127fb8504dfc2c9aeb994890878f435325bd469ee98ef4dddc22`  
		Last Modified: Tue, 01 Sep 2026 23:20:18 GMT  
		Size: 2.2 MB (2170248 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c4daa5fcdddebbc133be2c34886bfc031bc632674f5c7a9618bc26d38c0a987`  
		Last Modified: Tue, 01 Sep 2026 23:20:18 GMT  
		Size: 9.4 KB (9428 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:1df3885dcd5a4f6c78febc74b338895202a449e841733e34675b45268ac35541
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53372269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d01a69df9aa0bf230016b16ea7bc2b274fab2713f1f991f6a27cbe5a95481c`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 22:44:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:44:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 22:44:57 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:44:57 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:52:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:52:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:52:50 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:07:40 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:07:40 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:07:40 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:07:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01fce760c90abd2e3dab8740197dad18b3212c5d6c3564a89311d574306c25d`  
		Last Modified: Tue, 01 Sep 2026 22:52:58 GMT  
		Size: 4.6 MB (4605910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1476b521190b35a5230fb0963aa2e818964e7e91c1aa11bb0e955ea600f7a6e8`  
		Last Modified: Tue, 01 Sep 2026 22:52:58 GMT  
		Size: 12.8 MB (12843696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c9fe673bf14cd9802036110ed01dccabb3dfc5186f7c4f030f603cabac4cbb`  
		Last Modified: Tue, 01 Sep 2026 22:52:58 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f720a997a36ba961180ed0e7118ffbcc138a6d681b890d00a6f11128d23a87`  
		Last Modified: Tue, 01 Sep 2026 23:07:47 GMT  
		Size: 5.8 MB (5762831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:41c525c66f78dd30e53c25f4b961d84b089b76fc47e3ce5b99fe927c79d4786d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2178569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:924d9b9ffdb49cc8b7b9f814faff84ec8f281776d60ee0936c1f9f599e73b57d`

```dockerfile
```

-	Layers:
	-	`sha256:99c5a43a1b5d76c7113dcbe9d30da91c2aa2047a8dc4a425aea29b9567b1b388`  
		Last Modified: Tue, 01 Sep 2026 23:07:47 GMT  
		Size: 2.2 MB (2169100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75d4a8fc8369f9a24a1d6ceac7fc4bc706a0bb0491db53e404a187047871c433`  
		Last Modified: Tue, 01 Sep 2026 23:07:47 GMT  
		Size: 9.5 KB (9469 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc` - linux; 386

```console
$ docker pull hylang@sha256:cce43fade6931f0e2d95db35480984ab4a03bda27968385b12cfbc2ea9a761f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54098111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ad39ed448f582a634c4e2d45182e007b8d8ab53d85e68fc4ce3f6f98106f39`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 22:46:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:46:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 22:46:29 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:46:29 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 23:07:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 23:07:43 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 23:07:43 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:17:55 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:17:55 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:17:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:17:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edecdc3067ae4d29798af333935565f310a2b2fe25de41f27f2ba30b3def78e0`  
		Last Modified: Tue, 01 Sep 2026 23:07:51 GMT  
		Size: 4.2 MB (4194980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c4a089919e48177466f02e82a844126abcaaab4d4e8096211eca8a716fe2a8`  
		Last Modified: Tue, 01 Sep 2026 23:07:51 GMT  
		Size: 12.8 MB (12836276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b0d2ad9643844d381a09325c2b5f81eeb0b7eda1ba70709bb18a9f4a3bb12b`  
		Last Modified: Tue, 01 Sep 2026 23:07:50 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c389c0fad5d50715f97b074b22ca676aca5e6a4b13841c8c93183282f924c8`  
		Last Modified: Tue, 01 Sep 2026 23:18:02 GMT  
		Size: 5.8 MB (5763207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:22e37cadbede28c7ab492643576d42cfe65e3a7398100e6fbcbe3957b7c06010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2175220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:194c75daa6cfb610d961edd315288513694cbb419e991daf66fc944e908c9af2`

```dockerfile
```

-	Layers:
	-	`sha256:32b166e31958e220edf8d3cab9a3d41142af322efca7e4ea4a77d0291655a4ba`  
		Last Modified: Tue, 01 Sep 2026 23:18:01 GMT  
		Size: 2.2 MB (2165955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:426da5a8e5481a15d4672bc459a8056f18785094b74d837e8d8a1cc21560c4ac`  
		Last Modified: Tue, 01 Sep 2026 23:18:01 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc` - linux; ppc64le

```console
$ docker pull hylang@sha256:266d0bf27fdc94293fc46c9c423250b30a2662bc18627e70b0894cf5d119b92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.3 MB (57250997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4374a9aa9c7348f12fe9226efe52c9b1f450831e01de92553d2ae27baf341b55`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 01 Sep 2026 00:01:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:01:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 01 Sep 2026 00:01:25 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 00:01:25 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 23:09:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 23:09:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 23:09:38 GMT
CMD ["python3"]
# Wed, 02 Sep 2026 00:40:02 GMT
ENV HY_VERSION=1.3.1
# Wed, 02 Sep 2026 00:40:02 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 02 Sep 2026 00:40:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 02 Sep 2026 00:40:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757216313a9bed91f59db112f75953e3f6a1fbe015e2f2e70a8e48e5ef29c443`  
		Last Modified: Tue, 01 Sep 2026 00:26:36 GMT  
		Size: 4.5 MB (4531519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d097c68e5d059b78021dd6e3c0d5902fe49f66f967b6ffacdbf1e5c7e2839d6e`  
		Last Modified: Tue, 01 Sep 2026 23:09:53 GMT  
		Size: 13.3 MB (13340835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afeb6c6f8f2b735708c905ecd41f2045aafe5702e0f2f7f8f1c2e4e3d8722ee8`  
		Last Modified: Tue, 01 Sep 2026 23:09:52 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a77d905ffbc38702dd9f2d43ce8dfc8502642b2a907ee32ba3e44c5c9806f12`  
		Last Modified: Wed, 02 Sep 2026 00:40:14 GMT  
		Size: 5.8 MB (5762931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:5d7f08acda53840ea127bbf0f043e8fc5390452ed0ebf02f83bd918ad9ce6f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2181770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b643d8407a7c8e05efb446ce74c35012d402bbbc94141e5e632a723f6fd17ac7`

```dockerfile
```

-	Layers:
	-	`sha256:e2ceb7222f9889154baca7c24800b5bacc3ce02a9524d27dd4826301a6085b68`  
		Last Modified: Wed, 02 Sep 2026 00:40:13 GMT  
		Size: 2.2 MB (2172385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:623aa42067aeadf2c69fd9f5bc78c8bf95129c30bab6fcb1140ce73663b66347`  
		Last Modified: Wed, 02 Sep 2026 00:40:13 GMT  
		Size: 9.4 KB (9385 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc` - linux; riscv64

```console
$ docker pull hylang@sha256:664a94e0ffb2005eb3e395a512ba79606c579e0d0d5ad9605d4c35675c9ba7f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50890181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c30bca53a5c2e297d96554397b848c0491b178a98dc735ac6975263b7b1ef2d`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 10:32:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Wed, 02 Sep 2026 23:18:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 02 Sep 2026 23:18:51 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 02 Sep 2026 23:18:51 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 16:46:15 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 16:46:15 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 16:46:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 16:46:15 GMT
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
	-	`sha256:fb61b6c190ffc4c3ab380138b9e70ece443ccb9c210a17bcf09ec29d27d4b735`  
		Last Modified: Wed, 02 Sep 2026 23:20:01 GMT  
		Size: 13.0 MB (12951348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b8dfffa72c5e455b17b18a13db9f5950e024b1dea082d905c2de46011827a8`  
		Last Modified: Wed, 02 Sep 2026 23:19:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e6a047ddc30bf28def9cef89c7f57c29f4705e8a3756455f97b78ca2b75cbc5`  
		Last Modified: Thu, 03 Sep 2026 16:47:16 GMT  
		Size: 5.8 MB (5763640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:df569cfc1e196b2460870882350a2805aee7da92ea089dc7f4ffe54e091d4aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2172141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a60e784c1a3ef1928f59d10590a050a62aab3ec617dfddfd1e0e19ff15491a92`

```dockerfile
```

-	Layers:
	-	`sha256:c951ba369471464fdfc829647b7da9f90cd814bf66b4abbc61c89bcf1b4cccd2`  
		Last Modified: Thu, 03 Sep 2026 16:47:16 GMT  
		Size: 2.2 MB (2162756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:76434645904185e48f3b9f6b8ed03ab78d94af5cfa765c71b3e16f00a4f44373`  
		Last Modified: Thu, 03 Sep 2026 16:47:15 GMT  
		Size: 9.4 KB (9385 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc` - linux; s390x

```console
$ docker pull hylang@sha256:560c58451dc7bf2a533b1cdf8031239b5df240a67f8f5a9feead249db3a423ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.6 MB (52564593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438d341107ff9549d55f587a307bb6d0928e09cf9400a0747e2f951626886f7b`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 23:39:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:39:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 23:39:48 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Mon, 31 Aug 2026 23:39:48 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:55:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:55:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:55:25 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:09:00 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:09:00 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:09:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:09:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87789043d35f95a6f975322ff947c3e1d3dbe472a2b516b0a01c0b8e6a274bd`  
		Last Modified: Mon, 31 Aug 2026 23:56:22 GMT  
		Size: 3.9 MB (3918112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c509e7e7d7edfbe9d8066689dc9d8cac941d515db0565431f9df048503c8766`  
		Last Modified: Tue, 01 Sep 2026 22:55:38 GMT  
		Size: 13.0 MB (13015564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc226e215f43499231834557fb60f897a58ab2771311eb9faa651d82d8ea336`  
		Last Modified: Tue, 01 Sep 2026 22:55:38 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c389aebb8380a28ad1cc7406dcd8c6fdaf8e06936e166b7d17d7a7e27b011726`  
		Last Modified: Tue, 01 Sep 2026 23:09:11 GMT  
		Size: 5.8 MB (5762947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:aef275821db08ab4115ccd57dd7bbcfbc3c3cfe6b119fac4b363f3369d12492a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2179550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d20b2851326ac13206f56e9a60d4c9fabe1cffd24683afb6c691004c628e021`

```dockerfile
```

-	Layers:
	-	`sha256:04155ae14dbb51b51e09a60b9bd280c7c8af20f2964212abc1d1bc2a3b907823`  
		Last Modified: Tue, 01 Sep 2026 23:09:11 GMT  
		Size: 2.2 MB (2170233 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a80372feda48350d586329fb963f8bbc18d98d590aaf7350175bd71d8da9a443`  
		Last Modified: Tue, 01 Sep 2026 23:09:11 GMT  
		Size: 9.3 KB (9317 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc` - windows version 10.0.26100.33296; amd64

```console
$ docker pull hylang@sha256:48150fd1e6932c914d20cc0e4e6973f8f7368d2b140c7253767369f893a983f0
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2521278444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5de72b8c14166f4afc255debcb2ea35a8aebe960a1fd3ff6c0e69a168a558fa`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Tue, 01 Sep 2026 22:54:32 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 01 Sep 2026 22:54:35 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 Sep 2026 22:54:38 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:54:38 GMT
ENV PYTHON_SHA256=a74bf15b3184ea885d39b4eb9b6fc4ac0a696d7bb605d879c024af4433fa72da
# Tue, 01 Sep 2026 22:56:52 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Tue, 01 Sep 2026 22:56:53 GMT
CMD ["python"]
# Wed, 02 Sep 2026 01:32:49 GMT
ENV HY_VERSION=1.3.1
# Wed, 02 Sep 2026 01:32:50 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 02 Sep 2026 01:34:13 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 02 Sep 2026 01:34:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5abeeefbb7b11eb6332573ca632d3d8807213461f1b97f3cfee8899a29583f`  
		Last Modified: Tue, 11 Aug 2026 18:01:52 GMT  
		Size: 917.7 MB (917726084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81b8792dd6d43a270b57c26147f7486b6624ae135f15b31a1bf0eed2596489f8`  
		Last Modified: Tue, 01 Sep 2026 22:56:59 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444551ba87fcde8775b391970f8f12edd8474c8b2b56585afa1bc85092e86eb9`  
		Last Modified: Tue, 01 Sep 2026 22:56:58 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4520ff3dae55c2cbc79bdb22b4d74ef807558bc9bc2dafa61e1f2fafc25ab250`  
		Last Modified: Tue, 01 Sep 2026 22:56:58 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed95067521281616aca306a0fccd34b4fb716ee94665b3845fb32c0e34db527`  
		Last Modified: Tue, 01 Sep 2026 22:56:58 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabfe7c6c00dedcad421bae4c5adb2be9ae571a0095830075334a13a432f920c`  
		Last Modified: Tue, 01 Sep 2026 22:57:03 GMT  
		Size: 72.2 MB (72245984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f3f5554b56655ec546dfd4a306a0f9e91ecc91fd95844186b88ab790fb34f73`  
		Last Modified: Tue, 01 Sep 2026 22:56:58 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83a8ae3820389b8236317fac8c8c71fa777e824feb8c2726f7703ccdbb5847f`  
		Last Modified: Wed, 02 Sep 2026 01:34:17 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a630d2dc6337593461d7fc69069fe330f6760f1d49f234124210de9a7351986`  
		Last Modified: Wed, 02 Sep 2026 01:34:17 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da102df2fb0033ccdb50cfe3c29d5bc4769cfdd63289bd86112437715c1fb9c1`  
		Last Modified: Wed, 02 Sep 2026 01:34:19 GMT  
		Size: 8.2 MB (8236721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51c20717053c70590a265f0c7db4e0ed4212bf03e4ad340ee5e4c2d0d6e5f75a`  
		Last Modified: Wed, 02 Sep 2026 01:34:17 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:1-python3.15-rc` - windows version 10.0.20348.5499; amd64

```console
$ docker pull hylang@sha256:603fbb561eb8435a99b5b6a988beb626fe3c50bf595a61852abf7d47752f8483
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2264173433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14afe8311e986d9b67382762eb789055550bdeae22454c9722b985b5843a57d5`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 02 Sep 2026 01:07:05 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 02 Sep 2026 01:07:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 02 Sep 2026 01:07:09 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Wed, 02 Sep 2026 01:07:10 GMT
ENV PYTHON_SHA256=a74bf15b3184ea885d39b4eb9b6fc4ac0a696d7bb605d879c024af4433fa72da
# Wed, 02 Sep 2026 01:09:13 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 02 Sep 2026 01:09:15 GMT
CMD ["python"]
# Wed, 02 Sep 2026 02:20:49 GMT
ENV HY_VERSION=1.3.1
# Wed, 02 Sep 2026 02:20:50 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 02 Sep 2026 02:21:52 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 02 Sep 2026 02:21:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a37dc2b2d3c6043d57b7ca0e32bc7d3fe761174f2d192d1aabe93b7895c9b7`  
		Last Modified: Tue, 11 Aug 2026 18:13:25 GMT  
		Size: 695.0 MB (694978322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81d486db5913163eff0e8cd2c68b015097d3e8c3d6d32f1e3cbbefd0cd4958f4`  
		Last Modified: Wed, 02 Sep 2026 01:09:21 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ee3a980b0b005b872005877d4588710b561cdbd8e9e166ff0e183cfb7a242b`  
		Last Modified: Wed, 02 Sep 2026 01:09:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57b88f273ee349ccdba6b5f5e26d891532f545d77971763d1ad231dd7de65dbc`  
		Last Modified: Wed, 02 Sep 2026 01:09:20 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbf2b9e34109dc7962ea40783f0c83f428a5335612f82d74d1bd6697c563ab90`  
		Last Modified: Wed, 02 Sep 2026 01:09:20 GMT  
		Size: 1.3 KB (1315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c934172fe340c0543754a0ca664ef6118c7821b7addae8066273a24d4f99a4`  
		Last Modified: Wed, 02 Sep 2026 01:09:25 GMT  
		Size: 72.1 MB (72080133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:082524f518ab38a0d60f6425704fa9dd8c94c4f25ab6ced2a579589d16cfaa6c`  
		Last Modified: Wed, 02 Sep 2026 01:09:20 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20055debfe4df855d67fb0c8874bae266d2473b20a9496802939512ae9ba816e`  
		Last Modified: Wed, 02 Sep 2026 02:21:57 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f513e777a98b6e0f334349417c1642a821a056a3ae84e4afcf3cad39c1c1999`  
		Last Modified: Wed, 02 Sep 2026 02:21:57 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0496895342d109f13ad9c251741ff0e088b5eefb5c068ca77969de0e226877`  
		Last Modified: Wed, 02 Sep 2026 02:21:58 GMT  
		Size: 8.1 MB (8085357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bdd0f6e7f700ff1885963f8d7feb19770ec24f5f3c0cd642c58e7368c078f9`  
		Last Modified: Wed, 02 Sep 2026 02:21:57 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
