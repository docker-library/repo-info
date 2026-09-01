## `hylang:python3.15-rc`

```console
$ docker pull hylang@sha256:ca8f037e1001aaa4437f888e275b53428d07778793010294b836c0b8077c60c7
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

### `hylang:python3.15-rc` - linux; amd64

```console
$ docker pull hylang@sha256:2f48c1a421b9f85a241fdc05c4ffd6ebe915fef80945849bc97b59d46dbed5d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52730030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ec6b6e476e7e8942180193c45fb5598f7427e9d3eedbd10a1d6ebaf64b557d5`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 23:57:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:57:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 23:57:33 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:57:33 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Tue, 01 Sep 2026 00:05:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:05:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:05:06 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:18:33 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:18:33 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:18:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:18:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3699b5124285d0e53986ec8231dfff87499f7395e98bfe256eb29b5452f232`  
		Last Modified: Tue, 01 Sep 2026 00:05:16 GMT  
		Size: 4.3 MB (4265363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31f3a9ad2eeb89a10a98772378d92e9a864e8663b5d6550f4ac4c763bf48719`  
		Last Modified: Tue, 01 Sep 2026 00:05:16 GMT  
		Size: 12.9 MB (12931100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43db17e6e53e57d0a7aa3a8f8f8c96d0340c879cf445ef259d1364b12f2631ae`  
		Last Modified: Tue, 01 Sep 2026 00:05:15 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3483cd5cd9f2dd2156efc913ebed69b8d66e60ea8ee93c81a7802c01e80ff02b`  
		Last Modified: Tue, 01 Sep 2026 00:18:40 GMT  
		Size: 5.7 MB (5740659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:62b4a36c4918368a5fc0cc84eb85ff16638d06f57d181c21dd7248e715233a0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2178103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b078f5464575badf4c07914d38d070dd208e394e45c4b9d1fd9e42f6e78bc557`

```dockerfile
```

-	Layers:
	-	`sha256:2dea3919add96171cfb1eb5d96a278e993194fe43b6098454a7a5830375793c9`  
		Last Modified: Tue, 01 Sep 2026 00:18:40 GMT  
		Size: 2.2 MB (2168786 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:842b0cf0c645e3af28569d1d36d9ae84640f1372a2937dfae84e59053b2ad631`  
		Last Modified: Tue, 01 Sep 2026 00:18:40 GMT  
		Size: 9.3 KB (9317 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; arm variant v5

```console
$ docker pull hylang@sha256:bdd17dbf65a6db593e6d1fa7c31540092981a723cbcdf2c58b85aa72ff6ada0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49998410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31c88b87f5859951e14a11e7f01ff2b1c279b7fee9a18d268e52798700366a8f`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 23:35:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:35:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 23:35:35 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:35:35 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:46:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:46:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:46:27 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:16:51 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:16:51 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:16:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:16:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df62bbb2a33aad5fd9c1328ede909a286873f8dce25b279f146cea181dc2ee5`  
		Last Modified: Mon, 31 Aug 2026 23:46:36 GMT  
		Size: 3.7 MB (3658694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9137300230c84c834870d070b94f86ebcd5b356adbe02675ddd50b6508260a2`  
		Last Modified: Mon, 31 Aug 2026 23:46:36 GMT  
		Size: 12.6 MB (12629672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aacec54875c537792130239aa414da795e1501a592820477f871bc4fbeb2e8a`  
		Last Modified: Mon, 31 Aug 2026 23:46:35 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f1587dbadd6238563d8f9a975d9ae9320c7d79f281dce4e4e62147f1257f79`  
		Last Modified: Tue, 01 Sep 2026 00:16:58 GMT  
		Size: 5.7 MB (5740852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:2400974507a9eaa17bbd980b69c29adde7190e0bc06399b45c371af913c8d5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2181215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed6622abf4304a986fe6fff1ab1a00d45383a3dbe030de51f7958a9c2a6761a`

```dockerfile
```

-	Layers:
	-	`sha256:3f8ab04cf925242822a2c355457318d85d076431f8857b2e7f46ca1facbd2bc2`  
		Last Modified: Tue, 01 Sep 2026 00:16:58 GMT  
		Size: 2.2 MB (2171787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d6de19ae49d1a8491f55f7dc1fd9922479a6f87d31f1703186c5044b32c226c`  
		Last Modified: Tue, 01 Sep 2026 00:16:58 GMT  
		Size: 9.4 KB (9428 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; arm variant v7

```console
$ docker pull hylang@sha256:aaaa946ca8541c7b983eefb420d46bc8a5050abb9676d4d217ba23ed5be9107f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47959225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c33bd0ad1b928eed860fdbe1706cc14dd5a5e6f3f0123dceacc81e6a520160b4`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 23:35:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:35:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 23:35:57 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:35:57 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:47:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:47:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:47:41 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:23:06 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:23:06 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:23:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:23:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c0e2f92e9739441099af137a28c510e1e6f5299a1b30a93a810038d9da4dd1`  
		Last Modified: Mon, 31 Aug 2026 23:47:49 GMT  
		Size: 3.5 MB (3460536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a339383203cfd20fe9fa597647fb6c18eb42718f903fa03cc1f90f147f0439`  
		Last Modified: Mon, 31 Aug 2026 23:47:49 GMT  
		Size: 12.5 MB (12538469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56eaf8288826e56adf0d8fe5c329024d3d4a7f4077f34ffef7891d6cd3ff6ea3`  
		Last Modified: Mon, 31 Aug 2026 23:47:49 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa95986ee39541f148df784a32108df08500acaf17c4ed6334a730ff5c3da63`  
		Last Modified: Tue, 01 Sep 2026 00:23:13 GMT  
		Size: 5.7 MB (5740830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:0954d777db90b6e9a35d573930afe813917d4007362fda4ed8325ce219959d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2179669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e00f00c4c8a7457949fa7acced61c5e8bfe22dfea7698990cebedd1045a352`

```dockerfile
```

-	Layers:
	-	`sha256:4c272b715bb20c096c03842d8a23d4bbf20e6dd5fd13fbf28911aabe18c9216f`  
		Last Modified: Tue, 01 Sep 2026 00:23:13 GMT  
		Size: 2.2 MB (2170240 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea67dca0255ab66b5c13b4029f10f2b99a03a9ccaa61c392a3165ed04cf5a1c7`  
		Last Modified: Tue, 01 Sep 2026 00:23:13 GMT  
		Size: 9.4 KB (9429 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:2e83ab584ba0cf0431dec41da048908bfce659376bc6a6d1baa377efa070244a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.3 MB (53349459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:196dafd91cc74e769fc05657954856e22ce33af0439d067eeb74a282097877c7`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 23:35:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:35:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 23:35:27 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:35:27 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:43:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:43:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:43:17 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:11:56 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:11:56 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:11:56 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:11:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:704eec717ce802cec2486aa99ea31f1582df3201f3b2e161626c82648d6efdf7`  
		Last Modified: Mon, 31 Aug 2026 23:43:25 GMT  
		Size: 4.6 MB (4605846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8554e32d2939d9fbd869b05b58e341b274ef25e6529c70e0eeb24cc5bad696b`  
		Last Modified: Mon, 31 Aug 2026 23:43:25 GMT  
		Size: 12.8 MB (12843108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e62fae3f700e1f674d89610dc91b743c8b3c6f2cabaff472ebaee7ffd372b1`  
		Last Modified: Mon, 31 Aug 2026 23:43:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3ff8dd11c75bdb1e0bd9bcda87f5617a9217c033e55692f07ce6872c300dac`  
		Last Modified: Tue, 01 Sep 2026 00:12:03 GMT  
		Size: 5.7 MB (5740673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:b037fd28d0ced106ceb3a388689ca6526457bca03bd900fb624a1b4c93e27178
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2178560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972c3fb7057c03612638143095996fad641306a8c5206a99e17979721ec6614c`

```dockerfile
```

-	Layers:
	-	`sha256:6f09563137e1a8d9c5566c2b13854723b98c785e4e6b3bfd85d415e45c7c21df`  
		Last Modified: Tue, 01 Sep 2026 00:12:03 GMT  
		Size: 2.2 MB (2169092 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45cf21840aebf93853afd9fd0ae0feffb1da67ca451e6f3afcab15c75fc0af70`  
		Last Modified: Tue, 01 Sep 2026 00:12:03 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; 386

```console
$ docker pull hylang@sha256:bfbb2866ecf980c5d41f35a063222530a82899c0655583e06032ed79995439f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.1 MB (54076384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5cdb51f4c16decd4dbeaa51a9e18efff32407d97932288af24a4ddf292177b0`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 23:35:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:35:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 23:35:46 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:35:46 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:55:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:55:33 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:55:33 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:12:39 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:12:39 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:12:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:12:39 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ce3908f546c1eb2b25a4146bf68aa8fe96ad360a5303dc87a7406db35882f7`  
		Last Modified: Mon, 31 Aug 2026 23:55:41 GMT  
		Size: 4.2 MB (4194984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f10d5295eeb09a4a152d61f5425fa0d219c04233f54ea8827d74e8394b421da8`  
		Last Modified: Mon, 31 Aug 2026 23:55:41 GMT  
		Size: 12.8 MB (12836799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd1f63d23b2a5b2db8cd4694b43f3c430b2e19b6ff38fe43ecfda05a02c62668`  
		Last Modified: Mon, 31 Aug 2026 23:55:41 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:280398ee7f5e3e3cf0b464dcd6230f0dfa7da0ab9de4f683722c37dfbb00174f`  
		Last Modified: Tue, 01 Sep 2026 00:12:45 GMT  
		Size: 5.7 MB (5740954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:e3544bb94390039d7d5f43a3af78caa57c1606c449d89ad387374c3bdbbce2f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2175211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d24a557ad0301e0c534b47af2ad34105421829bd5c0b219303ad69f713174224`

```dockerfile
```

-	Layers:
	-	`sha256:35b9314344305ffea18788618df93368b96a3880c5d3109a5e96bd33e6859aaf`  
		Last Modified: Tue, 01 Sep 2026 00:12:45 GMT  
		Size: 2.2 MB (2165947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb38123ba43b32b534bcd39236423751a9b0a081b14484e0fc77569888ff5c5c`  
		Last Modified: Tue, 01 Sep 2026 00:12:45 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; ppc64le

```console
$ docker pull hylang@sha256:40448e6e191706d80ace7b1d6443b58609d885cdb73c7b1720bfce4596d24485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.0 MB (54007804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e298f93531879f7c63d91806c6b5fe9bca76a3a6f59addadd9d252a1543d90b1`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 05:00:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 05:00:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 05:00:03 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Tue, 25 Aug 2026 05:00:03 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Tue, 25 Aug 2026 05:24:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 25 Aug 2026 05:24:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 25 Aug 2026 05:24:55 GMT
CMD ["python3"]
# Tue, 25 Aug 2026 12:12:04 GMT
ENV HY_VERSION=1.3.1
# Tue, 25 Aug 2026 12:12:04 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 25 Aug 2026 12:12:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 25 Aug 2026 12:12:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58fc18c57fcabb85f2c30421e9974139d0832abcc6d99235102ce17a5c8be1f`  
		Last Modified: Tue, 25 Aug 2026 05:25:09 GMT  
		Size: 1.3 MB (1322171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ece88c6005fb9ad5c67ab33592e8bc35e846991840b6de4e6c82442aeb68adf7`  
		Last Modified: Tue, 25 Aug 2026 05:25:09 GMT  
		Size: 13.3 MB (13329181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3064f4ff6a56a548c246ee1e3bfa6fe3d606d6f3f0400b7bfeb36bdebbc5ac18`  
		Last Modified: Tue, 25 Aug 2026 05:25:09 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab331918b36d51a1f9527fc62eb1c86e921b57b0694a6d5426cf12ac8ef58c3c`  
		Last Modified: Tue, 25 Aug 2026 12:12:21 GMT  
		Size: 5.7 MB (5740741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:8684c70d4497805bfaca7ac67b7c3da269f0db2604059b79c7cb37f2cb314544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2181762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013859d0462de2dd7fb61eefbd65294a7ffb0691befb17a1033592ee78a114d3`

```dockerfile
```

-	Layers:
	-	`sha256:cba0572b8da5ac7cb97305995b0ccb57b18c73de432163b67b39a1a45ad99f71`  
		Last Modified: Tue, 25 Aug 2026 12:12:20 GMT  
		Size: 2.2 MB (2172377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be2b9b5e13d7fb57a984afa9eb7f1341917e1e5be978642603a604bc906d5d02`  
		Last Modified: Tue, 25 Aug 2026 12:12:20 GMT  
		Size: 9.4 KB (9385 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; riscv64

```console
$ docker pull hylang@sha256:6a9feb8f8a89c43cf1ec9822bd8d32d5929a235ba0cf4663f1793bbd775e3806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50849282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75e98cc4a845f865b4762e9c1aa2427b0d2120bf968c4e7ac37d1dc5f103facf`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 27 Aug 2026 10:32:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Thu, 27 Aug 2026 10:32:53 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Thu, 27 Aug 2026 12:14:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 27 Aug 2026 12:14:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 27 Aug 2026 12:14:53 GMT
CMD ["python3"]
# Sat, 29 Aug 2026 21:26:10 GMT
ENV HY_VERSION=1.3.1
# Sat, 29 Aug 2026 21:26:10 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 29 Aug 2026 21:26:10 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 29 Aug 2026 21:26:10 GMT
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
	-	`sha256:edd906d88aa0dcd0e234bec6c1f56d754c0223afd1b4fe3b4f565f5b066af325`  
		Last Modified: Thu, 27 Aug 2026 12:16:04 GMT  
		Size: 12.9 MB (12932390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9a589b2484290b183e7fd0ec14b7013b8b3c1141e4eb6c681454934443dcd8`  
		Last Modified: Thu, 27 Aug 2026 12:16:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af82f41549c7e0be56411b6c6fd1c4009db83e808fc702eabb726a33df387ba`  
		Last Modified: Sat, 29 Aug 2026 21:27:13 GMT  
		Size: 5.7 MB (5741700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:4063d53dc7d1b495798b5250c0b1dd75e15add949b7d75c5fe8ea5408cd83bb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2172133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bbcf41c5941e920c97653a742cf387d5d57b2ce67bfe1d02228173ad03adf4c`

```dockerfile
```

-	Layers:
	-	`sha256:015ef26b56365c76bdc0c7143bcf035650cb21d28e9abaf1416b67e64955007a`  
		Last Modified: Sat, 29 Aug 2026 21:27:12 GMT  
		Size: 2.2 MB (2162748 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08dc09ae1484e147b19785ce6d3c99ee4d5ed4a917d7ae9687cbc41d8281acad`  
		Last Modified: Sat, 29 Aug 2026 21:27:12 GMT  
		Size: 9.4 KB (9385 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - linux; s390x

```console
$ docker pull hylang@sha256:8b3f76507901e83bf985c6210a3d625463aed13abbd9d9704d9330a39a185a92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52534615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e4e96e584c56e8eaa4dbe19cd1bd31bf4f8525f0be50bd77f8afcbfd01224d`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Mon, 31 Aug 2026 23:37:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:37:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 23:37:02 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:37:02 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:51:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:51:49 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:51:49 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:29:33 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:29:33 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:29:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:29:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2112a7e2cec10903485ef472cbb1a92cc5a2126f27070f13182881a1e592f205`  
		Last Modified: Mon, 31 Aug 2026 23:52:08 GMT  
		Size: 3.9 MB (3918021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59ec806970677914176c6ee6fbdd3224fa88474a7b9fccbc20f4905a75bd24a`  
		Last Modified: Mon, 31 Aug 2026 23:52:08 GMT  
		Size: 13.0 MB (13007703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c8fe82fb71ffa5705ecab5acfb75a9129f411db71c2d0e49260605fd33ab3d`  
		Last Modified: Mon, 31 Aug 2026 23:52:08 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e0618c67e1c75c10c3093f3c0f65aecdc1268b7122c33dd116e683e7f55105`  
		Last Modified: Tue, 01 Sep 2026 00:30:27 GMT  
		Size: 5.7 MB (5740922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc` - unknown; unknown

```console
$ docker pull hylang@sha256:1b7048f8fab25c7c7a14e569a22e9747d6dc29283e5addb58a317a2a9188a5b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2179542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47775e4ecd226e55e70b9b92f076067cd49274d2665c0a6444dba28ebd64e842`

```dockerfile
```

-	Layers:
	-	`sha256:b77f499e10ba8e4b0765fc8856b6a01266dacd030bb5b017239bb8b2e50ed257`  
		Last Modified: Tue, 01 Sep 2026 00:30:28 GMT  
		Size: 2.2 MB (2170225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0392449caec5816f523d837aa259492090c9a39cabfc9d9fdc46dbb665efa954`  
		Last Modified: Tue, 01 Sep 2026 00:30:26 GMT  
		Size: 9.3 KB (9317 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc` - windows version 10.0.26100.33296; amd64

```console
$ docker pull hylang@sha256:aef3127d18e3f28a9e7cc072a0f53a9cbd8afe2da240c09731b8e452439d5d37
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2521201097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c1bd94562597056edfe9f6cc4a28c21d9bb3c93cfb8e1e5e7dbb1f297c296d9`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sun, 09 Aug 2026 09:10:21 GMT
RUN Install update 10.0.26100.33296
# Wed, 12 Aug 2026 17:34:09 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 17:49:25 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Aug 2026 17:49:26 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Wed, 12 Aug 2026 17:49:26 GMT
ENV PYTHON_SHA256=be7efa348927146eec51e3f8fd8381a92882ff6e4275c7a2fe003624719e6e5e
# Wed, 12 Aug 2026 17:50:02 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 17:50:02 GMT
CMD ["python"]
# Wed, 12 Aug 2026 18:23:45 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 18:23:46 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 18:24:35 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 18:24:36 GMT
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
	-	`sha256:f45c3fa4e19fb5e29c4ec3f18616552d3f4d5c6452158d23ed3c31746089abe4`  
		Last Modified: Wed, 12 Aug 2026 17:35:38 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d4e937973fc16f9409d0354fe4c70bbe6af492c70f30dce4a60b305ab8e23a`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d77f9ed2d9ec06a9863224b8227a5a40191b067172175b761eb09dd08d85e40`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c437a858f4c108ca45a084e5164ffbab63aac695cd42d883cbf5ea713d2a18`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a415b41e8f09fce4635fedf4012e2d6fbdfed8e2f903fc54dac1793df7e64a`  
		Last Modified: Wed, 12 Aug 2026 17:50:12 GMT  
		Size: 72.2 MB (72155849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd39ccb5dedeef4a196e32fa40ebe243933f4ba7c38e8ec95f6b19d90aa6663`  
		Last Modified: Wed, 12 Aug 2026 17:50:07 GMT  
		Size: 1.4 KB (1356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7cf5193c99e17837d7418181cf37bdfc4289c60a526ed03010a361923eb968f`  
		Last Modified: Wed, 12 Aug 2026 18:24:40 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f1616882d9d23ff6995d7660e05bf0a88c60998c6a2831792c233b61b9bd7d`  
		Last Modified: Wed, 12 Aug 2026 18:24:40 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385a1865123d9bc01f2b35d0fdd4d1fe28a50976a06454373f127728d609b9b8`  
		Last Modified: Wed, 12 Aug 2026 18:24:41 GMT  
		Size: 8.2 MB (8249430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a779b29008b03d2de7032be9d22a0a5a8c4f97160b97a8c0e4a70dbeebab77a1`  
		Last Modified: Wed, 12 Aug 2026 18:24:40 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.15-rc` - windows version 10.0.20348.5499; amd64

```console
$ docker pull hylang@sha256:af22ea3600672f078faa5b296a71f9d4504b3500192da4bdf0646c50ba0b52af
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2264132810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cab295d37c3c226c1a6475a7dfd345db60351c69bdcd661e92b75987188f24`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sun, 09 Aug 2026 04:19:26 GMT
RUN Install update 10.0.20348.5499
# Wed, 12 Aug 2026 17:50:53 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Aug 2026 18:26:53 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Aug 2026 18:26:53 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Wed, 12 Aug 2026 18:26:54 GMT
ENV PYTHON_SHA256=be7efa348927146eec51e3f8fd8381a92882ff6e4275c7a2fe003624719e6e5e
# Wed, 12 Aug 2026 18:27:34 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 12 Aug 2026 18:27:35 GMT
CMD ["python"]
# Wed, 12 Aug 2026 19:18:28 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 19:18:29 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 19:19:12 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 12 Aug 2026 19:19:12 GMT
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
	-	`sha256:22e05ffa1d42945055559d13c674b9b9745fe283b847111a7d27cac84f7749db`  
		Last Modified: Wed, 12 Aug 2026 17:53:15 GMT  
		Size: 1.3 KB (1338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215e0377d5ea58d8e686915017957e560dd444eb7af0028664d54dcb6df06390`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a9ce087705da946e94ae5c562249e0b10e0ef5036330e86128eaa17b6f10750`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13b6919a5e7bae6bd2423695b556f70910e169463d7c73c72a91c317a7d66c25`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 1.3 KB (1330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26896efe3431aa58ed62f532a24c80b91692d1d40c56d4dba193dbc69c625e50`  
		Last Modified: Wed, 12 Aug 2026 18:27:45 GMT  
		Size: 72.0 MB (72019278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74c77d52a77408c9339309ee461cd44743b1eebf7b3f04045c511bfc8fe64b3`  
		Last Modified: Wed, 12 Aug 2026 18:27:40 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db6651de429a9429cf4db0fcbaef54c77e2563d23ad3921249d0a3530cd7fc9`  
		Last Modified: Wed, 12 Aug 2026 19:19:16 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4ed6778477d89de3fd16995a08ddf058ea83014ffd6881244bd2484b3ddaffe`  
		Last Modified: Wed, 12 Aug 2026 19:19:16 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7326e924f92126df25d3b4563529516d773666eae59c769c85e5db6bb5cf60b5`  
		Last Modified: Wed, 12 Aug 2026 19:19:17 GMT  
		Size: 8.1 MB (8105630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33ea3385f9dd831635a06749b35ccbb3660a4713f21ca2fddd81503ade2449c3`  
		Last Modified: Wed, 12 Aug 2026 19:19:16 GMT  
		Size: 1.3 KB (1332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
