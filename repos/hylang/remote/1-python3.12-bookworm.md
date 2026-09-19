## `hylang:1-python3.12-bookworm`

```console
$ docker pull hylang@sha256:3793cc4320e25722bba10a74441bea491250930f02ea1f37057f8fd77ef47e96
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

### `hylang:1-python3.12-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:133b2d505e4549414043b4dc6e8f544815c3101e1ed64213e2789394dccbf891
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50698127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ea04e635ead3c272c7c8797809216fb98a1a4db1e9bc718bc9e1cad0dd025b`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:58:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:58:59 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:58:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:58:59 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Sat, 19 Sep 2026 00:58:59 GMT
ENV PYTHON_VERSION=3.12.14
# Sat, 19 Sep 2026 00:58:59 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Sat, 19 Sep 2026 01:08:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:08:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:08:17 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 01:41:59 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 01:41:59 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 01:41:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 01:41:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5e03f304918f89aed0c098c8f4b6f163f7bf9d2702991696bf0132a2853e30`  
		Last Modified: Sat, 19 Sep 2026 01:08:25 GMT  
		Size: 3.5 MB (3533359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e58067964fcd8f46a6b5992975e9c8ab34e7620d96204e08e99bf0fdf4dab8`  
		Last Modified: Sat, 19 Sep 2026 01:08:25 GMT  
		Size: 13.7 MB (13671799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6fab1667eb7d9029684d783e4c127f11dd7ed5120829f875b799a0b9431558`  
		Last Modified: Sat, 19 Sep 2026 01:08:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adedfca9ee2b66142a6406a8cc95c4b08af208a3586adeab292797984744a9b9`  
		Last Modified: Sat, 19 Sep 2026 01:42:06 GMT  
		Size: 5.3 MB (5254277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:19f305bf8ae8ffc56232f03c53962a923bdad20d976400c1e6ab73ad62371970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54552cd25b4b9c8dff7ebed4820e6ad80ac5997fd2fdbde858b9d3b5e92d9c4b`

```dockerfile
```

-	Layers:
	-	`sha256:98e21b4b7b82cfcbcf706b4d2ca67e43592bbd18d5910a9e492808a0a7ccdb28`  
		Last Modified: Sat, 19 Sep 2026 01:42:06 GMT  
		Size: 2.6 MB (2583302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7b76456a24312e25f4afe8c0efb4cec2d71d6950e088799673e32ae43f33152`  
		Last Modified: Sat, 19 Sep 2026 01:42:05 GMT  
		Size: 8.1 KB (8094 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:82ef1f79fbade1b8b6adea6551754b320fbc2b206a38383e4495b3753ca89824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.8 MB (44816776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f46a2084b43dea5839e9caebdabd4078d60fbfe12b5e53c5de83934367229fd`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:44:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:44:57 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:44:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:44:57 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Sat, 19 Sep 2026 01:44:57 GMT
ENV PYTHON_VERSION=3.12.14
# Sat, 19 Sep 2026 01:44:57 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Sat, 19 Sep 2026 02:02:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 02:02:26 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:46:19 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:46:19 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:46:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:46:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a062a5a2663739079c4b5a945515bac67385751a4ede136b73aa2ca1032313fd`  
		Last Modified: Sat, 19 Sep 2026 02:02:34 GMT  
		Size: 2.9 MB (2940419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1323f022798baf643541e6e1a62d0539d715b44f0d1c446ff3616eeb8058f6cc`  
		Last Modified: Sat, 19 Sep 2026 02:02:34 GMT  
		Size: 12.7 MB (12678527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1ffc652e9a8a997ee9993ed5fc97d68529d9c1a8ba509ddb61182b3d2e8ddd`  
		Last Modified: Sat, 19 Sep 2026 02:02:33 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091b8987fe01c4d424472e5ede99c665f16801ccf86014576abcef1e87b8be1d`  
		Last Modified: Sat, 19 Sep 2026 02:46:26 GMT  
		Size: 5.3 MB (5254464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:2d89392130130c2e568e0d6cda22dca04a9a139f8c92258672fac99164a47f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2593745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5d6c5cdecfda70ed9857d473261fd106f232f41ad9cdd94325309530dd4c6a`

```dockerfile
```

-	Layers:
	-	`sha256:2cc3d4716b78d1e8821a6dd73c561334cc3be3504e25336b01ee47dbd73eb1e3`  
		Last Modified: Sat, 19 Sep 2026 02:46:25 GMT  
		Size: 2.6 MB (2585571 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a74857cc7a9c17363cf1b8c389312568d9809f0c1bbd82390feb905b135e6fc`  
		Last Modified: Sat, 19 Sep 2026 02:46:25 GMT  
		Size: 8.2 KB (8174 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:a84f910d8aa0b5400e4c3f85b05d084aa820fda200170a9ea9c9bd83a23f9422
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 MB (50349414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33450f54a1a385170d274a1964701ca9d2d96cabfae757d548cd2faf27d4e89c`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:02:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:02:57 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:02:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:02:57 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Sat, 19 Sep 2026 01:02:57 GMT
ENV PYTHON_VERSION=3.12.14
# Sat, 19 Sep 2026 01:02:57 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Sat, 19 Sep 2026 01:14:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:14:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:14:41 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:19:40 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:19:40 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:19:40 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:19:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed2bd026f9ca0e0bf1847b54ff64a6ee63fe6abc352ba2a928558060e9cb49a`  
		Last Modified: Sat, 19 Sep 2026 01:14:49 GMT  
		Size: 3.4 MB (3368453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7149a79e79b687d3de2d82f2cf6c7ee0d425fee1b58cfcf5f77172ffb20377e`  
		Last Modified: Sat, 19 Sep 2026 01:14:50 GMT  
		Size: 13.6 MB (13602617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a88de3b9e64e69723df9c664862aea75f62c5732af6dc7c07d532b1b2363ac`  
		Last Modified: Sat, 19 Sep 2026 01:14:49 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d790b05d7f235b436a900dc37bd9524594a1434bce239c263b29889de73c98b`  
		Last Modified: Sat, 19 Sep 2026 02:19:48 GMT  
		Size: 5.3 MB (5254415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:94a39f31c3f02c3800029a704480a9f088ff380ba6db1e6e8d0a5a038b918953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2591773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f7cfe5054cdf671e83ca6802be0a599fca19ed173c9724975680a05f3a264c`

```dockerfile
```

-	Layers:
	-	`sha256:985d8a3b05c1fa39b95d65f77f507d833a77140876ab47b088e3620b8b420109`  
		Last Modified: Sat, 19 Sep 2026 02:19:47 GMT  
		Size: 2.6 MB (2583575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e76f75ad62668fe9feecde85992610f8ac98bdd3075f012770de938cd06aea54`  
		Last Modified: Sat, 19 Sep 2026 02:19:47 GMT  
		Size: 8.2 KB (8198 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:12d9b36253362945659384cc042698200d0b014602655e8f73abb51af1da0c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (51950658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da25ade21f86ce3e4910f2b028e16e50810c3767452aeb6dac7c63f03b8e627`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 00:59:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 00:59:43 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:59:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 00:59:43 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Sat, 19 Sep 2026 00:59:43 GMT
ENV PYTHON_VERSION=3.12.14
# Sat, 19 Sep 2026 00:59:43 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Sat, 19 Sep 2026 01:10:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:10:23 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:10:23 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 01:51:56 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 01:51:56 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 01:51:56 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 01:51:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1308ed1c4c9d1b033ffbebdd81f8daccf82def6d3fb58abc76bb45f4bc47cb0b`  
		Last Modified: Sat, 19 Sep 2026 01:10:31 GMT  
		Size: 3.5 MB (3539634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3680dcb4d4632a3bc10a6e33bff1d7d0bcb46edaf91795e17af78b938da9784b`  
		Last Modified: Sat, 19 Sep 2026 01:10:31 GMT  
		Size: 13.9 MB (13930492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8470dab62b6447eeb2348b4e31173833cb46b21220b8c662273cb7ce806be755`  
		Last Modified: Sat, 19 Sep 2026 01:10:30 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eccda4dd9f6471c938e20bea04ec75fff586f3c8c41a8a89035cbefadfa98845`  
		Last Modified: Sat, 19 Sep 2026 01:52:03 GMT  
		Size: 5.3 MB (5254178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:cffb939e39c0b7f6a4e9b6862854e74287cc52bfb0152c5d539eb73fbd358326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2588514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd28cb43206aa55c452acb7670d897127c225dc46b09c0cf9a0bb3a74632a2a7`

```dockerfile
```

-	Layers:
	-	`sha256:a04699d786cf15bbc0e21c73a1ac8d98a5a083cd01bdb1a27936893981361e16`  
		Last Modified: Sat, 19 Sep 2026 01:52:03 GMT  
		Size: 2.6 MB (2580453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c79e0ea64e192588ff70a3f26f70d3619fb85b204c7fba1b4ef3ef99af9d448d`  
		Last Modified: Sat, 19 Sep 2026 01:52:03 GMT  
		Size: 8.1 KB (8061 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:908e8fe472305bcb158d9f731bb11c96ec53e42fa6a9cd13aede6e05dd6024fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 MB (55450611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3b99606ec18d459fe8168fefcd7b57a8e183f2131ca20b8b59600f21192f6f3`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 06:23:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 06:23:02 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 06:23:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 06:23:02 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Sat, 19 Sep 2026 06:23:02 GMT
ENV PYTHON_VERSION=3.12.14
# Sat, 19 Sep 2026 06:23:02 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Sat, 19 Sep 2026 06:43:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 06:43:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 06:43:13 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 11:24:59 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 11:24:59 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 11:24:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 11:24:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d983ce95ad19c4f507b593664cdeb9829136a3f9d21eaf1a2bc93f526b3d63a`  
		Last Modified: Sat, 19 Sep 2026 06:43:27 GMT  
		Size: 3.7 MB (3737953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d80222ec223edf299ea8b444f5f943a8c203f11f7bcbc3a5a8538681c93db4`  
		Last Modified: Sat, 19 Sep 2026 06:43:27 GMT  
		Size: 14.4 MB (14374360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c7fc4b7ef4c45422c61782f9362effd8014fceed7bb1817f2c8643402ca010`  
		Last Modified: Sat, 19 Sep 2026 06:43:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c110b554fda2c3f5971a228bb1106c728564cc62a93b82232baf5382aa49b3d`  
		Last Modified: Sat, 19 Sep 2026 11:25:13 GMT  
		Size: 5.3 MB (5254486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:1a91c40d3dc3610fe895a89cd7d3cc8ea75cbeb4cefb256beb5d66af7a132cba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2595945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f6706fffe9c7cf95eab1cd06163f1f7f69ed98a687a29c7f506a6f497ac38f8`

```dockerfile
```

-	Layers:
	-	`sha256:409b0373c0449d59207dd0c46030f56203a405a9659a0d56f5440326a3c59a5c`  
		Last Modified: Sat, 19 Sep 2026 11:25:13 GMT  
		Size: 2.6 MB (2587808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ad3bffe3ed1fa6f67ba2e7c0786ba2c899b7d30424510b674223f9b91c1bff2`  
		Last Modified: Sat, 19 Sep 2026 11:25:13 GMT  
		Size: 8.1 KB (8137 bytes)  
		MIME: application/vnd.in-toto+json
