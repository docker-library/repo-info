## `hylang:python3.14-trixie`

```console
$ docker pull hylang@sha256:20d4f926c371344efdabdd29066d0e2f7f5ea7872513f850d6625aa8be8d369f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
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

### `hylang:python3.14-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:5cde98e9a4a80ff91a349f0b9390b99c26f28324651d8e6b73ebdce80b6478d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49487391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a13f52586614eac4e388a09a7fce11b470108f375e4e8eb274f1bfd084c81532`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 22:34:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:34:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:34:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 22:34:37 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:34:37 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:41:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:41:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:41:39 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:47:38 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:47:38 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:47:38 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:47:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a39baf2ebe086ad16daa557c3497ff937b42d135ac6762491641d77218bcf48c`  
		Last Modified: Mon, 26 Oct 2026 22:41:46 GMT  
		Size: 1.6 MB (1551783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2653477103956dff27db1bc39e480465c1d75524c48abdeeba141f7c99d0a31`  
		Last Modified: Mon, 26 Oct 2026 22:41:46 GMT  
		Size: 12.4 MB (12411011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf01b8c3e5cdfa821553df5876421fa668994462a97521559e33a08c846bdc7c`  
		Last Modified: Mon, 26 Oct 2026 22:41:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1899926fd6a24ce37ec9e97d3b5933c4aca6ae6e58e1f4460206239aeef8725e`  
		Last Modified: Mon, 26 Oct 2026 23:47:45 GMT  
		Size: 5.7 MB (5680770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:9d4e32757094f9b04766e248aa4c8dc972a272f9c7c6bd627bae18dc453c2a0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:448af93f04653d3f67baaeab1036a51ab0c6c3077b4bbdd75ac4cd8707b35f20`

```dockerfile
```

-	Layers:
	-	`sha256:e38ff96ac5e2f7aaf2043cae577ef624ad556c0c5075ec3f128075889176c0da`  
		Last Modified: Mon, 26 Oct 2026 23:47:45 GMT  
		Size: 2.2 MB (2173177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5fc0c320d0c3ef957fb4c03aae712703012b447434fec043608d3d0457a30fd6`  
		Last Modified: Mon, 26 Oct 2026 23:47:45 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:87bbd4eeae974c2fe4ad47c3a8656e9948e7721f44a7ae0854aa621c52c61ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.3 MB (47313197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2ab567f9efe435032fee1fe38353456185ecfeaefc2c13badf9b94125e25a42`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 22:32:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:32:01 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:32:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 22:32:01 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:32:01 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:35 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:40:51 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:40:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:40:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a20d2253eb36a8d528ba77b5c9b8d614c9bfb5061a05f0850f4222f1f8858af`  
		Last Modified: Mon, 26 Oct 2026 22:42:43 GMT  
		Size: 1.5 MB (1535147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19acd3dbd791bef8e6ba9c3450cb0ce7c75195b37ad7e066951bad432d4164cf`  
		Last Modified: Mon, 26 Oct 2026 22:42:43 GMT  
		Size: 12.1 MB (12089131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e69fb408bf941efa71839cac12acce19ccbc520fc2ddae093a8455d1f9b13e`  
		Last Modified: Mon, 26 Oct 2026 22:42:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20424e22e742dc45b9bdf2e40ce8ac91c125d8f2b772372fbebebfad6d02de40`  
		Last Modified: Mon, 26 Oct 2026 23:40:57 GMT  
		Size: 5.7 MB (5680876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:02f5a53b87c0b8167df169b97375d253b9f9ca91eb18eb56c59751816d0a416d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2185558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b012795519fc5edf5bece5c2ea7d510db4fd136bcef7a388e5580b92073b4f68`

```dockerfile
```

-	Layers:
	-	`sha256:584de6afeb45d73ae41c96e786a87ece0c74c37ea99b673449cac0aad2e26d24`  
		Last Modified: Mon, 26 Oct 2026 23:40:57 GMT  
		Size: 2.2 MB (2176178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b275bf8d70686e38db9b66dbd055f5cf47db1c3e4793a2151616e0432d44e2fb`  
		Last Modified: Mon, 26 Oct 2026 23:40:57 GMT  
		Size: 9.4 KB (9380 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:a84183e309741c26e02f09b4048e5e93eee6b013a4b55e0aec07746acdf7bfcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.2 MB (45225779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39497f21ddda8e4678efea3608fef9d3ad80e46be8f628ea0a0104b16b7a8ed0`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 23:00:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:00:26 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:00:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 23:00:26 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 23:00:26 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 23:11:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:11:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:11:54 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:21:36 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:21:36 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:21:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:21:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f58fb5608540a66c923f7e416ce36fa8c856e30c23c00159b31b39e832ddf11`  
		Last Modified: Mon, 26 Oct 2026 23:12:02 GMT  
		Size: 1.5 MB (1507542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85458a9df405e2fc1c8511f8521e21e3c3af6e834af7df77e65d035d7b38dfc9`  
		Last Modified: Mon, 26 Oct 2026 23:12:02 GMT  
		Size: 11.8 MB (11778661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab893f48e5898a92aa5756ca5abef1c14fef918acd30d1a9e66151ade623787`  
		Last Modified: Mon, 26 Oct 2026 23:12:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d298f553297b28c0dcb494a5e26afe4133e858935b482cba6c8e822ab973bf9`  
		Last Modified: Tue, 27 Oct 2026 00:21:44 GMT  
		Size: 5.7 MB (5680932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:59505f899dfc1711b52daba45da6155d446960428da533f501567c95f850c52e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2184012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a52fa8885264e1236798f91ac3951e3a030d6d8bf65951ade88dd902170e2385`

```dockerfile
```

-	Layers:
	-	`sha256:c253165e199e0edbf83c06b20d7c8a58a69b88977370850b7a35b80a78d9702a`  
		Last Modified: Tue, 27 Oct 2026 00:21:43 GMT  
		Size: 2.2 MB (2174631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1993320a8fc70153f1f5b3ac3bd8d1f7c67029a25e5b872b9c8712d055409680`  
		Last Modified: Tue, 27 Oct 2026 00:21:43 GMT  
		Size: 9.4 KB (9381 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:7edb15537651194f467c5cdbef094466e7b6d33f730f9a71d41f5acfc625730a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49744149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf34f2dfaa85ed624ae8aa1544cf66f952fa06cdef5ec8ee85fbdd71499de55`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 22:34:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:34:55 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:34:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 22:34:55 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:34:55 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:33 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:33 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:50:49 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:50:49 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:50:49 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:50:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca79f135281071304babe832425a5c91eae8528d144a22fe8bfee518def17fb3`  
		Last Modified: Mon, 26 Oct 2026 22:42:41 GMT  
		Size: 1.5 MB (1534084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c02e772a93271d8b320556859073951e8764f3255d44790ff1f4f510cb39fbb`  
		Last Modified: Mon, 26 Oct 2026 22:42:41 GMT  
		Size: 12.3 MB (12328549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e623427576e10fdabc83d039774c6fd6f2ea1ab85145801ddae08d4d0beda5aa`  
		Last Modified: Mon, 26 Oct 2026 22:42:40 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44f807745ce0990cb44d6bc5722c8cb17b1f020d4233cbcbe5ce38eb635d735`  
		Last Modified: Mon, 26 Oct 2026 23:50:56 GMT  
		Size: 5.7 MB (5680790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:8718116db1b9e77b5dd2410dd077536b8eceaccc5d6a5396346425ae07b7b037
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab84bce8534c82d3eb14a4a2724961d5566348651be2f76d39af80d572621509`

```dockerfile
```

-	Layers:
	-	`sha256:2819c1f2b0e96c8aa475674a09d6b6356e4e8d5e7fb668ce654c2910ca4f9677`  
		Last Modified: Mon, 26 Oct 2026 23:50:56 GMT  
		Size: 2.2 MB (2173483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b81fcc44f9a4fc25eb0ab51dd685d944045d03f9147302b2ddd95eb68db7ba0`  
		Last Modified: Mon, 26 Oct 2026 23:50:56 GMT  
		Size: 9.4 KB (9421 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; 386

```console
$ docker pull hylang@sha256:02535b4a8dded1b0b5087f07a365087d07e1290f86ed5c1e5c27333f4ab7867a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50861060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0cc9938ed14b40aa2fdd7430e9a441901e6479428fd9d9febe40cea571ad8c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:15:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:15:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 22:15:24 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 22:15:24 GMT
ENV PYTHON_SHA256=e02d9ac21cebda6e46435369744a92c65cc7cd8669697694122cf97ffacd1e53
# Wed, 21 Oct 2026 22:35:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:35:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:35:21 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 22:52:57 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:52:57 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:52:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 22:52:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b20fb9b56580f15aabcc5405c298b774cca7ff21c9d64345c1ad4d720bae5c`  
		Last Modified: Wed, 21 Oct 2026 22:35:29 GMT  
		Size: 1.3 MB (1295994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d624b6166107203f69858e2042d8a527bb610cf7a620669c64cbba9c4407356`  
		Last Modified: Wed, 21 Oct 2026 22:35:29 GMT  
		Size: 12.5 MB (12530381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f83612fd64b81afb3a97272611ec1f2059db941413a74c9d2a9446e3d0255f`  
		Last Modified: Wed, 21 Oct 2026 22:35:29 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13ceb0e1bdc83999fe3303039b3ecb8b1b8684b5532b89416b0b1378eb33168`  
		Last Modified: Wed, 21 Oct 2026 22:53:04 GMT  
		Size: 5.7 MB (5680901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:cc1274f87a2a867adff7daa36d3519dd421189ca2017ffd0948b956281ea7c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2179537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080199440cafd4fb0c14598af32554a99f2d514262c210a8034fc4f2fc37a2f9`

```dockerfile
```

-	Layers:
	-	`sha256:f692437a5c28518420d71a7cf2ee66dd8faf2e98a1381501291282094635e990`  
		Last Modified: Wed, 21 Oct 2026 22:53:04 GMT  
		Size: 2.2 MB (2170336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b729eb25450948bf88bdb900a7ad2d9bcb187f60a44fcd56d13c2b85084fc2a2`  
		Last Modified: Wed, 21 Oct 2026 22:53:03 GMT  
		Size: 9.2 KB (9201 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:8b1b1b442baaa91c2516f1be05bbf023729794b431aaa803794f8ed99f1e849d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53465915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6614c8dd984d18e7b6c7fddbc55764ea58429c5fc5b83ed2fd85e8dcbdedc0ec`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 06:05:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 06:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 06:05:52 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 06:05:52 GMT
ENV PYTHON_SHA256=e02d9ac21cebda6e46435369744a92c65cc7cd8669697694122cf97ffacd1e53
# Thu, 22 Oct 2026 07:37:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 07:37:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 07:37:52 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 15:29:29 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 15:29:29 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 15:29:29 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 15:29:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e83e668ca8c869c89ec0e15303b4a3d59d31d95ce457d1805893f28fad79e7e`  
		Last Modified: Wed, 21 Oct 2026 06:33:03 GMT  
		Size: 1.3 MB (1319407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b79a4d7eabbe4d1ed8c639585a4bc3ee36273d9636dfd98ee2f5e9cf456dc4`  
		Last Modified: Thu, 22 Oct 2026 07:38:08 GMT  
		Size: 12.8 MB (12813577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be93a69f9137836e702cceaf98a2ae5d42114099cb2539394308447d0b12cff5`  
		Last Modified: Thu, 22 Oct 2026 07:38:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8205b4311d9156f7be805e1c5b6695c910be9fae02b5d31b508aeee0d7f359b`  
		Last Modified: Thu, 22 Oct 2026 15:29:45 GMT  
		Size: 5.7 MB (5680748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:a0dbec201993df4e1e0d229e3a044bbe9b3f509364f56bad53515b289b7cefde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2186087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2697f0658d43cf26a697c3ec330d6367fa547fb356ee54ba5a2bbccaa25a714d`

```dockerfile
```

-	Layers:
	-	`sha256:310b8e0a5a7bf2765d766bd2189f451d66689d4d79d682237a6a18c1c8987802`  
		Last Modified: Thu, 22 Oct 2026 15:29:45 GMT  
		Size: 2.2 MB (2176766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:60a5d56864733440d4d3ea4f828c193dc91fe48ba29dd25eb5f14e6566712b63`  
		Last Modified: Thu, 22 Oct 2026 15:29:45 GMT  
		Size: 9.3 KB (9321 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; riscv64

```console
$ docker pull hylang@sha256:f3ab9afd5f11884eb31d37e8d53c0b91aad04e1af7623a5e0383ac3f37250fb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.7 MB (47722486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5aee99d9189b53c5c1893f7c7cec584bb6b29e7c56d4dc366f19f19d3edb4565`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 06:47:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Fri, 09 Oct 2026 08:07:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 09 Oct 2026 08:07:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 09 Oct 2026 08:07:29 GMT
CMD ["python3"]
# Sat, 10 Oct 2026 13:36:47 GMT
ENV HY_VERSION=1.3.1
# Sat, 10 Oct 2026 13:36:47 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 10 Oct 2026 13:36:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 10 Oct 2026 13:36:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654ea5963a3fab2c5586a46177ab7d31db135a1669f2c63e29417d36490b518e`  
		Last Modified: Thu, 08 Oct 2026 08:34:32 GMT  
		Size: 1.3 MB (1262209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e5707389105a748efcf6a03be37f9388a63636038c5416b97cd5d5b678f194`  
		Last Modified: Fri, 09 Oct 2026 08:08:39 GMT  
		Size: 12.5 MB (12508628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0913eaf382eb86fba73ccbbb90d33919474bfaa8ea634b3049915471aba1e43c`  
		Last Modified: Fri, 09 Oct 2026 08:08:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca96a306e5ab864fd4a99da0ed236edd18c7992787cac3a28bd9368b64b43b`  
		Last Modified: Sat, 10 Oct 2026 13:37:49 GMT  
		Size: 5.6 MB (5617637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:d5ddfd2f7f87dbdd64e68d619368aff739a689720992ec49ed127422aa67da14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af3ee9ef03e96ef7469995f30b0b6a91da09681eb251d96852b1b25e7338e709`

```dockerfile
```

-	Layers:
	-	`sha256:7416c335d0c464c0af82b3ea3764ddd8f59a69a2351c36d5c4c5b66e30b3acc0`  
		Last Modified: Sat, 10 Oct 2026 13:37:48 GMT  
		Size: 2.2 MB (2170850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42053da485eea2440ddd0683e370030a8f55b7e5b5e3568f74053eb8050c74de`  
		Last Modified: Sat, 10 Oct 2026 13:37:47 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; s390x

```console
$ docker pull hylang@sha256:0c28d32950a09890e0914f98f891cc54f90652a729e58c762208688e78de3116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49355491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cb4ac6676482cc0c1755a5154f70420a7eb37df8c745c53efdaf09e3643b808`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:26:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:26:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:26:15 GMT
ENV PYTHON_VERSION=3.14.9
# Wed, 21 Oct 2026 01:26:15 GMT
ENV PYTHON_SHA256=e02d9ac21cebda6e46435369744a92c65cc7cd8669697694122cf97ffacd1e53
# Wed, 21 Oct 2026 23:01:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:01:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:01:47 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:12:50 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:12:50 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:12:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:12:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:520c02a2f6e8a85de6acaa60bba745bb3bad7b5b7cbb6ee977330373667d99c1`  
		Last Modified: Wed, 21 Oct 2026 01:33:12 GMT  
		Size: 1.3 MB (1304228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc9a88b942f7a6368db2b22580e87ab5eac0f3de8e296eb949d2a287310de23`  
		Last Modified: Wed, 21 Oct 2026 23:01:59 GMT  
		Size: 12.5 MB (12459175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039db87182867f5a44f3169e95b291a7f1ff529afc61e855b3d7bd06ae1b6823`  
		Last Modified: Wed, 21 Oct 2026 23:01:58 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78adf15627b2c8f7989531f7b30f890963f8802326c004787ce74003f7bf2afb`  
		Last Modified: Thu, 22 Oct 2026 00:13:01 GMT  
		Size: 5.7 MB (5680400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:ddc46a28214135dd7c6389553e0b39f1e238792ede9755899749d4f6c0f79c2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675135699356d47ce6b7fc6abdd644b2184f9bc09e9dbbe89e2a106e4c804e69`

```dockerfile
```

-	Layers:
	-	`sha256:0f8e5c8ce954afb2ad40aa5a186067ae7ad99e3ca5d9b25e40a8eaad53a8c3ff`  
		Last Modified: Thu, 22 Oct 2026 00:13:01 GMT  
		Size: 2.2 MB (2174614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:02a986742d63883e5d44946a2dad925e02ce572e863112b367c9b61b97906d21`  
		Last Modified: Thu, 22 Oct 2026 00:13:01 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.in-toto+json
