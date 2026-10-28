## `hylang:python3.14-trixie`

```console
$ docker pull hylang@sha256:18194ea40dacda7bc90cd3e49b7b4c8ead4695d049fcfdf685dd0a910779260a
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
$ docker pull hylang@sha256:3098f8e6c4db47e69170b0a15506421264ca1329c7540d58f040704c03ae5e80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49238152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a492d7dcaed89e27ea25270a55e843c65acd94e083bcb21e07ec39244b9f7ec`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:53:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:53:48 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:53:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:53:48 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 28 Oct 2026 01:53:48 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Wed, 28 Oct 2026 02:00:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:00:49 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:00:49 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 02:42:15 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:42:15 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:42:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:42:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:646d37df0c533921d82512bef9ce6a5d2948e4e98c8c61689e9961e269c30282`  
		Last Modified: Wed, 28 Oct 2026 02:00:56 GMT  
		Size: 1.3 MB (1289744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57257d6d8137dab325b25390b3711f8dd1a2a3a45fef1686d0177e058fc68403`  
		Last Modified: Wed, 28 Oct 2026 02:00:56 GMT  
		Size: 12.4 MB (12412045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a79f5805ed632260bcefb9f20f1db1f62ba605ded5fe5b350795e17d6f9704`  
		Last Modified: Wed, 28 Oct 2026 02:00:55 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b09d1d35bc2f99718018f3883ee3077853bd7fdb823dd7a4b0d8fb92466c8b`  
		Last Modified: Wed, 28 Oct 2026 02:42:22 GMT  
		Size: 5.7 MB (5680877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:bc11a4d6f6c669697b0e82b313a02f12737e6e63730c5750d4b7243afd6d8825
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e8fd7405ba5a7b33f8b225d0cef1127decdc1e8f5c1bc1b474c6a934ad0528`

```dockerfile
```

-	Layers:
	-	`sha256:6c2da5d5dbb2fba52679c24e94d178e30a93bcfcb1f4ca9caad2a07d157cb2f3`  
		Last Modified: Wed, 28 Oct 2026 02:42:22 GMT  
		Size: 2.2 MB (2173177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:267fe4f953a3e1ce8c990c76cc9fe87258e5c0971a3fc17dc6fd3e534e01f273`  
		Last Modified: Wed, 28 Oct 2026 02:42:22 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:1315faef32da70b43b939086e25132fc1e3951f870e43e4c1a45a873ce37c4a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 MB (47061618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc85a471c3700d87cf1fbb616a0e5ca511056286655712252667487238ab4aa7`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:53:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:53:14 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:53:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:53:14 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 28 Oct 2026 01:53:14 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Wed, 28 Oct 2026 02:03:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:03:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:03:54 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 03:17:18 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 03:17:18 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 03:17:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 03:17:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01232bf8ab32db7e18b138e36af16e6c45203080d1714f22a2c7711664519c44`  
		Last Modified: Wed, 28 Oct 2026 02:04:02 GMT  
		Size: 1.3 MB (1272962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b291e67dc789787ed38449b0d8a2bbb7c028d9b74669a835be10dfd156f38b`  
		Last Modified: Wed, 28 Oct 2026 02:04:02 GMT  
		Size: 12.1 MB (12088794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97697edc4a2321a23cf9a3766cf3473b91f561f1481a346a435d32ea97a2744d`  
		Last Modified: Wed, 28 Oct 2026 02:04:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8de8ebf3f91ac31d47df185a90fd2b70088f7b75aa62e890969cfe54edf652`  
		Last Modified: Wed, 28 Oct 2026 03:17:25 GMT  
		Size: 5.7 MB (5680944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:d2d7c2387a4b3bfd2b1c9c06fd0620ca4b934a06990de7ed33192b04a5616c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2185559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a26f46a6cadd1cb07cd94496d2048f5eaad04bced66621175a844200fd91ce6`

```dockerfile
```

-	Layers:
	-	`sha256:b6f243b919e430eb5a70b9ec23f36904d6f4cacc913b67d2971e3640b1511548`  
		Last Modified: Wed, 28 Oct 2026 03:17:25 GMT  
		Size: 2.2 MB (2176178 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e43f8af5de186c436c2dbc8e2d2bfc317d348197ecf5da53b8bbed3a9f818ed5`  
		Last Modified: Wed, 28 Oct 2026 03:17:24 GMT  
		Size: 9.4 KB (9381 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:2e560be8d9e3c899e3e8b6e2834079f7a21df638dfca43d80e409c6e7634277a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.0 MB (44977808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1921e62e44dc22f4d067f5db9bd5fd70ab631c34df2de9d7cff13cc87c3a031`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:36:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:36:44 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:36:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 02:36:44 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 28 Oct 2026 02:36:44 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Wed, 28 Oct 2026 02:48:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:48:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:48:07 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 03:50:53 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 03:50:53 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 03:50:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 03:50:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0724d14c3ba6fa1e23527e9609f8b455d2fae072663fe8b04001a105370691`  
		Last Modified: Wed, 28 Oct 2026 02:48:14 GMT  
		Size: 1.2 MB (1245712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39935d7eee066d06046ba704b55e51d7b18c4ffaf603dea2d561366b8ea1690b`  
		Last Modified: Wed, 28 Oct 2026 02:48:14 GMT  
		Size: 11.8 MB (11778872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08351f25c2ba25a0b4f7ac8ecb77c59191e2d1bc972a48108c866642918c2f6e`  
		Last Modified: Wed, 28 Oct 2026 02:48:14 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5274c34713b3b57d1f39f91d0d5c73626e502d280d590b818260fd33d740107`  
		Last Modified: Wed, 28 Oct 2026 03:51:00 GMT  
		Size: 5.7 MB (5680806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:458e91d6af09f812cd0a5e9dcf6d08aeea5fe7961fbaf172a63f2fbcdaf03368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2184011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:779828ca7a5f1f5667dd08b30cbd015c509066af3e5da73b12d4462b63aa0cc7`

```dockerfile
```

-	Layers:
	-	`sha256:d4e7cdb9c82930b46a76bc4568541fda41ae44f4fbe5c9f97d3cae2297e20ebc`  
		Last Modified: Wed, 28 Oct 2026 03:51:00 GMT  
		Size: 2.2 MB (2174631 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30312567bced2d55ec85b161f29ffcd44af04b2a5795e0437e4ce4db067bf3df`  
		Last Modified: Wed, 28 Oct 2026 03:51:00 GMT  
		Size: 9.4 KB (9380 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:bb5729c5462503b9bbb846a5f31ac3b0753b6c953c6493a978b9e81bf6dc7d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49489876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fed3d5ffc149b4ddc0b9c72a958237a7d5298c2b6848c30b4ce163170851514b`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:58:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:58:00 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:58:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:58:00 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 28 Oct 2026 01:58:00 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Wed, 28 Oct 2026 02:05:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:05:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:05:39 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 02:53:45 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:53:45 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:53:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:53:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd71dd7cec997a212e8fec2184b13aa5b2f7d2214deee72a1f72d77ba84dfeb5`  
		Last Modified: Wed, 28 Oct 2026 02:05:47 GMT  
		Size: 1.3 MB (1270199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e232ddaa6e0a0a5a10b926f127d51b67808609aae0cc160e61ae61ed96373170`  
		Last Modified: Wed, 28 Oct 2026 02:05:47 GMT  
		Size: 12.3 MB (12325172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d726e892c357623852382eaaedeff5a8daadf9db020a95bc15f3baf9b92566`  
		Last Modified: Wed, 28 Oct 2026 02:05:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa821a76cf5ba067b847e01338f4ed30162a88af20e2f9b40bd4319d0c78e57`  
		Last Modified: Wed, 28 Oct 2026 02:53:51 GMT  
		Size: 5.7 MB (5680758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:a78b4f7bf688406625f989a3e75eb89db1af5300c956720bf5bf51310b64c301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2182904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92493aaf035314a9602a31847c82b63fcf98d2370e03e91c63808a16881daf22`

```dockerfile
```

-	Layers:
	-	`sha256:86f248692d49263b1d83804237146070af0f8e3135255967840db44dd98b6017`  
		Last Modified: Wed, 28 Oct 2026 02:53:51 GMT  
		Size: 2.2 MB (2173483 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d7ae59a27b366d4a47b246c81d8b82abc7b9bc52d4220861eff1f05567cef74`  
		Last Modified: Wed, 28 Oct 2026 02:53:51 GMT  
		Size: 9.4 KB (9421 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; 386

```console
$ docker pull hylang@sha256:57a9776e8ce2b60d127d6b7b7863142b646736522077fcb15ea03c9dcb5713bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50898496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36c36e9074c4b8b9e60f0df74e8688ba24998b85f9a51d4f8d2a24327666cc2`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:51:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:51:15 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:51:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:51:15 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 28 Oct 2026 01:51:15 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Wed, 28 Oct 2026 02:10:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:10:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:10:07 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 02:46:15 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:46:15 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:46:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:46:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ea8aa80ef9f1e35d19af723b8e45c5e12b71a100f749023b7192487b6dfc8e2`  
		Last Modified: Wed, 28 Oct 2026 02:10:14 GMT  
		Size: 1.3 MB (1295125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd133d2a1e782b7b850e06b5fcd39772e1e307a76571c861f80b2bf01637a829`  
		Last Modified: Wed, 28 Oct 2026 02:10:14 GMT  
		Size: 12.6 MB (12553354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b98230298346d96db1c412ba6ecb072ccffa1239c35fb8b4c7f9c9c75af1d2b`  
		Last Modified: Wed, 28 Oct 2026 02:10:14 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26de9ba297aad86af314ec1f3c66ca21ce11f2530a5a82a82ef2af1c09cbc3a8`  
		Last Modified: Wed, 28 Oct 2026 02:46:22 GMT  
		Size: 5.7 MB (5681180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:5b69631d5d9879048cd06b3825a33349d09c3c87dfa3ebfb742e333efa7a0b1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2179555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f8b66ec36c8a4e52ccaa52595218d4b0ebd486d337501d1c49ca86c62713dba`

```dockerfile
```

-	Layers:
	-	`sha256:c74bf992df975fb374e81f72cad437dd10b633e5cc61c7de354f1084541d9dee`  
		Last Modified: Wed, 28 Oct 2026 02:46:22 GMT  
		Size: 2.2 MB (2170338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c2b1df62c6d2aacabad28873faeb6db6906dc6d88b40df9908e133fb9b2a820`  
		Last Modified: Wed, 28 Oct 2026 02:46:22 GMT  
		Size: 9.2 KB (9217 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:bed193c1cd02b4930d6fb98bfafbf0fbaf4f7f6de250229c1bde45eb2b2f0d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53494472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2796b2a277f00ee3cef64a6e87c2b8d65b1b1e7f65446ed296d65911f199380`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 06:03:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 06:03:16 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 06:03:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 06:03:16 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 28 Oct 2026 06:03:16 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Wed, 28 Oct 2026 06:58:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 06:58:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 06:58:07 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 14:30:13 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 14:30:13 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 14:30:13 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 14:30:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f490fb2987a662c38eed3607aecc06172dd51be9288e6586d2882b2c76f0ea1a`  
		Last Modified: Wed, 28 Oct 2026 00:24:12 GMT  
		Size: 33.7 MB (33666263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6088dc516ed6f4d7281bb3c346175bc3285726991a71c15fc96122d69d84ce`  
		Last Modified: Wed, 28 Oct 2026 06:27:25 GMT  
		Size: 1.3 MB (1318348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b0bbf47bad03ab53bc17882f70abd877020c55b30fa4ed123eb341675bef958`  
		Last Modified: Wed, 28 Oct 2026 06:58:22 GMT  
		Size: 12.8 MB (12828545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fd4c12ebf6a8db0839070c9f8c3eef16c514dbf7d6024f959c5819e48cbc24`  
		Last Modified: Wed, 28 Oct 2026 06:58:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8f5048ee41a78ec5da6eec95388c4e4978c89e2ca65abcf894be7516f770c1`  
		Last Modified: Wed, 28 Oct 2026 14:30:28 GMT  
		Size: 5.7 MB (5681064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:002b99f7afe8b08ccce0d1dad9657429a7343b10d4f15d5ec1df240f2d16b139
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2186104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea1f58ec92f56b69d8db379e352572baa2e6516ac43bad20aba8804153fab8de`

```dockerfile
```

-	Layers:
	-	`sha256:6bef8972fde821506498f37cd10eac21ab53f3f538bf8b91c7b44b1761632c5b`  
		Last Modified: Wed, 28 Oct 2026 14:30:28 GMT  
		Size: 2.2 MB (2176768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99d8d10fdb63438ec30025dd42ccee5a3dc525678c20dffa3efd247e6c9cb96d`  
		Last Modified: Wed, 28 Oct 2026 14:30:28 GMT  
		Size: 9.3 KB (9336 bytes)  
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
$ docker pull hylang@sha256:9769caa6f4a04570b562471d1ba4bc95218e93c603d8cc2a8232282816042661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49379193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:700bc9258e7d6a697991830d6b3c35bc27a3730496ea3393d7b4033388400011`
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
ENV PYTHON_VERSION=3.14.10
# Wed, 21 Oct 2026 01:33:35 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 23:05:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:05:01 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:05:01 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:25:18 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:25:18 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:25:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:25:18 GMT
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
	-	`sha256:285a0657abd4e095bf776d53d3e255cb24fde085d1286af05ac5b03acd59c5ba`  
		Last Modified: Mon, 26 Oct 2026 23:05:14 GMT  
		Size: 12.5 MB (12482602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1090777661e624e56edc415ed510f43e9b1f11e9f2c5861e5ef39342ca8a7040`  
		Last Modified: Mon, 26 Oct 2026 23:05:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979a9fce0a0324e8a4d0eaa4106d44b706c6ff1728fd49c2b2dfd3ab5e3af7a8`  
		Last Modified: Tue, 27 Oct 2026 00:25:29 GMT  
		Size: 5.7 MB (5680665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:4964b654099e2daf523ed13f5f8e2c59822e3cca76494805f830935f4d572804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddad5469f1d248058fd409414257de990ebc8369742863802e1816b11033ebe5`

```dockerfile
```

-	Layers:
	-	`sha256:160ddee9f31f0ae5245014061111fc91f49774ac4f66e87368bf2ef2d6552660`  
		Last Modified: Tue, 27 Oct 2026 00:25:29 GMT  
		Size: 2.2 MB (2174616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9eec5b000c1f184895ce7cfc02f766dc182863f9813ea24f5603588b77adf8a8`  
		Last Modified: Tue, 27 Oct 2026 00:25:29 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.in-toto+json
