## `hylang:python3.10-bookworm`

```console
$ docker pull hylang@sha256:e19710567bcc3d122175d5b636d75b55fc8c4f196e843b28f82a591bcad561c8
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

### `hylang:python3.10-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:4eba67e1bdbb6316a397083de189da56a4c7d91656d7cc20b74207b51076bb84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.3 MB (52281293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52fa442e58a8a6b6f6dceb7bbd427adf65d4b2780189f8cfb3b13307b6af7d58`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:03:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:03:29 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:03:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:03:29 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Sat, 19 Sep 2026 01:03:29 GMT
ENV PYTHON_VERSION=3.10.21
# Sat, 19 Sep 2026 01:03:29 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Sat, 19 Sep 2026 01:09:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:09:36 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:09:36 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 01:42:08 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 01:42:08 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 01:42:08 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 01:42:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e1e9a2343599a43df57ac4101a0f7f37c802f060f2071c5c9989997b6d4e14`  
		Last Modified: Sat, 19 Sep 2026 01:09:45 GMT  
		Size: 3.5 MB (3533406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d6fd81624c2920dbd6a955404ad1cdeedc10abcd107420a5db5f8c924f9118`  
		Last Modified: Sat, 19 Sep 2026 01:09:45 GMT  
		Size: 15.5 MB (15468920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53509eb15a45f3c48c7c2ac704890855114a65112a77591578968550d3262af`  
		Last Modified: Sat, 19 Sep 2026 01:09:45 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e2019cfeee6a58e44180f5e5f7d1e4cc0be4c2191f90c8b5ac42b67964838a`  
		Last Modified: Sat, 19 Sep 2026 01:42:14 GMT  
		Size: 5.0 MB (5040275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:85b49e6d34a64ecf9e2048b38fd35ae9d8f969a9d9d7687766811bf7cfad9b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2639006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52a65192fdaa545c360358100fcc7fb2610f1bb05cb9c9ff47d2bf6a99a2f8bc`

```dockerfile
```

-	Layers:
	-	`sha256:826827efd40a6d65800b0059a2b7aabe033e0eeceea6e16217256ac79287d734`  
		Last Modified: Sat, 19 Sep 2026 01:42:14 GMT  
		Size: 2.6 MB (2630912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d16c0b54fa32a95cf7c84db854cb79315320db91f81e098828e4f025994a57c2`  
		Last Modified: Sat, 19 Sep 2026 01:42:14 GMT  
		Size: 8.1 KB (8094 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:541416c6a436b4b4719edb827cea119fa3f8e3aa398aac3bacf9f029e720b891
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46427227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3816ce724ce1c57aa12ef3ea0607fe4effc02e5beb68d2896f6b3cb80145ee7f`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:52:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:52:16 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:52:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:52:16 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Sat, 19 Sep 2026 01:52:16 GMT
ENV PYTHON_VERSION=3.10.21
# Sat, 19 Sep 2026 01:52:16 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Sat, 19 Sep 2026 02:02:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 02:02:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 02:02:55 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:46:14 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:46:14 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:46:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:46:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c53964de007da11c6e4b10d70333f4e86fb94913ad7dd49c6d013c1db5e6c88`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 2.9 MB (2940409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6be2d45d9102bf91b2beb9bcc5ec190866171b0a4aa54e06eb3c72e0ae50c06`  
		Last Modified: Sat, 19 Sep 2026 02:03:03 GMT  
		Size: 14.5 MB (14503141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923b133677d43954d5481aef01d051f3c97ec0633ecf75acef98032f85d31030`  
		Last Modified: Sat, 19 Sep 2026 02:03:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853466ddcb1b357e08ac8fc76927adfb4fc5599855cf332dc1dc74783ca70124`  
		Last Modified: Sat, 19 Sep 2026 02:46:22 GMT  
		Size: 5.0 MB (5040311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:f246c12cd510ca7a89d9c704a506eb8704f0062c2debd031677ee36a23d64e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2641354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:386d9291b4dd6ba93b3f05367068d69f515223d0f6debf335f08b9402e8ae294`

```dockerfile
```

-	Layers:
	-	`sha256:1e7539f0f73483e6ee8b21f8bef28495ceecb29732d8c598fe82f491998ffd3b`  
		Last Modified: Sat, 19 Sep 2026 02:46:22 GMT  
		Size: 2.6 MB (2633181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46c9169bef132224fe5747aaa9c6d37f361360c70e0c9f133dc80974f8158142`  
		Last Modified: Sat, 19 Sep 2026 02:46:22 GMT  
		Size: 8.2 KB (8173 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:d8170d24729989072f212c1d993d25eb29b3b4f498c1bb6274204d9461230d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.9 MB (51931870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:939003a7ae94da583a01072ac8752d29120cfd503d749f36a46330cbf28c1fa0`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:07:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:07:03 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:07:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:07:03 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Sat, 19 Sep 2026 01:07:03 GMT
ENV PYTHON_VERSION=3.10.21
# Sat, 19 Sep 2026 01:07:03 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Sat, 19 Sep 2026 01:14:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:14:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:14:54 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:20:22 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:20:22 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:20:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:20:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fb4d6eb4296779b2e81cb3669ce2e90e49987683415838f30c37e8d0806b565`  
		Last Modified: Sat, 19 Sep 2026 01:15:03 GMT  
		Size: 3.4 MB (3368453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74176fd334b1bb6d2144f9a3e7a840c778150bc164e51262118df2272c2be05a`  
		Last Modified: Sat, 19 Sep 2026 01:15:03 GMT  
		Size: 15.4 MB (15399180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebc2956f953e1226d2e5e946531984329e3ce2c5223098f51281a92b94ae8877`  
		Last Modified: Sat, 19 Sep 2026 01:15:03 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1b8d666821ee7f8c046bd6241ffeadf0cdf8ea782c8e00d40515b18bcc8a767`  
		Last Modified: Sat, 19 Sep 2026 02:20:29 GMT  
		Size: 5.0 MB (5040308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:6a08d66fe8c9335fa3352bcd7fb3f1c925dc57c40106b13e7c6e288cac8b98e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2639383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5a1d4d328c0134a07d6c46b95fd9ced1f662932a4bcff7a3c90ec8cc93e11cc`

```dockerfile
```

-	Layers:
	-	`sha256:01a66f830e7da3c6c4c946dffc1559fd412e2fc62eaf23b87dce36cb31b77b48`  
		Last Modified: Sat, 19 Sep 2026 02:20:29 GMT  
		Size: 2.6 MB (2631185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b7758b2f7250c532fec3d27872bd98143037dc158c9717d03068e12ecd9ee25`  
		Last Modified: Sat, 19 Sep 2026 02:20:28 GMT  
		Size: 8.2 KB (8198 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:f97dc9b075c61aefc54e4d8dde170b0fe24c74042a2acd99016f87a7d11316e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.5 MB (53518035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f35f7f9b16111899c263c2b5412299faab55e2bd0498d28e9f77fc94f4e2593`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:09:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:09:47 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 01:09:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 19 Sep 2026 01:09:47 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Sat, 19 Sep 2026 01:09:47 GMT
ENV PYTHON_VERSION=3.10.21
# Sat, 19 Sep 2026 01:09:47 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Sat, 19 Sep 2026 01:16:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 01:16:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 01:16:37 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 02:17:49 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 02:17:49 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 02:17:49 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 02:17:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5395c899952161a45075664b17e646ed1b422ff1717a34e56e95f1c6bb61b66f`  
		Last Modified: Sat, 19 Sep 2026 00:03:34 GMT  
		Size: 29.2 MB (29226105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a4844cac6752cd54500d20d738439269eb67c2b6665b028e1c24789985971f`  
		Last Modified: Sat, 19 Sep 2026 01:16:45 GMT  
		Size: 3.5 MB (3539636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c8753d9df7a9c73313cb627dc688d7cea78eb71f62f5e9ff61c430d373953e`  
		Last Modified: Sat, 19 Sep 2026 01:16:45 GMT  
		Size: 15.7 MB (15711760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd03eb4c420d85797531fb73aa6787cb0b2a14654d538f915f1eced859955d3f`  
		Last Modified: Sat, 19 Sep 2026 01:16:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b306e5d25891b0e6f51a2c6ccca8e5ea3b9a8959cece78e2bf86b2c53ab4f6e2`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 5.0 MB (5040284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:35a44069f54c6401f987d56ccb8119e2b72304c7832f8129545cad87e38b6cd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2636125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79ff8bc6b14179a4491dfe1366fa305087ea8d57f04aba6c94502b4d46d53ab`

```dockerfile
```

-	Layers:
	-	`sha256:57ebb59981d83dd1bd4a548d5fb1da8f33b52466ed95a5416409ac5620c2f18b`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 2.6 MB (2628063 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27100096a78e1eed1017638e023b9bdbc7dbe579940d6efc4fe66940082a85f6`  
		Last Modified: Sat, 19 Sep 2026 02:17:57 GMT  
		Size: 8.1 KB (8062 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:c411fe210b2f28b06a8922a83704c88f94d8ca7d384af1226e3f9c139044cac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.9 MB (56947686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57d3937f2e921a60add932da1af1ff9b7802c966fa628e79c07e54fc81eaa23`
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
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Sat, 19 Sep 2026 06:23:02 GMT
ENV PYTHON_VERSION=3.10.21
# Sat, 19 Sep 2026 06:23:02 GMT
ENV PYTHON_SHA256=a0da1e72132e950154eca0f6f47d5db828454700de20e5113667940d81e0db04
# Sat, 19 Sep 2026 07:16:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Sat, 19 Sep 2026 07:16:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sat, 19 Sep 2026 07:16:27 GMT
CMD ["python3"]
# Sat, 19 Sep 2026 11:26:33 GMT
ENV HY_VERSION=1.3.1
# Sat, 19 Sep 2026 11:26:33 GMT
ENV HYRULE_VERSION=1.1.0
# Sat, 19 Sep 2026 11:26:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Sat, 19 Sep 2026 11:26:33 GMT
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
	-	`sha256:d7f745c9bc274c1b18ef8be27385c9d5da3e4079ebdcf787f74a1729cae1f446`  
		Last Modified: Sat, 19 Sep 2026 07:16:46 GMT  
		Size: 16.1 MB (16085445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de53ba65fa574417641c57e076af54ae683da9558d5d99daa8f267c6cf32153d`  
		Last Modified: Sat, 19 Sep 2026 07:16:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a946eda3d51897343d7ffc380e56fd79276ae7f39fc608aa96439a08cc9fe22e`  
		Last Modified: Sat, 19 Sep 2026 11:26:52 GMT  
		Size: 5.0 MB (5040476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:5f9c0dab6f14cc11e51f2bd0234230ac4a5d646c6325ad1db13aca55ad4e7c5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2643555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba3e3db6fc621981125177735b0f1d08f0abc133321907545c5c81a22be03a65`

```dockerfile
```

-	Layers:
	-	`sha256:56e9cb7c6d738f5ac6cdd9c1e96172d37c601f686fb5ecd6f4ff5b20f10c8435`  
		Last Modified: Sat, 19 Sep 2026 11:26:52 GMT  
		Size: 2.6 MB (2635418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdaae743a0441ce8886160fc2a0dd1de9e71f6c06e89c5f763e8fa2c37943783`  
		Last Modified: Sat, 19 Sep 2026 11:26:52 GMT  
		Size: 8.1 KB (8137 bytes)  
		MIME: application/vnd.in-toto+json
