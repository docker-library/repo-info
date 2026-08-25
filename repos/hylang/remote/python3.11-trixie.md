## `hylang:python3.11-trixie`

```console
$ docker pull hylang@sha256:792d39eac392d36959700ce69db10e19f3c3951c0faa5f463198e0c1955d8c84
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

### `hylang:python3.11-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:33476d5885727a636e6ecbaa28bede90f723188b4f134306639629b6d4d2b05b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52384008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0c575edb8b20d878d4e0204f9106eebda0f512342ad92a832eb28a916b8039`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:11:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:11:45 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:11:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:11:45 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 25 Aug 2026 01:11:45 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 25 Aug 2026 01:11:45 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 25 Aug 2026 01:20:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 25 Aug 2026 01:20:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 25 Aug 2026 01:20:06 GMT
CMD ["python3"]
# Tue, 25 Aug 2026 02:25:48 GMT
ENV HY_VERSION=1.3.1
# Tue, 25 Aug 2026 02:25:48 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 25 Aug 2026 02:25:48 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 25 Aug 2026 02:25:48 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e1b7cce0233772f3a18c08fa0e287c519b474afbfcd87ed023faad834cadb9`  
		Last Modified: Tue, 25 Aug 2026 01:20:14 GMT  
		Size: 1.3 MB (1293904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86306e32cd038ae40a4d1b8258a046618be19d6ef5280bb62a89960fecbf796`  
		Last Modified: Tue, 25 Aug 2026 01:20:15 GMT  
		Size: 14.4 MB (14446518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14578096edaf2dfd831b7865bfcc6d174e32bdeec920d1a66e11cab6269d7fa`  
		Last Modified: Tue, 25 Aug 2026 01:20:14 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44cf2ea0be6a178776fd76278473ba354ccf59f118692bc059311ece6c6aae2c`  
		Last Modified: Tue, 25 Aug 2026 02:25:55 GMT  
		Size: 6.9 MB (6850678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:830295612e89d144877d4fe7f4b0f2bc82f930783804c80f333a624baefe4b8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b6d5370261c86bfd2e01153f43b06dddbe76c4b171e2e0f0da93492269b478e`

```dockerfile
```

-	Layers:
	-	`sha256:90f46e510d07d579212457fd16aec0073f04537782aff71df5b1c058eb8cec69`  
		Last Modified: Tue, 25 Aug 2026 02:25:54 GMT  
		Size: 2.2 MB (2202850 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c2bf5b0f3a1dc2b426c310366366c468370e5c4ee8f0dcf942e4ec831490ca5`  
		Last Modified: Tue, 25 Aug 2026 02:25:54 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:a8c8210ca6de25ee40d936cda3cb98c69523cbcb9f157ea8ed6aa1379000c264
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.2 MB (50185978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf6d1ceea4b1c82b52b6a058642c5e32041d85b0a952e8b048d7f9204987cab`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:02:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:02:09 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:02:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:02:09 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 25 Aug 2026 01:02:09 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 25 Aug 2026 01:02:09 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 25 Aug 2026 01:20:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 25 Aug 2026 01:20:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 25 Aug 2026 01:20:42 GMT
CMD ["python3"]
# Tue, 25 Aug 2026 02:56:15 GMT
ENV HY_VERSION=1.3.1
# Tue, 25 Aug 2026 02:56:15 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 25 Aug 2026 02:56:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 25 Aug 2026 02:56:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72576397abd6af3f4143d6abcc445420a587d38d3a9c24c368ef086ace5cdf7`  
		Last Modified: Tue, 25 Aug 2026 01:20:50 GMT  
		Size: 1.3 MB (1277087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af082c60c23ec51b11008594b23e6cf1a899ff85df1765b871ed63baab9a76b`  
		Last Modified: Tue, 25 Aug 2026 01:20:50 GMT  
		Size: 14.1 MB (14088874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f54f050576e35c872b8620fda7c28703cd717d37f598dcc11726ecbcc5b3648`  
		Last Modified: Tue, 25 Aug 2026 01:20:50 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34720f38538256c077cca62df0f0faf0ec4ed7cccd08391bfaad23bdda101c11`  
		Last Modified: Tue, 25 Aug 2026 02:56:22 GMT  
		Size: 6.9 MB (6850825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:be5a481d6d42adb5e0b8006b5e285d45ebf49778b3db16de3ed88cd70d7d9b63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fe5cdb0fbbe96f39edb339a2edc7104250f2cb6bdf2635880b10edec15822e`

```dockerfile
```

-	Layers:
	-	`sha256:1cae490b95baa9e3fe49fcaee6d05de323ab95c410517a810daf2987b712a85b`  
		Last Modified: Tue, 25 Aug 2026 02:56:22 GMT  
		Size: 2.2 MB (2205851 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41a6d5e55f149092e542eee05c0c84256365c64e0e66dd0bee0717aedcf4fc66`  
		Last Modified: Tue, 25 Aug 2026 02:56:22 GMT  
		Size: 9.4 KB (9431 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:9b3c431d2bbd2e251e9e81fe4c438117f355bc75a4151bf15aedd0ac437a596a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48142759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9594ffb18cfa9924e411cb9d6bce8ce93fa06ec78b974064ea1ab4aa949ddf03`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:54:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:54:17 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:54:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:54:17 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 25 Aug 2026 01:54:17 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 25 Aug 2026 01:54:17 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 25 Aug 2026 02:11:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 25 Aug 2026 02:11:10 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 25 Aug 2026 02:11:10 GMT
CMD ["python3"]
# Tue, 25 Aug 2026 03:22:27 GMT
ENV HY_VERSION=1.3.1
# Tue, 25 Aug 2026 03:22:27 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 25 Aug 2026 03:22:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 25 Aug 2026 03:22:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38cbbc78e8d527a5dc1c0bed41cb653a8c14c4b01038393d83df924a05534da9`  
		Last Modified: Tue, 25 Aug 2026 02:11:18 GMT  
		Size: 1.3 MB (1250002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34a2035e6f61a60ba97dae060faece7b27c3469d0d5bab393cde186577c65f23`  
		Last Modified: Tue, 25 Aug 2026 02:11:18 GMT  
		Size: 13.8 MB (13822810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fccf5b200cc874fffe8d57427ea2fc30550ee881826904e3a16da19c01d6b11`  
		Last Modified: Tue, 25 Aug 2026 02:11:17 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891a4b34e51725325f2e038dafe147a575f149b50f74ba46503c831f5c6452bc`  
		Last Modified: Tue, 25 Aug 2026 03:22:34 GMT  
		Size: 6.9 MB (6850555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:93432c21dde110e0ed69104b4c2733b0821c2d628bb0e26e5df1699d70157353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2213736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8d1a5eb2dc374a6154d4b534d5dda0751b0b0fd96bd2e9cc2c8519206501e8`

```dockerfile
```

-	Layers:
	-	`sha256:11fae2598744bd8b7a44e18d02a08693fce5041876e516c1e245fd9c78e02325`  
		Last Modified: Tue, 25 Aug 2026 03:22:34 GMT  
		Size: 2.2 MB (2204304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c8ec2495cac5de8c131bbf280a9f60dde9a73301ac35fc7f2f7f8443c0baacd`  
		Last Modified: Tue, 25 Aug 2026 03:22:34 GMT  
		Size: 9.4 KB (9432 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:0de164e8fdd3deeb5d42be22695a4b0ab78d02682294b4ef5cf838a4e097678a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 MB (52689817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baaa89f713440cda287c2edc3b8f272d45b4c4cf17f7b6855a8cd85f60a60b69`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:14:28 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:14:28 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:14:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:14:28 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 25 Aug 2026 01:14:28 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 25 Aug 2026 01:14:28 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 25 Aug 2026 01:26:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 25 Aug 2026 01:26:09 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 25 Aug 2026 01:26:09 GMT
CMD ["python3"]
# Tue, 25 Aug 2026 02:27:49 GMT
ENV HY_VERSION=1.3.1
# Tue, 25 Aug 2026 02:27:49 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 25 Aug 2026 02:27:49 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 25 Aug 2026 02:27:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baef1f7c3bab12bbabadda7a109ed7f8d77217aba8485fa5acb0bd6831bc9436`  
		Last Modified: Tue, 25 Aug 2026 01:26:18 GMT  
		Size: 1.3 MB (1275171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715211e5857427e598d0434b76736b375841a2b5dbc7cfd0f7b6e3b9beb9f2eb`  
		Last Modified: Tue, 25 Aug 2026 01:26:18 GMT  
		Size: 14.4 MB (14404284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c773fdc99b6cc956ced4a48fe4f1cbd7214ac7baf8e3e04335f6acecc18edd1`  
		Last Modified: Tue, 25 Aug 2026 01:26:17 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee64030df731c56f3e1aa3a5e7c136b1ec5fd1319cf1ff8407aa7b3a25dbb02a`  
		Last Modified: Tue, 25 Aug 2026 02:27:57 GMT  
		Size: 6.9 MB (6850530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:4e2e91f999c1524013317512736d37fede8f21f2cf44d11e9cf3f53103bb63b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80c92c2fec0d87762503120ad254b7fe706eadbd9ab4cd8f764ea72d14b56d18`

```dockerfile
```

-	Layers:
	-	`sha256:531fcbfd1a74816b47c989f0c580b99b0285b2b3ff3f19f78c0ec3634375c531`  
		Last Modified: Tue, 25 Aug 2026 02:27:56 GMT  
		Size: 2.2 MB (2203156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:895166355312361174088aac56ae004014b1b7262f0f5105448f0728d65a1953`  
		Last Modified: Tue, 25 Aug 2026 02:27:56 GMT  
		Size: 9.5 KB (9472 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-trixie` - linux; 386

```console
$ docker pull hylang@sha256:dbed9939ef4acebed3c5f4cd02565e74a70959861315bd991de5f9c836eb5124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.9 MB (53944354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090e30a67cf236832769815d841c701225d8f12522cb0297792afb4731097283`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:05:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:05:31 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:05:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:05:31 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 25 Aug 2026 01:05:31 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 25 Aug 2026 01:05:31 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 25 Aug 2026 01:24:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 25 Aug 2026 01:24:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 25 Aug 2026 01:24:13 GMT
CMD ["python3"]
# Tue, 25 Aug 2026 02:18:14 GMT
ENV HY_VERSION=1.3.1
# Tue, 25 Aug 2026 02:18:14 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 25 Aug 2026 02:18:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 25 Aug 2026 02:18:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa629471d0d2fab4c2e482c017f93cb6d1ed5dfb840c00de1c03bde474d81096`  
		Last Modified: Tue, 25 Aug 2026 01:24:19 GMT  
		Size: 1.3 MB (1299000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4a1e43d3c6fde349b7e7d5d55a1ea765733b468e6583816fb8dc743a33d5d9`  
		Last Modified: Tue, 25 Aug 2026 01:24:20 GMT  
		Size: 14.5 MB (14491114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5d660ab0b6a2ba2428c547142559b60b281eef524b253fd99242c4adbd7602`  
		Last Modified: Tue, 25 Aug 2026 01:24:19 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b941a38e295c2470a45a3a1ea99a49bd0cd0f3f05bc380600cc9b84fbad058`  
		Last Modified: Tue, 25 Aug 2026 02:18:21 GMT  
		Size: 6.9 MB (6850593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:05d0b43230393d3ec6021eb80149e61c635d52f4a9eea84d704745b0032e9b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2209279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff87f160b981c6d1ccfc85245a0bdd0936b7029d7bf236b0c8b5e8a4379c65d`

```dockerfile
```

-	Layers:
	-	`sha256:4ec80c947e59206d48655c7eff38e907c751397d88f786f3b71b25cc290604e8`  
		Last Modified: Tue, 25 Aug 2026 02:18:20 GMT  
		Size: 2.2 MB (2200011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e90f733fa9bf2793455fec0a0010d32cbbcc1e1438e49d1069cfe7da1f9ceb9`  
		Last Modified: Tue, 25 Aug 2026 02:18:20 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:1147da151e7223b17a3dc84953f017220dcbb76b893215b552932c193d8b616d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.6 MB (56577643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d3c2798d07350747e9d434ddfebf21e5096fcfab82b6cf34a2d314d4421baa5`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 06:26:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 06:26:39 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 06:26:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 06:26:39 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 25 Aug 2026 06:26:39 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 25 Aug 2026 06:26:39 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 25 Aug 2026 07:20:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 25 Aug 2026 07:20:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 25 Aug 2026 07:20:30 GMT
CMD ["python3"]
# Tue, 25 Aug 2026 12:16:47 GMT
ENV HY_VERSION=1.3.1
# Tue, 25 Aug 2026 12:16:47 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 25 Aug 2026 12:16:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 25 Aug 2026 12:16:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa288b3625b475a777c760581cbe8b8b883368f738bacba26b1c8acd99bdb4c1`  
		Last Modified: Tue, 25 Aug 2026 06:46:53 GMT  
		Size: 1.3 MB (1322227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a73552b6f79d266e84d2b8cac5aa7a1bf3b13ec1cf85534d0375010c4137af6`  
		Last Modified: Tue, 25 Aug 2026 07:20:44 GMT  
		Size: 14.8 MB (14788877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef71578524aabd3df964df3a4b27a7a2c5b37ac0b2813865fcc113e2690478a4`  
		Last Modified: Tue, 25 Aug 2026 07:20:43 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd2cc1f6843bc2b4cdf932fbef852d56cd81c5f09479e32b44764b696012ccc6`  
		Last Modified: Tue, 25 Aug 2026 12:17:03 GMT  
		Size: 6.9 MB (6850828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:a5d86eaa4eee75b82c51db6af4084de52c4f727fad92638e0254fc17d01a1dab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2215829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b02cce426caf820e48eb49aea2d957254e874dda3811e4f2de3551aae86de4be`

```dockerfile
```

-	Layers:
	-	`sha256:4f7039a0500376a7cb44eab0a21427091c9d8ae3fe08bb330fd308fde6523d97`  
		Last Modified: Tue, 25 Aug 2026 12:17:03 GMT  
		Size: 2.2 MB (2206441 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c89fc65786685c1b62512686135cd1f8acd0d4e834afcf484229269d15c73b03`  
		Last Modified: Tue, 25 Aug 2026 12:17:03 GMT  
		Size: 9.4 KB (9388 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-trixie` - linux; riscv64

```console
$ docker pull hylang@sha256:8f1452d0d9bbb51270d60a4175daf017157bebce9d8f0eadd7bed9520bcf84ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.8 MB (53750552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7e11dda00b1b464dbc735ac5767e62b890f982743e585c209f25f6e19bf3bd`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1785715200'
# Fri, 07 Aug 2026 07:26:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 07 Aug 2026 07:26:57 GMT
ENV LANG=C.UTF-8
# Fri, 07 Aug 2026 07:26:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 07 Aug 2026 07:26:57 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Fri, 07 Aug 2026 07:26:57 GMT
ENV PYTHON_VERSION=3.11.16
# Fri, 07 Aug 2026 07:26:57 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Sun, 16 Aug 2026 21:06:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Sun, 16 Aug 2026 21:06:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 16 Aug 2026 21:06:30 GMT
CMD ["python3"]
# Mon, 17 Aug 2026 10:26:28 GMT
ENV HY_VERSION=1.3.1
# Mon, 17 Aug 2026 10:26:28 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 17 Aug 2026 10:26:28 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 17 Aug 2026 10:26:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4b662f844c11eb624262cf201f852ccf968e45c6d3c4ec3fa1c5a288fef35ca8`  
		Last Modified: Wed, 05 Aug 2026 00:57:36 GMT  
		Size: 28.3 MB (28278118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275ba157170a941eefd5b76cbee1792983fd4dfe8ef27ebcb65e4c33cdf93c61`  
		Last Modified: Fri, 07 Aug 2026 09:13:38 GMT  
		Size: 1.3 MB (1261207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd23949e07c35103f3a8cfb07f51a67b812fa64decbd6257f9a6bcce56e70c8`  
		Last Modified: Sun, 16 Aug 2026 21:07:47 GMT  
		Size: 17.4 MB (17359427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0bccc6d44bacce73339f19d478800460dfaf4fe193a18d069e72445637eaefc`  
		Last Modified: Sun, 16 Aug 2026 21:07:43 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8253924071b07cb89bd1dae3b02c10fb44826a805574c5b4481c958da5d0435d`  
		Last Modified: Mon, 17 Aug 2026 10:27:33 GMT  
		Size: 6.9 MB (6851549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:89c61961814ced22d8e3951f6cf5de552183a5128e8d84505047bbdaa5d253f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2206200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d19ae264f601e6971c9903b1aad3e8364c0f34670685fcc8be4f15b90700792`

```dockerfile
```

-	Layers:
	-	`sha256:b2b023b911e99c18c331b19193e6846e7bd584e1bcc0346a49f98a87fc9a6386`  
		Last Modified: Mon, 17 Aug 2026 10:27:33 GMT  
		Size: 2.2 MB (2196812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fa03395226aa779cd3696e46056a523d755a08dda8006caf32fac80c3b4ec4a5`  
		Last Modified: Mon, 17 Aug 2026 10:27:32 GMT  
		Size: 9.4 KB (9388 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-trixie` - linux; s390x

```console
$ docker pull hylang@sha256:50f344cc735c9afa09d2ad872b8687b0da89c8294f7e99fdf582c59c2d3966e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.5 MB (52482656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6290fc72bab729006cb451f309d9ccb0acd04208789e95b10bf9a76b44d41983`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 01:46:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:46:55 GMT
ENV LANG=C.UTF-8
# Tue, 25 Aug 2026 01:46:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:46:55 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 25 Aug 2026 01:46:55 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 25 Aug 2026 01:46:55 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 25 Aug 2026 02:03:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 25 Aug 2026 02:03:21 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 25 Aug 2026 02:03:21 GMT
CMD ["python3"]
# Tue, 25 Aug 2026 02:53:51 GMT
ENV HY_VERSION=1.3.1
# Tue, 25 Aug 2026 02:53:51 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 25 Aug 2026 02:53:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 25 Aug 2026 02:53:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257a7111aec0bae52e9ae48ddb955aebd28aa827760f4d4ca79112b831dff938`  
		Last Modified: Tue, 25 Aug 2026 01:59:20 GMT  
		Size: 1.3 MB (1306404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0501a54bb20e6c47715b84e0e09b7f238cd42bc2b053fa2883f16c70b87de78c`  
		Last Modified: Tue, 25 Aug 2026 02:03:33 GMT  
		Size: 14.5 MB (14457783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b76264fdb249de2f4c09c9f50d2c183c5a2cc3d9c1da3d5aaa62e2ee3924aa16`  
		Last Modified: Tue, 25 Aug 2026 02:03:32 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2dca3108c1e7ef8369301dbfe16e7f57e3d55ead3d423012248c02f4ed17b4`  
		Last Modified: Tue, 25 Aug 2026 02:54:04 GMT  
		Size: 6.9 MB (6850501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:d6a98a106bd9757ab1ac8ca9f92da58f1cf125ef70f07b97bfcb5132a597591f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2213609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a394ad9751a515f20e83b4ac732bfceef79e4ef4d54a587b2ab06cb52743eac`

```dockerfile
```

-	Layers:
	-	`sha256:b962ff98fe689a3dc5e5805d45650feac66fec88c400cc4fc782a7842cf43de0`  
		Last Modified: Tue, 25 Aug 2026 02:54:04 GMT  
		Size: 2.2 MB (2204289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97f102915c132c477f486dc04cd0dd883c1a292a4add13e27a96471f3f54cd51`  
		Last Modified: Tue, 25 Aug 2026 02:54:04 GMT  
		Size: 9.3 KB (9320 bytes)  
		MIME: application/vnd.in-toto+json
