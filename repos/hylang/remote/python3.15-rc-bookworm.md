## `hylang:python3.15-rc-bookworm`

```console
$ docker pull hylang@sha256:f56a0f2df1d12db6622cd65eebb300d12239b8166b86ee371d773d7395411b1b
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
$ docker pull hylang@sha256:648983539e196e3cdc53c01e179b2167a51bb0b92f84f7808ec9df6ddbc511c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51203391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b5a78acb2ecc2283bdcfa29e2c6244e10c670e7bb52064e9968dee98156dd59`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Mon, 20 Jul 2026 22:32:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:32:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:32:30 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:32:30 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:44:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:44:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:44:41 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:10:58 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:10:58 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:10:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:10:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c1b8848358437163e794e02ad7e4253b7b43254559c999381fcea6810915c3`  
		Last Modified: Mon, 20 Jul 2026 22:44:50 GMT  
		Size: 3.5 MB (3520807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b062ad1ca3c9df42cc6cdc7615502bb4f70398fb3c9697c9b8ee5b332747d5ae`  
		Last Modified: Mon, 20 Jul 2026 22:44:50 GMT  
		Size: 13.6 MB (13603303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30f7af6f6118728007bd361f87ed87708a9e9a0c375171f8f808b79a30d5763e`  
		Last Modified: Mon, 20 Jul 2026 22:44:50 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8d98dd384d3129f412e02b3f25f038ebbc19008ae0fd6582b74d2ac3f515e4`  
		Last Modified: Mon, 20 Jul 2026 23:11:05 GMT  
		Size: 5.8 MB (5846389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:c765be546f1e0475ea35af7362d23115dce9b280c559167f72c9537ea0f78e28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2538942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc7f3b3ece177fa3ceb9850fcd3676a82b565290d6e01a1a1fb49a4ebfdf66e`

```dockerfile
```

-	Layers:
	-	`sha256:eab343f6189923c677f517429e6ad5967bc0561e4dd0f6d8e1e7082e5629826b`  
		Last Modified: Mon, 20 Jul 2026 23:11:05 GMT  
		Size: 2.5 MB (2530876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6cad85a194febe1e5c1fdb7627d39eec6b042a26558178892b2654fdbe82896`  
		Last Modified: Mon, 20 Jul 2026 23:11:05 GMT  
		Size: 8.1 KB (8066 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:cc41d1bccf5e7e4063380e34db02294d134fd411411e331793cff0e4fab0feea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 MB (45702454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb8fe82c55eb6f737849f37e35866f7d44f40af405be006d2cd00bf48c871d0`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Mon, 20 Jul 2026 22:36:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:36:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:36:14 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:36:14 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:59:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:59:46 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:59:46 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:11:31 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:11:31 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:11:31 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:11:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a49f4e60ca341cf288f9d0fe9baa96dca8d2c3fd29fce119206617907e5988`  
		Last Modified: Mon, 20 Jul 2026 22:59:54 GMT  
		Size: 2.9 MB (2928779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ad336d0cd1d1c9a644a263c6890f2ddaa8a29891a9eb802521089ec44a11349`  
		Last Modified: Mon, 20 Jul 2026 22:59:54 GMT  
		Size: 13.0 MB (12987001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b293061324313dcfd92a927f534be2edfb475bf4844ece2c0df6d9feea1f096f`  
		Last Modified: Mon, 20 Jul 2026 22:59:54 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a381f0aa50964818f414a39e41fc309d88d64de776652765a9ff6de57838c5fb`  
		Last Modified: Mon, 20 Jul 2026 23:11:38 GMT  
		Size: 5.8 MB (5846646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:b7f5f1a922ea6983af2b952569623997b1a253c5f133eed0da11bb190de00069
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2541267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9aff0622aeaf8e19fa335e217d6ebdc9147f81efd821bc68da2dc0e0c48e5d`

```dockerfile
```

-	Layers:
	-	`sha256:3f8e9166915ca075875fe7c309c5633ae268f242de3735a95767498b6a81a4a6`  
		Last Modified: Mon, 20 Jul 2026 23:11:38 GMT  
		Size: 2.5 MB (2533121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8fef6020a8c11362e82d9a92c828dc92981f5739ca8890d3283d64a11b92ad5`  
		Last Modified: Mon, 20 Jul 2026 23:11:37 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c760bd7a163988e7840746416deff7cdc02e14c3cc64fd848a0069afd27da895
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50808584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fee707b79366e57cea4eec4e8d2148efe76c7476f1bffa0f2c86fba2ee780ad`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Mon, 20 Jul 2026 22:32:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:32:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:32:05 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:32:05 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:46:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:46:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:46:47 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:10:44 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:10:44 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:10:44 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:10:44 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09efb4530523d55e61add907aa768d01fea21d5ef900577d9df564658952f164`  
		Last Modified: Mon, 20 Jul 2026 22:46:56 GMT  
		Size: 3.4 MB (3352653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83abdf65b8a09bf702e9f8989005ee056ab514393795a79913104e5168b44c1f`  
		Last Modified: Mon, 20 Jul 2026 22:46:56 GMT  
		Size: 13.5 MB (13492074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e82fea0e5f3430098e5cfc0c64ad9eb7195fb2c9dcfd5808a7e9f7019e881fb`  
		Last Modified: Mon, 20 Jul 2026 22:46:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b295123539e0eca8354465df7def3c1d08388f6f52a99c2cf237f23a781730`  
		Last Modified: Mon, 20 Jul 2026 23:10:52 GMT  
		Size: 5.8 MB (5846354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:33780ea6ac26924cf2db7163c16c94fad57c95a44dff5d31af0e6edda2cdb3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2539311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b73c7101c521df7771f1353a15ba08a0ee1a70d00f6e0dc237998b51b7ed59ba`

```dockerfile
```

-	Layers:
	-	`sha256:10a44ab99dccbff002b3d0cff8437d6d7c051a4095d835c181839f0cfd5bcffc`  
		Last Modified: Mon, 20 Jul 2026 23:10:52 GMT  
		Size: 2.5 MB (2531141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cdd91191dc178ac6a82ad06a02f73472db234d3ea447087964e98181779035b`  
		Last Modified: Mon, 20 Jul 2026 23:10:51 GMT  
		Size: 8.2 KB (8170 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:4902d73931f35caa436d5832b538d8c2a99ccda4824971dadceed6d0e5b9c75e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52241664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf184343db0bd2471d045df91c611f5df20de04d2f636e8eea5487d7af60d9dc`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Mon, 20 Jul 2026 22:32:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:32:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 22:32:43 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:32:43 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:46:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:46:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:46:35 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:10:50 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:10:50 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:10:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:10:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb62932a6b731f06d950892663c7c47363e39a2a20577299849418af6e3d501`  
		Last Modified: Mon, 20 Jul 2026 22:46:43 GMT  
		Size: 3.5 MB (3521244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f177230553aad493ca3d748dd96819ffc301cda706b41881c8244b85076e88b9`  
		Last Modified: Mon, 20 Jul 2026 22:46:43 GMT  
		Size: 13.7 MB (13652595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e070777ddefe43724751c8f6812b75ab39ad3ff92d9acf8737580bb6ce5f7fe`  
		Last Modified: Mon, 20 Jul 2026 22:46:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa6acaee8460a5b74fb40734a9cbaca1f82c4cd43acb0f831d8cd1cbc7e9cb7`  
		Last Modified: Mon, 20 Jul 2026 23:10:58 GMT  
		Size: 5.8 MB (5846525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:e1111e0523ba2dcab80d6c90abb7b66cc472a3e65d734f05cd956eb267491260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2536077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2cf86be9646d5c3c1af2d81108891be8139aec9416446bdc1e103024932b1d1`

```dockerfile
```

-	Layers:
	-	`sha256:4ad5d9381c6fbee33e26503b81e72382d595128c6c5d0de271e6ea0774438b9f`  
		Last Modified: Mon, 20 Jul 2026 23:10:57 GMT  
		Size: 2.5 MB (2528043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:297698870582d22b9dd583e1355dda2587a8de5ae3f7174fdfffde14492bb35c`  
		Last Modified: Mon, 20 Jul 2026 23:10:57 GMT  
		Size: 8.0 KB (8034 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:9b7f2be11a215382be5c7f58aaf14cf6ecdc3b819e74a47e913262e403043a0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55812746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8074e06049f66958ad9a533a9b4373143d96cd763d063bd1dd3aeefabf5017`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Mon, 20 Jul 2026 23:04:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 23:04:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 20 Jul 2026 23:04:26 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 23:04:26 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 23:44:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 23:44:56 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 23:44:56 GMT
CMD ["python3"]
# Tue, 21 Jul 2026 00:10:39 GMT
ENV HY_VERSION=1.3.0
# Tue, 21 Jul 2026 00:10:39 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 21 Jul 2026 00:10:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 21 Jul 2026 00:10:39 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eeb94ef8fb6a165a9fa14aa0fd56ca44086b3ef5ca49720bb25a52124c3fc1f`  
		Last Modified: Mon, 20 Jul 2026 23:45:10 GMT  
		Size: 3.7 MB (3725291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c1c05162dc065dc4945a54a7c64cf69af6514c1ad99405f90a92ab382b995d`  
		Last Modified: Mon, 20 Jul 2026 23:45:10 GMT  
		Size: 14.2 MB (14164059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:544c42b4150dcfdbd91e5cf2bc54c6c124b523f6fee2f388b033aa64970f846e`  
		Last Modified: Mon, 20 Jul 2026 23:45:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f986468de573060db0941a808fe3b0f830709fd19631ce0cfb104027efc4570e`  
		Last Modified: Tue, 21 Jul 2026 00:11:01 GMT  
		Size: 5.8 MB (5846734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:b98d1fe346cb212fe65fba65868875d66996d29455e23731332453d4e24646f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2543423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:505364ab33633f23e8c72c8324c42b2caa4b6a53dfe1374a061e93dc2f6a8171`

```dockerfile
```

-	Layers:
	-	`sha256:1703f4ed9f9e7571a0f6565f2812ceea1faf281745bb3ead840eee2604c23dfd`  
		Last Modified: Tue, 21 Jul 2026 00:11:01 GMT  
		Size: 2.5 MB (2535314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4287b31ed416c05f62d390e81033148321d825b3c33f636719c9ee5fae9d458c`  
		Last Modified: Tue, 21 Jul 2026 00:10:59 GMT  
		Size: 8.1 KB (8109 bytes)  
		MIME: application/vnd.in-toto+json
