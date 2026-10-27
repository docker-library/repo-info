## `hylang:python3.15-trixie`

```console
$ docker pull hylang@sha256:7e158ec8ae79fd548b2eaec22f8be65e38462478f1213f28a827cf74fb498596
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

### `hylang:python3.15-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:afeaa55525cad0d169e38b324cbd52209dc17a4f598bf58ff7bd8fbc2a45cde3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50276062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b14da091ae96c74cc3b13bd0c0bc1367933abe36c4bc67bf7e8704611d82408`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 22:31:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:31:37 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:31:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 22:31:37 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:31:37 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:38:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:38:24 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:38:24 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:47:07 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:47:07 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:47:07 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:47:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b868008d373f68a7efabee29448ed1932a18f0d0a4d71668a74e0d8535ab221`  
		Last Modified: Mon, 26 Oct 2026 22:38:31 GMT  
		Size: 1.6 MB (1551841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69ec79c3b791ea2af34153e0c89b2ea954b74073f27b76db7e880f58b59532e9`  
		Last Modified: Mon, 26 Oct 2026 22:38:31 GMT  
		Size: 13.2 MB (13156815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae661f6c774466d79e9eb3976f4faf88294230a0f7c8bb89d5031f473b833771`  
		Last Modified: Mon, 26 Oct 2026 22:38:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b445979aaac0d0495b638e6579e2e1555d01c108feb4c673d38c6f887eeb26`  
		Last Modified: Mon, 26 Oct 2026 23:47:15 GMT  
		Size: 5.7 MB (5723578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:5fafb4e750bd253b992b72255102fdc05785646c3f026b6cafc1d4dcddc712fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2192895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52814955efb8c3905b011d0311062bd3043939c1002f8368c87ead3fef4f4ee8`

```dockerfile
```

-	Layers:
	-	`sha256:7584a3d4a6719b1ac35d821411201cb99d7a68496c273faba6517bf4c7b9ecd2`  
		Last Modified: Mon, 26 Oct 2026 23:47:15 GMT  
		Size: 2.2 MB (2181237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:762ea6a1339122c8bd28c983c32f2e39f3047399dbd23c3734dcfd8ce2ce7b0b`  
		Last Modified: Mon, 26 Oct 2026 23:47:15 GMT  
		Size: 11.7 KB (11658 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:c08d0f415548bb02f423da2e635ecaeea7b3dd2935cb27e03a5181bf111771d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48086442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f637a93af249ab0fc1a1a24e2ca0f71390b82a1c8205355767efbee8b9fc5ca`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 22:31:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:31:39 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:31:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 22:31:39 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:31:39 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:42:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:14 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:14 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:26 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:40:26 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:40:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:40:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56a20d6ca0d0aee9350f30afdcaa094530e6d4d8dfb7e5898c1acaecd996b9d1`  
		Last Modified: Mon, 26 Oct 2026 22:42:22 GMT  
		Size: 1.5 MB (1535137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c15cf687f524378f9935347eba6236308eee9ac6e3ef19b677ff2cd2759b92`  
		Last Modified: Mon, 26 Oct 2026 22:42:23 GMT  
		Size: 12.8 MB (12819650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901579c08a70b71808f748cb28f5e63730bbe1058286dc382e417c016937367e`  
		Last Modified: Mon, 26 Oct 2026 22:42:22 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1365fc2bd6aaaf53bdd854e7966e4938e9ead2e620a30c30a2be7ab28d5900c`  
		Last Modified: Mon, 26 Oct 2026 23:40:33 GMT  
		Size: 5.7 MB (5723613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:1a009f3e397cc17c8d2151e23d3044c0d5ed982668545849729f6607d4763be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2196137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda143be3af177606d9ebabc8b243b6c6ecdcf0ad5d281c9d4d426f6d83b317b`

```dockerfile
```

-	Layers:
	-	`sha256:e994b087818771b7941389297b18c638f26eaba105375b780a0698e5a7d60b04`  
		Last Modified: Mon, 26 Oct 2026 23:40:33 GMT  
		Size: 2.2 MB (2184303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce4a263122de2769cb2f1cd375cd9d228e96d63da6a5df840405101c472e0ae3`  
		Last Modified: Mon, 26 Oct 2026 23:40:33 GMT  
		Size: 11.8 KB (11834 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:6729b46a75660edf920db1646a08e347eb768be0104d38f3bd1107f5e817e3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46215228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54adaf9999248a38821de04b60c42a94c53da7c002a5708bbe686f07ac3352e0`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 22:43:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:43:07 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:43:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 22:43:07 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:43:07 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:55:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:55:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:55:25 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:56:53 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:56:53 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:56:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:56:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f0c198c469df4567894e6261dcc895f9b22c1078107dd1895e3d6b155a9481`  
		Last Modified: Mon, 26 Oct 2026 22:55:33 GMT  
		Size: 1.5 MB (1507553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f79bce743644802f5cbd9ed238ad5fcc8566f1b3bd10aa8cb1a4b9e52a9edda`  
		Last Modified: Mon, 26 Oct 2026 22:55:33 GMT  
		Size: 12.7 MB (12725475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7539b7c29842561d2f2728f1aad224baa75e63f1bfdfce1532d7c62df21af3cb`  
		Last Modified: Mon, 26 Oct 2026 22:55:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6bcb22881cbd7d0f39159ea3029605d18f2f2107e88afd02d46d5885d7d3696`  
		Last Modified: Mon, 26 Oct 2026 23:57:00 GMT  
		Size: 5.7 MB (5723556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:72fba3df53241abf0459e399fdd7d6e678860f8da5cac6a26881bc2773c1205b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2194592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d5468b5ff8cdf70250f9aa3402c5256d4913ecdeffd1aef144cb142cf2ddf6`

```dockerfile
```

-	Layers:
	-	`sha256:67baef4949e343557488531fe75f995d3de82ca2c05f9b7008f2e08ab57032df`  
		Last Modified: Mon, 26 Oct 2026 23:57:00 GMT  
		Size: 2.2 MB (2182758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12663614065feb8abb7f0baffd852ea75fc882c5dd569b8af0e44830a4b5c73f`  
		Last Modified: Mon, 26 Oct 2026 23:57:00 GMT  
		Size: 11.8 KB (11834 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:20415be84a1933d2c7162517583a6ef53229cc237df5efd1ea7b3d226caece9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50520183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:189e6aa7e38f6ed10808203f7fd3a86071db19282e09f1f76b41de9b5df5d7e6`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 22:32:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:32:03 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:32:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 22:32:03 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:32:03 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:40:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:11 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:11 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:50:17 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:50:17 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:50:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:50:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7746e16998d69f68fefa0c001c39a191759bbdd5cc27f8a2a2df4d39eed559`  
		Last Modified: Mon, 26 Oct 2026 22:40:19 GMT  
		Size: 1.5 MB (1534077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8da5c208116d9cdda10f733fb741c5a3613cc8abec59b755d3174347ad26b02`  
		Last Modified: Mon, 26 Oct 2026 22:40:20 GMT  
		Size: 13.1 MB (13061744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8cde803c764493b27ad7833465c1b8d872abc898fdcbe37476f49ef09ab4cb`  
		Last Modified: Mon, 26 Oct 2026 22:40:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec24a0354734369a04342b008fec0cce240fb2ed303c4dbc3f1d89b64f347c8`  
		Last Modified: Mon, 26 Oct 2026 23:50:25 GMT  
		Size: 5.7 MB (5723635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:3bc37e19ac5e653367d091d96046ece0bcc9c3224dbcaf3b863b68dcdc1e6151
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2193545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d862945da5474f116680a44f5b8de23ed55ba13a631d0c35490c3744af50187`

```dockerfile
```

-	Layers:
	-	`sha256:9eb888ee09c90b39652e75d33fdec38e866c1e80d2bec4c74dbf08c43c7a7ad9`  
		Last Modified: Mon, 26 Oct 2026 23:50:25 GMT  
		Size: 2.2 MB (2181640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396f5a6bcefa663eb3cf1ad4ab63d2d7cb94b71df8eb9a351e1bbe1f2ff87d11`  
		Last Modified: Mon, 26 Oct 2026 23:50:25 GMT  
		Size: 11.9 KB (11905 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; 386

```console
$ docker pull hylang@sha256:d093f021ad13e57d515c36c5dc8471cc28fc5d2e51f045a27fe62d9a5df10ff2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51414098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33bc22612c7bf8519db8081ee3740187cdf68bbde8ed7812955666f6e54a03aa`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 22:15:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:15:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 22:15:12 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 22:15:12 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Wed, 21 Oct 2026 22:36:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:36:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:36:50 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 22:51:27 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:51:27 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:51:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 22:51:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:340fdd361919710e1953eca8f12d628d53a5e44b8855ad01b57b2e5e69cc5f90`  
		Last Modified: Wed, 21 Oct 2026 22:36:57 GMT  
		Size: 1.3 MB (1295978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c5b22a7e3080aa099b0bd3b5b4632f2089472086f0705720d2220002b66f87`  
		Last Modified: Wed, 21 Oct 2026 22:36:58 GMT  
		Size: 13.0 MB (13040923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30356b6506819f3c3abff673a1d5d35fbceb88b792d396b89c2de93e906c79d`  
		Last Modified: Wed, 21 Oct 2026 22:36:57 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b40b3493719d806047ab172fc106d959e4009c48b0a46629b1113b6bbec5ff`  
		Last Modified: Wed, 21 Oct 2026 22:51:34 GMT  
		Size: 5.7 MB (5723413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:e09f7d10dcda6782d3ecba45d6b1ec4102343ae5b6d29067ee719836ed42e12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2189907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f951dfea4575a55f3c780107b74d8325444c64f025a0cf71b1eac635351f0d`

```dockerfile
```

-	Layers:
	-	`sha256:a426c7b15c7ed4a83890c6835c36c2217503e63c3532f090e011dfe08d65b11a`  
		Last Modified: Wed, 21 Oct 2026 22:51:34 GMT  
		Size: 2.2 MB (2178356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c5711c097b8ef5736bf8902e4c41d525b65890bda3e297e5847a9415075173e`  
		Last Modified: Wed, 21 Oct 2026 22:51:34 GMT  
		Size: 11.6 KB (11551 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:ed822a570cab3b5dffe8c444523600d1e798cd7c98085308b64cf34b197a8976
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54255412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9677c8e9b143a90cd129a6c3c30485873d89048a5e51e631002185c29a8f03db`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 06:05:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 06:05:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 06:05:52 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 06:05:52 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Thu, 22 Oct 2026 06:23:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 06:23:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 06:23:07 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 15:28:39 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 15:28:39 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 15:28:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 15:28:39 GMT
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
	-	`sha256:8efc1eca08b9d6ccc12e6b392d095a755fd317c7eb9f9a3f5ddcd3c5d9d24e36`  
		Last Modified: Thu, 22 Oct 2026 06:23:25 GMT  
		Size: 13.6 MB (13560345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a75b218944031fd55de38cc171bd28363caaa6e84aa0ceb730610eb4274c06e`  
		Last Modified: Thu, 22 Oct 2026 06:23:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f77158069f3f5fcb86fcbd1e8591e5e75585f6647b23bd4fe18e9ce48ee513f`  
		Last Modified: Thu, 22 Oct 2026 15:28:56 GMT  
		Size: 5.7 MB (5723477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:0742d907bf47b35cb48f41fc20813c16451f600557394e07312a5ad111fca1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2196644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a469e3cfd18960efbf8278c7f175e8a9b72f6fb2f1e1757e126dc61c3e178fc`

```dockerfile
```

-	Layers:
	-	`sha256:521bcc2025d43cc9637bde1dffc0973c40a7fd79b2371e68100e3369de24fa85`  
		Last Modified: Thu, 22 Oct 2026 15:28:56 GMT  
		Size: 2.2 MB (2184885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a670f120b82c02c3fad61f94ff3325c23e5fc32421e3d9820788f5043e291942`  
		Last Modified: Thu, 22 Oct 2026 15:28:55 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; riscv64

```console
$ docker pull hylang@sha256:c96fe8448a7f7c939d759e0f45d72164356bcaa0da04e85f99320ec4abf4c99a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.5 MB (48515217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562290d689438473e485c7e8c7543e57043603f71ef98cea6fda45a965c4bf4e`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 08 Oct 2026 06:47:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PYTHON_VERSION=3.15.0
# Thu, 08 Oct 2026 06:47:27 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Sat, 17 Oct 2026 10:49:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 17 Oct 2026 10:49:22 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 17 Oct 2026 10:49:22 GMT
CMD ["python3"]
# Sat, 17 Oct 2026 18:31:28 GMT
ENV HY_VERSION=1.3.1
# Sat, 17 Oct 2026 18:31:28 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 17 Oct 2026 18:31:28 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 17 Oct 2026 18:31:28 GMT
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
	-	`sha256:a570ea35aa1dc17173c17e3a7ad772990db257a8e37390c477de1d7a883f49c6`  
		Last Modified: Sat, 17 Oct 2026 10:50:33 GMT  
		Size: 13.2 MB (13230131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693b686bc9ccd666bcd826cd809c922f5b97377ed61950ad896f0212d0de1c57`  
		Last Modified: Sat, 17 Oct 2026 10:50:31 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d715c37d168659a5aee792487cb4433948729ab6906a51ee91a8a2b329740d5`  
		Last Modified: Sat, 17 Oct 2026 18:32:30 GMT  
		Size: 5.7 MB (5688864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:bef5223e6dce721fc8da455a882c224184911279af2f222fa76bfd1d6b82a773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2188285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ab31ad0e6ab63e5ea4a4af418d24154db679b4e28f4d1403b99abe4edede9b8`

```dockerfile
```

-	Layers:
	-	`sha256:9195a5aab7e6e548b6eee701dce181f40d818c6a6d783af2ce4388a961a7bd19`  
		Last Modified: Sat, 17 Oct 2026 18:32:29 GMT  
		Size: 2.2 MB (2176527 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:378fa462b7719a9f4365683ba69522b903d6bb12fc37bd73219048dabc989197`  
		Last Modified: Sat, 17 Oct 2026 18:32:29 GMT  
		Size: 11.8 KB (11758 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; s390x

```console
$ docker pull hylang@sha256:b85f4901b4008f4c9db9d08ce07bbe6b8c75da3e04dadfde886f56d98094c0bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50168535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201554e1d4b8487715138831bb606e675ec85955bc466682df1cbdaccacf31c1`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:28:08 GMT
ENV PYTHON_VERSION=3.15.1
# Wed, 21 Oct 2026 01:28:08 GMT
ENV PYTHON_SHA256=673ae7232d84c894729882c8257d300ef2d26523911bfd3917ec8ce7f526f99b
# Wed, 21 Oct 2026 22:57:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:57:03 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:57:03 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:12:13 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:12:13 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:12:13 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:12:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a114cb85fef1c5e56e132cdde66b91fc1243ad63272b079193d4a0c039f5b26c`  
		Last Modified: Wed, 21 Oct 2026 01:37:42 GMT  
		Size: 1.3 MB (1304228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac618d22d19d83b70b056392882d0530f3ccfeadcc99f143cb44aca2a3e9045`  
		Last Modified: Wed, 21 Oct 2026 22:57:15 GMT  
		Size: 13.2 MB (13229545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c64c02c3638306efc92ed4a092f6d41440dd10e0c63848043476e6b298ae5d`  
		Last Modified: Wed, 21 Oct 2026 22:57:15 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ea3a267234493d430344a571912e56c61bbf4da678b797f94445b091b27640`  
		Last Modified: Thu, 22 Oct 2026 00:12:24 GMT  
		Size: 5.7 MB (5723075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:cd65a46f402a1ee897bfcb23ce96eacb6eda4852968f93b540bb6b7e462ee1fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2194318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1b675ebca56e2f756b4417b7d07abd845c98680fbfd268cffdd629b89d835ef`

```dockerfile
```

-	Layers:
	-	`sha256:e151fdd723e405cdbb2fd78df77c8327535ac2dde01ff09289f4fcf36bdd3647`  
		Last Modified: Thu, 22 Oct 2026 00:12:24 GMT  
		Size: 2.2 MB (2182675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f99fb4ba90f8c247efa87b18477786d49b2d365a001122c8615059c3ad9d7e00`  
		Last Modified: Thu, 22 Oct 2026 00:12:24 GMT  
		Size: 11.6 KB (11643 bytes)  
		MIME: application/vnd.in-toto+json
