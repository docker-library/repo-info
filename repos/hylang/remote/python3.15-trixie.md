## `hylang:python3.15-trixie`

```console
$ docker pull hylang@sha256:77d1124f17a5c8fdc69af87c0cd937b40e85aecfd3c90546c7a106a78fa7d49d
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
$ docker pull hylang@sha256:672a0657e27d52775057c45be86b960635cd52cf816ceb06643c4511f860d958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50025112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f527fc029570eb3e27f3b44961389a892f5ce93975a2479f7ff7c201b7dcd15`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:52:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:52:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:52:32 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 28 Oct 2026 01:52:32 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Wed, 28 Oct 2026 01:59:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 01:59:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 01:59:54 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 02:42:14 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:42:14 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:42:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:42:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b838539afa7464c6f74d0ed96ca5eebfe58442721e610a76f5267760779ba78`  
		Last Modified: Wed, 28 Oct 2026 02:00:02 GMT  
		Size: 1.3 MB (1289746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8507a056af7406c519f1856928040aa24e3b0affaffe2bc1f959e2f7ef5488cb`  
		Last Modified: Wed, 28 Oct 2026 02:00:03 GMT  
		Size: 13.2 MB (13156354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0f6764aa5f3372d3d42a1b51ec507436979b445a270bd47200242d770b7d02`  
		Last Modified: Wed, 28 Oct 2026 02:00:01 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f13bc7c1edb19773d92ed92aca3dd5f30aac951991a5cdd9468cbb5446b5489`  
		Last Modified: Wed, 28 Oct 2026 02:42:21 GMT  
		Size: 5.7 MB (5723525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:136b262525a1a22e41ca19512069002820f3b5d964fef9503e31b4b9f6a44644
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2192895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f796af16726e2f764061c0457db909bbed26340a93e3c01a50350d96cf54dec`

```dockerfile
```

-	Layers:
	-	`sha256:83ca4f127e58be5219a810dea35c4092f4f48eb68a60c2f8915a9d7c6f57f7d5`  
		Last Modified: Wed, 28 Oct 2026 02:42:21 GMT  
		Size: 2.2 MB (2181237 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d7c1644918f9c0cdf56b77986acaeee969b1130599b22c77d95313e793423d7`  
		Last Modified: Wed, 28 Oct 2026 02:42:21 GMT  
		Size: 11.7 KB (11658 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:117abc14884ab4baf59d3a8375edf1a6c63d0e7c7e93117f860d25901e1d0f05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47834539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d3bb91c4afd77bbbc745861828256c3b36593216b093a27722048f47d3470d9`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:52:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:52:49 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:52:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:52:49 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 28 Oct 2026 01:52:49 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Wed, 28 Oct 2026 02:02:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:02:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:02:57 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 03:16:51 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 03:16:51 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 03:16:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 03:16:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b1c70f078911dabf8cbc62d927b413ecdd62a0f3696789d1119b8990f97d7d`  
		Last Modified: Wed, 28 Oct 2026 02:03:04 GMT  
		Size: 1.3 MB (1272962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9389945a00be5a4823fa0717e2cbd232672878e0f12d0206ff493a3c18db85dd`  
		Last Modified: Wed, 28 Oct 2026 02:03:05 GMT  
		Size: 12.8 MB (12819036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2cb1e6416274ec1d44493f22b86d821b54efc1b5d585e5ee1731f3c7031423`  
		Last Modified: Wed, 28 Oct 2026 02:03:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecd2b8cde7a2b477cb3a8c962a2aeb65790da255fb17d36a0d6258f8dcf5399`  
		Last Modified: Wed, 28 Oct 2026 03:16:58 GMT  
		Size: 5.7 MB (5723623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:d04911cb27151535d0c2eb2f97d0ed1d60a9a19fd2731b7648ac60ffa509cee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2196137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f21440811a10645323d064edcac6c742152453fb5cbd810ea0283583ad00d62`

```dockerfile
```

-	Layers:
	-	`sha256:c8d9f8387768701e31b9b55dee2feaecee9c5f37bac7e4b520a61c32cfb25589`  
		Last Modified: Wed, 28 Oct 2026 03:16:58 GMT  
		Size: 2.2 MB (2184303 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8ce9cc660672ee47a187f1f91b0d131eb3edcac584d5ea8103e38164f6614e0`  
		Last Modified: Wed, 28 Oct 2026 03:16:58 GMT  
		Size: 11.8 KB (11834 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:c69026b8f35ad02f40222ec75803a7a8381b49c8dadd63f7ac24d3826f60c798
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (45966838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23b29ae9c83ba9e71c4a491bbb318ec88e995237eccb51b849c6ef313d1c709e`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:33:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:33:18 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:33:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:33:18 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 28 Oct 2026 02:33:18 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Wed, 28 Oct 2026 02:46:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:46:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:46:07 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 03:50:47 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 03:50:47 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 03:50:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 03:50:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01796057fdbf964c96ccb530f2c7dc7d664c8e2b01dc21e1d037a75fb3b4b683`  
		Last Modified: Wed, 28 Oct 2026 02:46:15 GMT  
		Size: 1.2 MB (1245712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b616302a661cb41ee73487514eb858ff009630f315f835d6724e96131ffe2006`  
		Last Modified: Wed, 28 Oct 2026 02:46:15 GMT  
		Size: 12.7 MB (12725178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce667d83fa7b6c11904784cd33b18af5287fd154405ac2f9dd176968f8f41ee0`  
		Last Modified: Wed, 28 Oct 2026 02:46:15 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e16ab6fcdf79c421d8b5c67386b34231b8c064d84988a632698c5efdd37025b`  
		Last Modified: Wed, 28 Oct 2026 03:50:54 GMT  
		Size: 5.7 MB (5723529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:4e934c7be6e4965ac9b3eb71e36c95fc10559747059446e1058b4b58b83f7ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2194592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826a424750cd795b49770cc5404ea9d35ed757e78df180dbd30abc4d1f000f85`

```dockerfile
```

-	Layers:
	-	`sha256:9284c617a28542ab7cad465390659fdd06579d9a7ad9e9ae3fb8ecaf0b661903`  
		Last Modified: Wed, 28 Oct 2026 03:50:54 GMT  
		Size: 2.2 MB (2182758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54360870eb79a8f4ac0fd077650f3b8e4a4c5f84dbeee857b6a81e2724bd3923`  
		Last Modified: Wed, 28 Oct 2026 03:50:54 GMT  
		Size: 11.8 KB (11834 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:24a7fe80d9732c9d036912fb6984c2522c944a6aaefd55b7a905564ea104654a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50269611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4977392a340414b668aeb37171575c6e94a49960d8c1f6d81db7a5947928d874`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:56:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:56:04 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:56:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:56:04 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 28 Oct 2026 01:56:04 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Wed, 28 Oct 2026 02:04:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:04:03 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:04:03 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 02:53:36 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:53:36 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:53:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:53:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f905dfed6ffcd676f1aa0837527fb6b6edb8ae9f38381c3d6a9e2de097d73c2`  
		Last Modified: Wed, 28 Oct 2026 02:04:11 GMT  
		Size: 1.3 MB (1270149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd973b63774c14d6fb5fdce32f658fb6dc9c715b05b57009664542fc941d581`  
		Last Modified: Wed, 28 Oct 2026 02:04:12 GMT  
		Size: 13.1 MB (13062108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fee3cb2e4aa708222e06f188df39ac7e99bea44272766dae025ad7329373e7`  
		Last Modified: Wed, 28 Oct 2026 02:04:11 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ec2eb96100fde4e293d8b055ea55dce9cee3d8cb1197c16ba2b54355d447691`  
		Last Modified: Wed, 28 Oct 2026 02:53:44 GMT  
		Size: 5.7 MB (5723607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:bffd83a94bd33ffcc2bf80d8334ea224f3c8b6cb932a8e97c318dc3454482f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2193546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e745c3b59d3f92b5d89d7181bb9f0d72fb5c0f3c2e7b9f708792da4c3a9571a8`

```dockerfile
```

-	Layers:
	-	`sha256:02819f9471017ab5651db3e9fea8b9d23214cc4355ff74129e376736f728dd4c`  
		Last Modified: Wed, 28 Oct 2026 02:53:43 GMT  
		Size: 2.2 MB (2181640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f03323ebc3394e77c3b7503365d5d201a79a6119ddbe530ffe0111000395126`  
		Last Modified: Wed, 28 Oct 2026 02:53:43 GMT  
		Size: 11.9 KB (11906 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; 386

```console
$ docker pull hylang@sha256:449f26284d993226e7f17f24a8a735ab6733dd80d83d39df8ed61ffbab08a21f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 MB (51697816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ff1ea9ba6c8c1fabf2ddeba10abca6fb5ee92f23253da299c7c46babe1c712e`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Mon, 26 Oct 2026 22:32:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:32:06 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:32:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Mon, 26 Oct 2026 22:32:06 GMT
ENV PYTHON_VERSION=3.15.2
# Mon, 26 Oct 2026 22:32:06 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:52:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:52:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:52:41 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:27:03 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:27:03 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:27:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:27:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a4fa9e205ccaa65fe10417f08b2cc9f980d7d987c1162d37619c2e03a062080`  
		Last Modified: Mon, 26 Oct 2026 22:52:49 GMT  
		Size: 1.6 MB (1557621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4148f47f12f6ab907a36801257da159f36c6c16977ac0a779ee36a3aae623d0f`  
		Last Modified: Mon, 26 Oct 2026 22:52:49 GMT  
		Size: 13.1 MB (13062388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bafa3a2864aaba8db804fab735060a50b940d5c1d9ce39f721625d27b02cae39`  
		Last Modified: Mon, 26 Oct 2026 22:52:49 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742cc8fb1f4866b63c480f6e72e56a0c103b397b5a84d0941f482937d8cb9d09`  
		Last Modified: Mon, 26 Oct 2026 23:27:10 GMT  
		Size: 5.7 MB (5724023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:5898dfa899747cc6a8e442f6b4fa45bcd45d3c2d620c449ffe501f34e7550477
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2189919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057d4c73cc76b042d0c9e888000ab410da134924004db883c94e489293eca5e`

```dockerfile
```

-	Layers:
	-	`sha256:764f583cc61b909377cc103d44d21faf0dfa3a86493e6e3d751ab34f6e344f9d`  
		Last Modified: Mon, 26 Oct 2026 23:27:10 GMT  
		Size: 2.2 MB (2178356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92144dbd0df5ff8a8a5274a041ac09eb6c7674eb048a7c11c67a3cb2549bda4b`  
		Last Modified: Mon, 26 Oct 2026 23:27:10 GMT  
		Size: 11.6 KB (11563 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:130a27d0e7acd321cbbff57b8d43249485ffef138575e8f28d88a3c86cca8821
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.3 MB (54278586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d6d6b0548786a513320592c152a8920dfc46d0c263206a1a1bcec93f54feb5e`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 08:06:28 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 08:06:28 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 08:06:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 08:06:28 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 21 Oct 2026 08:06:28 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 23:24:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:24:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:24:25 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 07:45:15 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 07:45:15 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 07:45:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 07:45:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14340e647717f632617e72eeb550729fb0c19a375095a23482f999eaba87a68`  
		Last Modified: Wed, 21 Oct 2026 08:28:55 GMT  
		Size: 1.3 MB (1319424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fb47aa0f5664c78a7bb0be2489774c3e888bd3a97744c0c805741af18491461`  
		Last Modified: Mon, 26 Oct 2026 23:24:42 GMT  
		Size: 13.6 MB (13583139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d197403c6ccbe066074b80831b16242e1df14d4438d4b452ccae116f1a21e88`  
		Last Modified: Mon, 26 Oct 2026 23:24:41 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f70ccd9c3e02d0b85347a7b11699aa72f3c6964c2d8fe68bca1122e6464111`  
		Last Modified: Tue, 27 Oct 2026 07:45:31 GMT  
		Size: 5.7 MB (5723838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:9b090a8383b94affe68a8e8aed2f8e7b972ab6e18b30ae1740c2725d68df9632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2196658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7d5bf41ade9880a1cb024deb3988d5d715b24d8f7b045b56a5fae417fcf772`

```dockerfile
```

-	Layers:
	-	`sha256:39d77ff455c8bcaee66f84b9c3a90fb2c17c66cd5775a0c45a7c11a6a793a8bc`  
		Last Modified: Tue, 27 Oct 2026 07:45:30 GMT  
		Size: 2.2 MB (2184885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a138660efcd3f1a7b457393bc6ca57937afa2e8527c2e1b5e8d3f55eed62ac7`  
		Last Modified: Tue, 27 Oct 2026 07:45:30 GMT  
		Size: 11.8 KB (11773 bytes)  
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
$ docker pull hylang@sha256:2a9b7443e6a1501f93fe98cdf13070006d5cb8a862d8458b6581a65bba40c948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50191439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c62ccf3a2ecd6c6f3e2adbd38d03c18aeab275c3d229e09332509066526d809f`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:33:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:33:35 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 01:33:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 01:33:35 GMT
ENV PYTHON_VERSION=3.15.2
# Wed, 21 Oct 2026 01:33:35 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Mon, 26 Oct 2026 22:53:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libmpdec-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:53:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:53:34 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:23:56 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:23:56 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:23:56 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:23:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f19f0f99cb5b2e81153503b678bdea0800b49f11a50a930712f7211fff53a1`  
		Last Modified: Wed, 21 Oct 2026 01:45:10 GMT  
		Size: 1.3 MB (1304239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2807d9a3f74906b780c783aa65e0257ac530d8f6f83b409136a3453333db1389`  
		Last Modified: Mon, 26 Oct 2026 22:53:51 GMT  
		Size: 13.3 MB (13251965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3e5707e9fa34c410fced9dabe995bbe168586202030655e59ffce52d186b9b`  
		Last Modified: Mon, 26 Oct 2026 22:53:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24d0e4902f2d94fa3f95a39ac18f1cc9282c8e70e8f72eb1769d469550dedc6`  
		Last Modified: Tue, 27 Oct 2026 00:24:08 GMT  
		Size: 5.7 MB (5723549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:82150f1d791bb82b3d5492e2a7d24d470c89978789e7f037709a4b82004702bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2194333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:598c4e73f29367000820b821015cf5c85f9530bf2e31ca274a855d9d8c55a496`

```dockerfile
```

-	Layers:
	-	`sha256:14ac701071957c66717836bea2a4d0e670cd697fe6e6f436b99d21de702db4be`  
		Last Modified: Tue, 27 Oct 2026 00:24:08 GMT  
		Size: 2.2 MB (2182675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a15060a791b956bd8f6e5e27553e7ac34b3611f9acec243f9c60a98352596b6`  
		Last Modified: Tue, 27 Oct 2026 00:24:08 GMT  
		Size: 11.7 KB (11658 bytes)  
		MIME: application/vnd.in-toto+json
