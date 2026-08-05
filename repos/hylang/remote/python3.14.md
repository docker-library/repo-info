## `hylang:python3.14`

```console
$ docker pull hylang@sha256:6c9514575ddec1551b15fa132a70f4d1a6a41dfcb4ef7ba6ec79866e634abb71
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
	-	windows version 10.0.26100.33158; amd64
	-	windows version 10.0.20348.5386; amd64

### `hylang:python3.14` - linux; amd64

```console
$ docker pull hylang@sha256:b47df5b22147170513d4091b46994098b16c2d85f3859cefd79e56b12c4127e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49156237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed299a0afd7020889c290840f5cdd74267fc33d516bd84e4e0db5e8d4bf8e6b7`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:01:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:01:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:01:18 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 05 Aug 2026 01:01:18 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Wed, 05 Aug 2026 01:08:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:08:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:08:15 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 01:48:51 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 01:48:51 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 01:48:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 01:48:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:26c307b5e35a59ce911f5fde5b9458120ec8734e831ea2da5649a9ad14abfd3d`  
		Last Modified: Tue, 04 Aug 2026 23:52:43 GMT  
		Size: 29.8 MB (29780765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8a17e17025d5bde7da2a5e61d9339a5d0ded524a3b3b6911a5cb1ac10c88f5`  
		Last Modified: Wed, 05 Aug 2026 01:08:23 GMT  
		Size: 1.3 MB (1293268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31b5c1dee5393abfbf0de086a7d946dabf1874d396eef15aded5bce00da49535`  
		Last Modified: Wed, 05 Aug 2026 01:08:24 GMT  
		Size: 12.3 MB (12335595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37c73db27fe8094fc54c8d4756edf12423e320b6493f5f6268d671ffbc5c59bc`  
		Last Modified: Wed, 05 Aug 2026 01:08:23 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f77ec2d4c9eb310668c6581efbcae3c19daa6c4ae91f0761a9bdb9f25405b7d3`  
		Last Modified: Wed, 05 Aug 2026 01:48:57 GMT  
		Size: 5.7 MB (5746360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14` - unknown; unknown

```console
$ docker pull hylang@sha256:d3970376d982a5d34300f59d1dc49a17952161fe7a14bb356e2df6fa0d5e4d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2168369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2a7fdb1d9278d3607d0a9e87d35df3a1c38d0ea22f4ffeb6919241abbe7f45d`

```dockerfile
```

-	Layers:
	-	`sha256:526445e8c8dbab63c154db403ef4abac50be42c5d0cac86e63d412dd8214e579`  
		Last Modified: Wed, 05 Aug 2026 01:48:57 GMT  
		Size: 2.2 MB (2156727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c64dcb3b0b31fe80b218953e2088ecf8c1d5e28234e90ee7e82588794f83a3`  
		Last Modified: Wed, 05 Aug 2026 01:48:57 GMT  
		Size: 11.6 KB (11642 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14` - linux; arm variant v5

```console
$ docker pull hylang@sha256:c6c6556cc9f051f9f3e5497ed1c1eaa6fb31df8c71dc524d5412e6832338379f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 MB (46989027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5153554b8a15fe0a78764ee4cadb3e537d1a00d713142051692643e45325d842`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:50:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:50:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:50:18 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 05 Aug 2026 00:50:18 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Wed, 05 Aug 2026 01:01:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:01:01 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:01:01 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 02:51:34 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 02:51:34 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 02:51:34 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 02:51:34 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:727d7256eca5389d64a19157e9315c80abc182ee4b0637b2fddda6136b155f96`  
		Last Modified: Tue, 04 Aug 2026 23:51:40 GMT  
		Size: 28.0 MB (27954714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabdc3ba085e0cb448509bc3e0eff83b02a13443bccce7944589439181bb04e0`  
		Last Modified: Wed, 05 Aug 2026 01:01:08 GMT  
		Size: 1.3 MB (1276370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac2a2aeb5030e7e6453f1d20c7b642c3e3e66d9b61e3d44c071baa87155ecfd`  
		Last Modified: Wed, 05 Aug 2026 01:01:08 GMT  
		Size: 12.0 MB (12011419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f38edc5fd5c0a15b4132ce72e0b2d0898ca81ba5b893d1ad6d21cb73442e869a`  
		Last Modified: Wed, 05 Aug 2026 01:01:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba211ab9a7a76f45d4d1c182d41513ea2b083d2b317c96f1b8f28d8a5e004ba`  
		Last Modified: Wed, 05 Aug 2026 02:51:41 GMT  
		Size: 5.7 MB (5746276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14` - unknown; unknown

```console
$ docker pull hylang@sha256:3234ef3c55c28741fccedca62e3aeabe13b06859a31d5a1e5ad10d1308bafe42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70a0499688cbe58466416f67c7dfc29dfb627ba6f35be3a82542d30698bd9d66`

```dockerfile
```

-	Layers:
	-	`sha256:5339745443c54f92131632f287a6a30837902adcdb595dc9c447c8cd2529fbe1`  
		Last Modified: Wed, 05 Aug 2026 02:51:41 GMT  
		Size: 2.2 MB (2159792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:87d7ba0f7208d2f9cc3b5a7e04c873464038d72949a50a1118fe6a096437f623`  
		Last Modified: Wed, 05 Aug 2026 02:51:41 GMT  
		Size: 11.8 KB (11819 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14` - linux; arm variant v7

```console
$ docker pull hylang@sha256:c2eec1327299234468b7b61330d5483688ee3d45eb511c02b88a8bf5f2ad47ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44903314 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f05063e2917a11930c4c4a374e9b221d9f9b4ce597f1127819afc1efbe5bca4`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:37:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:37:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:37:48 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 05 Aug 2026 01:37:48 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Wed, 05 Aug 2026 01:49:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:49:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:49:05 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 02:58:11 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 02:58:11 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 02:58:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 02:58:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:672c0d216bfc857b06e612ddef27e7e627f137e3b1d462ba55fc70cf69be0989`  
		Last Modified: Tue, 04 Aug 2026 23:52:19 GMT  
		Size: 26.2 MB (26206372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:144989b26cd9a31a52cc52da1e264e294dc4393f1fb57bb070f04b83ed658e81`  
		Last Modified: Wed, 05 Aug 2026 01:49:12 GMT  
		Size: 1.2 MB (1249138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd9cf9b72a18ed110495c84790db62e04cac6fd3e4b2cd72facaeb87434c0e5`  
		Last Modified: Wed, 05 Aug 2026 01:49:12 GMT  
		Size: 11.7 MB (11701202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4da3bc767ca85cf36f11fd050dbcb412ff61c8224c9d3662210f7a631d5feb`  
		Last Modified: Wed, 05 Aug 2026 01:49:12 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fafce1f27b81f30280a9518b3a9c7bf41bca34b397f1174bd13102db2bff69b`  
		Last Modified: Wed, 05 Aug 2026 02:58:18 GMT  
		Size: 5.7 MB (5746353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14` - unknown; unknown

```console
$ docker pull hylang@sha256:94052e66833a444827137df98e8a1a53f06e14c1103d5a50d2566bf9fe0568e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546ad6438172a1f06ead59a9f0c76eb5a84c77d53cb7377ef6c2ca87af281150`

```dockerfile
```

-	Layers:
	-	`sha256:03bd791867235003ccbd2e90a38345349c1b9eb9c453253cef4b6e606d6e6f1c`  
		Last Modified: Wed, 05 Aug 2026 02:58:18 GMT  
		Size: 2.2 MB (2158245 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:882152d65e97422ef8245c143493866805d379eed509d2f6b9ac2470a5a95f1c`  
		Last Modified: Wed, 05 Aug 2026 02:58:17 GMT  
		Size: 11.8 KB (11818 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:40ab7ca1d1b9022a9cdb4bfa423c8d761a89d4c94739b2870bb3d48c4ad3fc6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.4 MB (49410339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69c644f3d331bb802f00439f4209f1bc5b652de13068e3fc7afe8d99fa481292`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:04:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:04:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:04:25 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 05 Aug 2026 01:04:25 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Wed, 05 Aug 2026 01:11:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:11:59 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:11:59 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 01:55:37 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 01:55:37 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 01:55:37 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 01:55:37 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1b7200988f192e72703c70486d494e2457935ac9b0f031ac09eb115b01a12d45`  
		Last Modified: Tue, 04 Aug 2026 23:52:14 GMT  
		Size: 30.1 MB (30143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5836afeab5171126208a7d7a8238bd4de051af4fbb226df7118fcd102fc213`  
		Last Modified: Wed, 05 Aug 2026 01:12:08 GMT  
		Size: 1.3 MB (1274110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4adacb1d9341e90c722fc25ad98f21d412e96365029dc3d8543fb735d0510b`  
		Last Modified: Wed, 05 Aug 2026 01:12:08 GMT  
		Size: 12.2 MB (12246071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea84d2f1573e3e53117e93f2f3511685790bde34a6ef8a076bfe1c301e79798`  
		Last Modified: Wed, 05 Aug 2026 01:12:08 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44614c62ac8d58a2dffda5e40ccd122e156807896dc7e74532a8b593c31ffd88`  
		Last Modified: Wed, 05 Aug 2026 01:55:44 GMT  
		Size: 5.7 MB (5746300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14` - unknown; unknown

```console
$ docker pull hylang@sha256:41810054c74fee01a3a2dec27a3f47d1b134ba56c0d229770db127a2bae3886c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2169019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51239d1a1e5ffe3bb9bc11330ed034b8e1c293840873265def2505390d3954c5`

```dockerfile
```

-	Layers:
	-	`sha256:f6c7d2ad20b5106e2833b2f0a54f99e158ddc45d382d354035c913b1a0575d7c`  
		Last Modified: Wed, 05 Aug 2026 01:55:44 GMT  
		Size: 2.2 MB (2157129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d9ba9c81a5b1322be70ec9449d06f877427f7209a595447f79988755e7b8bc9`  
		Last Modified: Wed, 05 Aug 2026 01:55:44 GMT  
		Size: 11.9 KB (11890 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14` - linux; 386

```console
$ docker pull hylang@sha256:ddc2d1fdb9fdd48ee9faaf9daa6a9552d14c5a2ef7f0f67558c538135a88b117
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50815315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f906a863840a52385d24e01a550b2504c343f60fd071aeb8b0ac2c7ccac3b728`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 00:58:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 00:58:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 00:58:18 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 05 Aug 2026 00:58:18 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Wed, 05 Aug 2026 01:19:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:19:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:19:18 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 02:18:04 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 02:18:04 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 02:18:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 02:18:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:311b26cfa6b9aedb9c35bd9a9ce5c9fb13add824446bae9f72de3efd7775647d`  
		Last Modified: Tue, 04 Aug 2026 23:52:24 GMT  
		Size: 31.3 MB (31296269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68b92067bb6b078d1ee9b60be2284b043b89c7665b66d28858bf53f18fa8ee5`  
		Last Modified: Wed, 05 Aug 2026 01:19:25 GMT  
		Size: 1.3 MB (1297759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6d5466a8277d5bae64462226f7df5b6d90a42feaec6ddf0ac798484c5071db`  
		Last Modified: Wed, 05 Aug 2026 01:19:26 GMT  
		Size: 12.5 MB (12474583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f983c71206509878a6e3e41ae57114cfa246159104d282751c6cf4da7a66c5f1`  
		Last Modified: Wed, 05 Aug 2026 01:19:25 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ffeb661d4ae20dde21e9a1dd839e570a3fc1480fdeb04855f4944065ee88ec0`  
		Last Modified: Wed, 05 Aug 2026 02:18:12 GMT  
		Size: 5.7 MB (5746455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14` - unknown; unknown

```console
$ docker pull hylang@sha256:43a05c6ac6c7a58683d6a610be7be33f38fb5bd46d385527d264554be311eec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2165399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:095df4881ec675706db3f48305221ebb56f4a54105a02c5cdda61b96c41b1757`

```dockerfile
```

-	Layers:
	-	`sha256:84d5338ae57720a7f316ca09236acfd746b72bb922d00bb7010da296b0f1e66e`  
		Last Modified: Wed, 05 Aug 2026 02:18:12 GMT  
		Size: 2.2 MB (2153848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d124a4dca4e9d8b11c4fbd627b8229da6218f538ad1c51f0c09f0ac4df7458a`  
		Last Modified: Wed, 05 Aug 2026 02:18:12 GMT  
		Size: 11.6 KB (11551 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14` - linux; ppc64le

```console
$ docker pull hylang@sha256:203d0560849c20026e9ff4d71fe2e567971458dca37f4528a9cb1018ecb02703
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.4 MB (53384016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd3540748642bef6982bcb0d5ea7db0b671a8fff373ddb57c8d6c25da39c4e6`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 05:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PYTHON_VERSION=3.14.6
# Tue, 14 Jul 2026 05:16:18 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Tue, 14 Jul 2026 06:02:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 14 Jul 2026 06:02:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 14 Jul 2026 06:02:47 GMT
CMD ["python3"]
# Tue, 14 Jul 2026 14:26:42 GMT
ENV HY_VERSION=1.3.0
# Tue, 14 Jul 2026 14:26:42 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 14 Jul 2026 14:26:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 14 Jul 2026 14:26:42 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab9b965cff9151135c00ea74516cd640b3c0220c80b703fbb752b2df4bf7fa51`  
		Last Modified: Tue, 14 Jul 2026 05:40:10 GMT  
		Size: 1.3 MB (1321298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8865ba0de28e9fd797dcd1ec477d5156a4d9e860b419ad08abfe1819e6230a54`  
		Last Modified: Tue, 14 Jul 2026 06:03:00 GMT  
		Size: 12.7 MB (12746219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e145a92da5d2fa61bdf1ea45c8515c010cd55888cf2aefd8b17d06e44939fc`  
		Last Modified: Tue, 14 Jul 2026 06:03:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac753600b9803815485d16c91932f2bdadb02720117bc4c991f435f09913775`  
		Last Modified: Tue, 14 Jul 2026 14:26:55 GMT  
		Size: 5.7 MB (5714773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14` - unknown; unknown

```console
$ docker pull hylang@sha256:1f49a283761afe287b2b59cb09b5d0fb5540564a04cba75f172c52a1987c8da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2172125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:117b8b974801197f75f02a50d37c0d22b2aab580e2690f94887d955dc719a398`

```dockerfile
```

-	Layers:
	-	`sha256:dabf7319094166b346e29c89f94ccfe28a326ad0eeec3a438f806905ee1d7b36`  
		Last Modified: Tue, 14 Jul 2026 14:26:55 GMT  
		Size: 2.2 MB (2160366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aba2ffff133398bb932e198943796356fd82fd05446d203284f820441f721f1f`  
		Last Modified: Tue, 14 Jul 2026 14:26:55 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14` - linux; riscv64

```console
$ docker pull hylang@sha256:afc114fd6209385b095afe9a9374b4e8c7b724b6e7c816dbd57eb17f7d80087c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.6 MB (47605153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39404670b9cc4277075e1e8ae077b889b1ae2a4c6f3efd2f0bd752bc7375b18e`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Sat, 18 Jul 2026 00:04:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 18 Jul 2026 00:04:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Sat, 18 Jul 2026 00:04:42 GMT
ENV PYTHON_VERSION=3.14.6
# Sat, 18 Jul 2026 00:04:42 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Sat, 18 Jul 2026 02:06:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 18 Jul 2026 02:06:20 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 18 Jul 2026 02:06:20 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 09:15:14 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 09:15:14 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 09:15:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 09:15:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11046337ea99ff6c24f91800be6856d88f148bd0516e66fa39c1e72920124d71`  
		Last Modified: Sat, 18 Jul 2026 02:07:28 GMT  
		Size: 1.3 MB (1260034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136b13f55cc26b9bdab6d459e288d1446c77cf649785499650941a9c979493a1`  
		Last Modified: Sat, 18 Jul 2026 02:07:30 GMT  
		Size: 12.4 MB (12351018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d240a835bf58f988236370f6182f106715e58dafea48434bfad2ae8e27a457a`  
		Last Modified: Sat, 18 Jul 2026 02:07:27 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c249dcb754ee46825b051a3cf18ad3ef8455091d12bcc1cdc71e7feb8ea7a3a0`  
		Last Modified: Mon, 20 Jul 2026 09:16:15 GMT  
		Size: 5.7 MB (5715648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14` - unknown; unknown

```console
$ docker pull hylang@sha256:9b0affd9a2b095495f5c257efd30b43f8c568bb6c811e137438fd3f44527571a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2162496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4058a4dbfb82ae31d42af2bd64faf4de0116783b2ffd0f6a4fdc9c6aed2d4981`

```dockerfile
```

-	Layers:
	-	`sha256:e619bee4a7e54352c8d9ec4014519fea3452f36167853a123d11ce6ba75b39e6`  
		Last Modified: Mon, 20 Jul 2026 09:16:15 GMT  
		Size: 2.2 MB (2150737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b600ede833b49b21ca5fe1bbb461fe6c64026525f5926c40717103e1bc8ec559`  
		Last Modified: Mon, 20 Jul 2026 09:16:14 GMT  
		Size: 11.8 KB (11759 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14` - linux; s390x

```console
$ docker pull hylang@sha256:4f2087799294852e26f58fa1f9a2b67ec100247a247cfddd6c4e8c7910083009
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.3 MB (49280716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6f7126a7ffc87d8432ca4526d12080f47ea5d7385d13e87ac2a29bd96254f66`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1785715200'
# Wed, 05 Aug 2026 01:26:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:26:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Wed, 05 Aug 2026 01:26:16 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 05 Aug 2026 01:26:16 GMT
ENV PYTHON_SHA256=143b1dddefaec3bd2e21e3b839b34a2b7fb9842272883c576420d605e9f30c63
# Wed, 05 Aug 2026 01:34:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 05 Aug 2026 01:34:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 05 Aug 2026 01:34:47 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 02:45:21 GMT
ENV HY_VERSION=1.3.0
# Wed, 05 Aug 2026 02:45:21 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 02:45:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 02:45:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5059f072c5e2b09a216d4e66de6e94d1586b3eea64256e6d5277e3ddb8f78991`  
		Last Modified: Tue, 04 Aug 2026 23:51:38 GMT  
		Size: 29.8 MB (29846573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a738ba449d4ed89d0eff764abefb25071f895b82c4588b2edfaca4a7b6b1c497`  
		Last Modified: Wed, 05 Aug 2026 01:35:00 GMT  
		Size: 1.3 MB (1305758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4140b3697b4f46b70e3068bb6a29f47636c059e7fb4c62b14b789a015e53421e`  
		Last Modified: Wed, 05 Aug 2026 01:35:00 GMT  
		Size: 12.4 MB (12381867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3aaafaba6b7f94cd71cddf4d09392d48cebc39000300107560ae088764c1fd2`  
		Last Modified: Wed, 05 Aug 2026 01:35:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78db59351e477cefc3eaf7557e72d83c5451fba4b5c770cc7610f880361fbde`  
		Last Modified: Wed, 05 Aug 2026 02:45:33 GMT  
		Size: 5.7 MB (5746270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14` - unknown; unknown

```console
$ docker pull hylang@sha256:8b90f110932b90f6c1dc448bcb03c28fd084e7551b7b0918ed1ba0abf9b63faa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2169809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2720da1a699f7dd6ca48ae6b794ef86bdaa2a5167c185a5e5926d3f5e16e1201`

```dockerfile
```

-	Layers:
	-	`sha256:f0643bc43369fb4eb51e238e6292024e21c5f1cf6b76a0333b9d885491418597`  
		Last Modified: Wed, 05 Aug 2026 02:45:33 GMT  
		Size: 2.2 MB (2158166 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07bb477225d0415f7f7170d1b5388d97d975ffdc09a05b5780cac7f1f2f9970f`  
		Last Modified: Wed, 05 Aug 2026 02:45:33 GMT  
		Size: 11.6 KB (11643 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14` - windows version 10.0.26100.33158; amd64

```console
$ docker pull hylang@sha256:8d77955b86e0a85084eda931dc5755ca468a8c84dd75a02b5dd649aa68c699b4
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2426190184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c89a6bde6196cf4daf5f98a9ae40cdcbae1bd1cea7357752fcbbb4da7ce9b66`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 11 Jul 2026 23:02:35 GMT
RUN Install update 10.0.26100.33158
# Wed, 15 Jul 2026 23:03:59 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:15:53 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 15 Jul 2026 23:15:54 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 15 Jul 2026 23:15:54 GMT
ENV PYTHON_SHA256=14b3e9a710a3fcf0bd9b55ab6b60412bd91227563f813fc49040cabc0209e0bd
# Wed, 15 Jul 2026 23:16:44 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:16:46 GMT
CMD ["python"]
# Wed, 15 Jul 2026 23:57:37 GMT
ENV HY_VERSION=1.3.0
# Wed, 15 Jul 2026 23:57:38 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 15 Jul 2026 23:58:35 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Wed, 15 Jul 2026 23:58:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e24b28706e4e5f31fae7935e5a79e6df5d7a2eb3e69c8c19ca723f41f0b45f6f`  
		Last Modified: Tue, 14 Jul 2026 17:58:20 GMT  
		Size: 831.9 MB (831948874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49429e1dc770c1694ee6f0486cb3444a1a9026b0e383e0626e5a7744dc98d2b9`  
		Last Modified: Wed, 15 Jul 2026 23:06:42 GMT  
		Size: 1.3 KB (1302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f161f83095d1771763c847880241e3b061f7f8c3c5bbeae4381d6a455f329b1e`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 1.3 KB (1307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3540fafe7b4bc1cb5bdc47352117262fcd8dc1679ad4cc89deda048b39f607dc`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f86bfc1a26bd8ccb1946f4652fa73ba77174d4f729312022bfceea03b732085`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c937acb222e0d9f37501e4f53961491f4907a3d92ba7ff5a889b69dcef05cb02`  
		Last Modified: Wed, 15 Jul 2026 23:16:58 GMT  
		Size: 62.7 MB (62672149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771f07ec8e58cd8386bbac4e9259682e1167870967fe4ad2def474299c283352`  
		Last Modified: Wed, 15 Jul 2026 23:16:52 GMT  
		Size: 1.3 KB (1279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25ba3c482fbf45be3b44289e6fb9b093da0a46f1770b7a5614c50f9c8c04b213`  
		Last Modified: Wed, 15 Jul 2026 23:58:40 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265bc8d31d064a2dbf37d5f719569a0dfb8b0f6f44efb45563882c7706262daf`  
		Last Modified: Wed, 15 Jul 2026 23:58:40 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1b725aaff7fd82fe31d676b5fb9fc16eecce04b2d1301fc50398196ed22d47`  
		Last Modified: Wed, 15 Jul 2026 23:58:41 GMT  
		Size: 8.5 MB (8499511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb70d49807666572c0068c839983e97420578a562deaf8a4441e5060231ba9e2`  
		Last Modified: Wed, 15 Jul 2026 23:58:40 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.14` - windows version 10.0.20348.5386; amd64

```console
$ docker pull hylang@sha256:156fc300a5184809b4301256fd6fc27b9a611df60d63d3186d909a0817a6f423
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 GB (2228446504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:207db6165582de37f20722df4031aa918e590c15868539a45c8e95b0ff9cc3ad`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 11 Jul 2026 16:30:20 GMT
RUN Install update 10.0.20348.5386
# Wed, 15 Jul 2026 23:03:34 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 15 Jul 2026 23:30:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 15 Jul 2026 23:30:28 GMT
ENV PYTHON_VERSION=3.14.6
# Wed, 15 Jul 2026 23:30:29 GMT
ENV PYTHON_SHA256=14b3e9a710a3fcf0bd9b55ab6b60412bd91227563f813fc49040cabc0209e0bd
# Wed, 15 Jul 2026 23:31:05 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f ($env:PYTHON_VERSION -replace '[a-z]+[0-9]*$', ''), $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:PYTHON_SHA256); 	if ((Get-FileHash python.exe -Algorithm sha256).Hash -ne $env:PYTHON_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Installing ...'; 	$exitCode = (Start-Process python.exe -Wait -NoNewWindow -PassThru 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=1', 			'Include_test=0' 		) 	).ExitCode; 	if ($exitCode -ne 0) { 		Write-Host ('Running python installer failed with exit code: {0}' -f $exitCode); 		Get-ChildItem $env:TEMP | Sort-Object -Descending -Property LastWriteTime | Select-Object -First 1 | Get-Content; 		exit $exitCode; 	} 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 	Remove-Item $env:TEMP/Python*.log -Force; 		$env:PYTHONDONTWRITEBYTECODE = '1'; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.'
# Wed, 15 Jul 2026 23:31:05 GMT
CMD ["python"]
# Thu, 16 Jul 2026 00:09:48 GMT
ENV HY_VERSION=1.3.0
# Thu, 16 Jul 2026 00:09:48 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 16 Jul 2026 00:10:16 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION) ('hyrule == {0}' -f $env:HYRULE_VERSION)
# Thu, 16 Jul 2026 00:10:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0675e37b24741ccc9e6ff6dda8512e3be78ba3519c8af33b04872e4738349249`  
		Last Modified: Tue, 14 Jul 2026 18:09:28 GMT  
		Size: 668.5 MB (668534031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd99cda305ab1db9d8da0e66cf144dcebbcf0c3a5325391dc82055197d387130`  
		Last Modified: Wed, 15 Jul 2026 23:07:15 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56baaa2d3b33afa6168216e5cc6f5314800f5744f7ef56a254418827383d1d72`  
		Last Modified: Wed, 15 Jul 2026 23:31:10 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:174ba11e22d5b854667be733d034a3f9e53b57f23e1478e44a29f2a72bdd1296`  
		Last Modified: Wed, 15 Jul 2026 23:31:10 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d7116a0536349fb8ca2f639dedc9f5748db183aceecd1f74f1a873ca13ac56`  
		Last Modified: Wed, 15 Jul 2026 23:31:10 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404aba73f993e21d65b699a4426d464a53c8b3ad51b6275976899c5b5031ceac`  
		Last Modified: Wed, 15 Jul 2026 23:31:16 GMT  
		Size: 62.6 MB (62633372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b7be1a4fd29ac78dff7e95220b1abdf0e1c59b7fa3fbeac1a60d4e16d617e1`  
		Last Modified: Wed, 15 Jul 2026 23:31:10 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a4831210ab645fcb9cc155f94edccb5916d9a58eac7b59502b85c1fa163ee1`  
		Last Modified: Thu, 16 Jul 2026 00:10:22 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f8ed7be0fcf7edd2e3ac509ae98e31a7d9384b2ac0ef94c58d2ff7602535f5`  
		Last Modified: Thu, 16 Jul 2026 00:10:22 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae92ed256f2820cc8b43bcb3b49812be9eb55425462ccb3bd675145bd0b0f39`  
		Last Modified: Thu, 16 Jul 2026 00:10:23 GMT  
		Size: 8.2 MB (8249585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c5e8f050907ea15ef96c99be23d974bac73a51395779a0b42fb9f0dbe399487`  
		Last Modified: Thu, 16 Jul 2026 00:10:22 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
