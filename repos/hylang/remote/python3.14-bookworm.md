## `hylang:python3.14-bookworm`

```console
$ docker pull hylang@sha256:59bab031ce0376334dbd761d0779238c3bd80d753fc92eb1470409e9e97ba183
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

### `hylang:python3.14-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:9a35fec9eeac8e05da1b56c2ebdb9381983695a1cdc6d4b3509d65897b099fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50999244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b38b837385a4339b06b0e2e0b09cc69b539ffefb1691db458bc6d8df528ada1c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:35:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:35:30 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:35:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:35:30 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:35:30 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:47:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:47:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:47:35 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:47:56 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:47:56 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:47:56 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:47:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5095c70a7c49da872dc6c88c8012639e21cf6f2b23a9ccfcac866f398eb6ecec`  
		Last Modified: Mon, 26 Oct 2026 22:47:43 GMT  
		Size: 4.0 MB (3977638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25085e21399bec8bba10017506f89cfe33f64479b5274fbfa485664fd8622bbd`  
		Last Modified: Mon, 26 Oct 2026 22:47:44 GMT  
		Size: 13.1 MB (13092656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a06ede3529a29c34389cf766e13381edd68d24ac9d3db444279ca5d278afac`  
		Last Modified: Mon, 26 Oct 2026 22:47:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acd902513b412a02da93d5a8874ba47096160f19467816a53c0d569f9dd8142`  
		Last Modified: Mon, 26 Oct 2026 23:48:04 GMT  
		Size: 5.7 MB (5680766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:cdafc6411b1c1a93ac8ca2c849c7cc11f0d516a9607414133697014e36aae8f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfb83c65120d447295c6db07828a70b42440740edcacdf869ccf209ba270f963`

```dockerfile
```

-	Layers:
	-	`sha256:554c9e833ce09b90e0a2159f58ad2352e5efc7fa6d515139eed11ab33e4badda`  
		Last Modified: Mon, 26 Oct 2026 23:48:04 GMT  
		Size: 2.5 MB (2549001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4416ffdcb886b6ed1232ceb9214425f09af6d09a948309a35a8a3596dff87316`  
		Last Modified: Mon, 26 Oct 2026 23:48:04 GMT  
		Size: 8.0 KB (8043 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:7872fda8c2459b529d3781ae07fb9ca59135a4650a1beb547c94c875155b3179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45244204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a526f5de83ad8431a94fa637c09a5e57b00a7a1a228c83a0fe4d82d191a4d4`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 23:02:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:02:59 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:02:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:02:59 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 23:02:59 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 23:26:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:26:02 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:26:02 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:21:38 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:21:38 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:21:38 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:21:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:89330599b97158132cbb391b9e953f6981b48c30e1dd04817c4713d28bc7f013`  
		Last Modified: Tue, 20 Oct 2026 23:30:03 GMT  
		Size: 24.0 MB (23961489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41faca2cad5d98b67990bfa830cec812e3a003ed66043941dce69cea4aa00e5a`  
		Last Modified: Mon, 26 Oct 2026 23:26:10 GMT  
		Size: 3.4 MB (3382667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd345bf3e07321042256525f1c48acbcf92f7962dbf8b8072959ed2080ca75c`  
		Last Modified: Mon, 26 Oct 2026 23:26:10 GMT  
		Size: 12.2 MB (12218986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3904ee0d2ea35dca5d8640e1ed43c44a7fc14ae9b17283ea578fc7cf727a872f`  
		Last Modified: Mon, 26 Oct 2026 23:26:10 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028da3da3c869229430bbbdbe51df46f1348cf4f9c1856fe80d351e84f26616d`  
		Last Modified: Tue, 27 Oct 2026 00:21:45 GMT  
		Size: 5.7 MB (5680812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:d6cde13a72ef1aff145a1b5bfb3c9ca7131dc5c28bb581570796c9b2384be4fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1e17fed63981ec01e86e2158ee13574d68fc131d8b2a6c2112df2ed3c3b540`

```dockerfile
```

-	Layers:
	-	`sha256:7449e513164e1fb9b96bccb8dc700612e3257e4bfa1651b9f45293c7a71b24d5`  
		Last Modified: Tue, 27 Oct 2026 00:21:45 GMT  
		Size: 2.6 MB (2551246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae8b020d9beadaaec3f8736b844dcbf3932235803bba2196f65d5519e463bd11`  
		Last Modified: Tue, 27 Oct 2026 00:21:45 GMT  
		Size: 8.1 KB (8123 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:d77f9d36bf501cd061d825128f956d2d9368dea7cf1237b56e33702e8d332249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50609930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7328a2510558cb582fcacb38cf3a800102208e2a055a6aa4a5ed1e7987c0e29c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:35:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:35:05 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:35:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:35:05 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:35:05 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:50:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:50:44 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:50:44 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:50:59 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:50:59 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:50:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:50:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917f270a0f5c4adb7cdfcb82449d17e45cd25953933ec0d87ca3a5f6c1b16c5c`  
		Last Modified: Mon, 26 Oct 2026 22:50:52 GMT  
		Size: 3.8 MB (3810256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b213536f732d3b700f462fe0263bedf14a12e55ea57c2e8435926cad9be30ea3`  
		Last Modified: Mon, 26 Oct 2026 22:50:52 GMT  
		Size: 13.0 MB (12980183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3613c41f3a7da716046b3d4b9382fda70cb24091164d34b3cf3d59e4aebd245b`  
		Last Modified: Mon, 26 Oct 2026 22:50:52 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d51c00fae3537ca2584d244ee1b40f1fffee7f795033616f1b32f36d140b5ff`  
		Last Modified: Mon, 26 Oct 2026 23:51:07 GMT  
		Size: 5.7 MB (5680816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:661674519cf5a461d6d1899e74e27b2f322a904c7c2ea86348855e85415d0832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0531c118ba57715ebf3ab3e0a45399db6134a50cef7cc94a8ced02c9761bca`

```dockerfile
```

-	Layers:
	-	`sha256:1883c3a5987811ee92a25f285ee4915253ebaca1f1bd59db031f7cb6d15bd3ff`  
		Last Modified: Mon, 26 Oct 2026 23:51:07 GMT  
		Size: 2.5 MB (2549266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b33ebe0349e5e5e0b2258783342740290991d6b30429d370190b372a4f0a0fa6`  
		Last Modified: Mon, 26 Oct 2026 23:51:07 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:8546159a0fd1e67cfb0ddbe106ed2bb8d5db68ca111d0f03828d4a3885cfe70f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52277948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43cc3159c24bde045b4e758911bd5381bce114ea6ef8b1490703f96129ddf8ca`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:36:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:36:15 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:36:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:36:15 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:36:15 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:50:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:50:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:50:21 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:27:58 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:27:58 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:27:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:27:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edec2217d9a1ed220c0a3a39ea2050da998028dd40dbb20a5f406047189d1da`  
		Last Modified: Mon, 26 Oct 2026 22:50:30 GMT  
		Size: 4.0 MB (3981476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e73b16d8ce6648491c5df82408bbd86d5e128e8f25ae7e79c736920a32dce4e`  
		Last Modified: Mon, 26 Oct 2026 22:50:30 GMT  
		Size: 13.4 MB (13376138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:213e9f2eaa3b96fe742880b8b4664a71b83170fd2b1512db463002c4806978e3`  
		Last Modified: Mon, 26 Oct 2026 22:50:30 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b1a33330c6c56842ba2cf8394e6fbb3c91fd3adf02cbbbede02af5e51dcd3e`  
		Last Modified: Mon, 26 Oct 2026 23:28:05 GMT  
		Size: 5.7 MB (5680838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:93fd82f547c57858497a03bfc9f12bf0347f3f3efa156425fa79f61568b84188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2554179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4df25d4ce3fbfc3d9784a9748bb8592ff277fa40187478cec427681fe3da324`

```dockerfile
```

-	Layers:
	-	`sha256:3c5ea852b5d93375a254410bd9265e395242038b6b09188d9d62e1e45088af56`  
		Last Modified: Mon, 26 Oct 2026 23:28:05 GMT  
		Size: 2.5 MB (2546168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af97a1d84e102ca55b9bb4515bdacfb4ec8af8708cab7e39e5bab5667c10cdc6`  
		Last Modified: Mon, 26 Oct 2026 23:28:05 GMT  
		Size: 8.0 KB (8011 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:a0c6595810f09df3242596a1243a99dbf9ebb79b57174daf5e8287305e174a37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.0 MB (54954050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1077a77207074fa3c4ef87244f9da5941ca833ed98f1b7d3db9b71d624934dea`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 06:33:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 06:33:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 06:33:32 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 06:33:32 GMT
ENV PYTHON_SHA256=e02d9ac21cebda6e46435369744a92c65cc7cd8669697694122cf97ffacd1e53
# Thu, 22 Oct 2026 08:20:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 08:20:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 08:20:06 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 15:30:06 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 15:30:06 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 15:30:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 15:30:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1dd2154e42bde071f30f7129cf83513b47a84b66cfcb13a0fc066c618f46e0`  
		Last Modified: Wed, 21 Oct 2026 07:24:41 GMT  
		Size: 3.5 MB (3543697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01720adf871db6eecee18172cdddf6da24ad6f95e9c3f2ad4022d3160b2aa5a0`  
		Last Modified: Thu, 22 Oct 2026 08:20:24 GMT  
		Size: 13.6 MB (13636114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed40030f09f5ba438b83f36f1c1fc184e0a68c672289c4cbbd7c984a7bb5750b`  
		Last Modified: Thu, 22 Oct 2026 08:20:23 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2ee3611089bbe7d65a917d22b8b4a6dcb2560b849fd35f880fc98afe707291`  
		Last Modified: Thu, 22 Oct 2026 15:30:31 GMT  
		Size: 5.7 MB (5680780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:ba29a9f07ac04676787f6609c7b3653c9f749cb9ab9ff8a37138eef0d0148228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8b30c93ee6ca70eee6e135f03ceba44c98714905f49710c14a628dbccb366f`

```dockerfile
```

-	Layers:
	-	`sha256:52b1b3202edc5a07d126c6845e4c9361414db156df7e8c894d0ec08c2c2f30e0`  
		Last Modified: Thu, 22 Oct 2026 15:30:30 GMT  
		Size: 2.6 MB (2553437 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d803cc6c4b2d68889e6c29af0dc5599f5eec79af3f47c864e9b69db131e5e30c`  
		Last Modified: Thu, 22 Oct 2026 15:30:30 GMT  
		Size: 8.1 KB (8071 bytes)  
		MIME: application/vnd.in-toto+json
