## `hylang:python3.13-bookworm`

```console
$ docker pull hylang@sha256:d482220e94a09e0ba0e7b226bc01b4599cecace7aa0ecab53ea3dac0640848f9
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

### `hylang:python3.13-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:c8da5c4d92adb705d094cae625a0394660093f37a272dbfbf57382a5a7ca9297
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.8 MB (51846485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8753e4eadbf85249c8316844291d5f2c23f0bb3d8f51e7a03ebedcfe84bf03`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:55:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:55:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:55:52 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 06 Oct 2026 01:55:52 GMT
ENV PYTHON_VERSION=3.13.16
# Tue, 06 Oct 2026 01:55:52 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Tue, 06 Oct 2026 02:06:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:06:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:06:50 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:51:12 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:51:12 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:51:12 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:51:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a6e787b2e07b2b8a2c88b600812f9f7588374cf74e6f17d696695c8984d900`  
		Last Modified: Tue, 06 Oct 2026 02:06:59 GMT  
		Size: 3.3 MB (3342349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aded561bdc17f79b65ec824282d38146fac0eb9d8951b9a7a4ca462bbea8c21d`  
		Last Modified: Tue, 06 Oct 2026 02:06:59 GMT  
		Size: 14.9 MB (14892797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29d8700fe216d98a8d918ecf891265355e2ca697f9c11e8290d00813caaed60d`  
		Last Modified: Tue, 06 Oct 2026 02:06:59 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ac7cb32a71b129e15cb0e6d543021b0e9c4bcc9b86fbfe5277e3d6550c68bc`  
		Last Modified: Tue, 06 Oct 2026 02:51:18 GMT  
		Size: 5.4 MB (5361766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:4a1f3963f95af865d269fb66cadb9365c054c5fa0f2933247fca13a38ad9e219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d80e8ed4806fc206bba716ef6ca478b6ae3c4faa1e115e0e3b1488dc087529a`

```dockerfile
```

-	Layers:
	-	`sha256:fce00f3f6deefb4b8c65bed626563db876bc2cf0fc362524be7adf916952cd9b`  
		Last Modified: Tue, 06 Oct 2026 02:51:18 GMT  
		Size: 2.6 MB (2550294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90886b459d8fcca3e40508d7a1fe6e8d3c81f68ce464cc91baa0ae32948c776a`  
		Last Modified: Tue, 06 Oct 2026 02:51:18 GMT  
		Size: 8.1 KB (8079 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:c38f452913766b45b83ba0fca30b85e4303ce7791d737ccb554c42470a6d8150
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44457175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adeb128cf5a81b4fd60f7dfac70c98a4f033771a3a3f31481191cf67fc56288e`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1789689600'
# Thu, 01 Oct 2026 21:52:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:52:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 21:52:12 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 01 Oct 2026 21:52:12 GMT
ENV PYTHON_VERSION=3.13.16
# Thu, 01 Oct 2026 21:52:12 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Thu, 01 Oct 2026 22:13:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:13:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:13:38 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 23:09:36 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 23:09:36 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 23:09:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 23:09:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0f3351a6d282c9993e318db2f90ca23ba75e8f5e94bfff11cad56d85c2a630d2`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 23.9 MB (23943116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb095d23db3c88c0fa5707e97dcfba7f1c1610f213b4362b6770a8a1cf369d5`  
		Last Modified: Thu, 01 Oct 2026 22:13:46 GMT  
		Size: 3.4 MB (3387504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e767c1d3aa31df53a032ca533336327672f513dbbb40fe0556d6b8ca247502`  
		Last Modified: Thu, 01 Oct 2026 22:13:46 GMT  
		Size: 11.8 MB (11764586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765129bf132dbcc9c0bb62231c97fab9ffd8e8cd20d3dbb5cd78bf30270315b2`  
		Last Modified: Thu, 01 Oct 2026 22:13:45 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f41c8431d01c7a345fdc95d448a6e47e3dc538b5c8513cd62510101208b98202`  
		Last Modified: Thu, 01 Oct 2026 23:09:44 GMT  
		Size: 5.4 MB (5361720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:c05b7b08a58710c0a0c84d932520dc7fdcebff03317049c420c1235cb7ffe60b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2560698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad5b79e9176c7659614e3fd937d356f5c694a88489c5e35826a481f6e62db8b9`

```dockerfile
```

-	Layers:
	-	`sha256:b8f5ee5e72d808d54b1e4b816aa055c181c1faa9623873fa20575e871c1eb427`  
		Last Modified: Thu, 01 Oct 2026 23:09:43 GMT  
		Size: 2.6 MB (2552539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1edd2d97dc30c033cd235993def109c5a388fcd50f467c0a83b11c31a24f7afe`  
		Last Modified: Thu, 01 Oct 2026 23:09:43 GMT  
		Size: 8.2 KB (8159 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:f935e968ef2f75b60e5cdcb44ad64e88fa901478e11141156c5f46fed1dcea4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51424096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67767af1aa61256285c50f18a35e8c3045f8eb8f1a663b88c5842e1d385cc086`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:59:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:59:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:59:21 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 06 Oct 2026 01:59:21 GMT
ENV PYTHON_VERSION=3.13.16
# Tue, 06 Oct 2026 01:59:21 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Tue, 06 Oct 2026 02:12:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:12:49 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:12:49 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:44:30 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:44:30 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:44:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:44:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa08835651e777794bde3e8c99bee012c418f60d0d164df22497fa01dc72aca5`  
		Last Modified: Tue, 06 Oct 2026 02:12:57 GMT  
		Size: 3.2 MB (3176232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2df2902dddd1a4510670c4d3a6d61b4458fa3e7c1ae0b262d75bde1349ab14`  
		Last Modified: Tue, 06 Oct 2026 02:12:57 GMT  
		Size: 14.7 MB (14748696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32020fed7f2a057b9cee7fdbfa3ea9fc394149118d7a951c462c7055c3cd3f56`  
		Last Modified: Tue, 06 Oct 2026 02:12:56 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3e4d913e9cd2fcf7fc02cef2d22a527a56955e2c00f3b8615fd3897664e7f1`  
		Last Modified: Tue, 06 Oct 2026 02:44:37 GMT  
		Size: 5.4 MB (5361739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:6c33126e528a962cc763cbc6d27ba8114e9a9ea85b39ef51baf061d2ac25b359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2558742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66fad0c972d37074374715d5dd8ef20d5a814fe57c2e4b3c6b4fe2bf78cc01e7`

```dockerfile
```

-	Layers:
	-	`sha256:deec110a3a9943bed01b9bd6595b9ad6dee949b3dda55d2e1738bcd75c8dd51f`  
		Last Modified: Tue, 06 Oct 2026 02:44:37 GMT  
		Size: 2.6 MB (2550559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb5c8c1e1fb7fbea0eecf77879bb9c51b1f65f4747317c5c4c45a0561f721cc1`  
		Last Modified: Tue, 06 Oct 2026 02:44:36 GMT  
		Size: 8.2 KB (8183 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:8c7584cbe5c2fc33201a3416ae19ab16cd885c269a9b9aad9592b8dfc4d709eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.2 MB (53218125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d526a786b652c11717d5aa5e88af8fae685992b9598aefb0e6cf4b4f9debae65`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:54:38 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:54:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:54:38 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 06 Oct 2026 01:54:38 GMT
ENV PYTHON_VERSION=3.13.16
# Tue, 06 Oct 2026 01:54:38 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Tue, 06 Oct 2026 02:07:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:07:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:07:37 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:48:53 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:48:53 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:48:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:48:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be837ee5b91cce6a6a24c12e04e561122feed61f0b3aff6403676bef7cfcf7f0`  
		Last Modified: Tue, 06 Oct 2026 02:07:46 GMT  
		Size: 3.3 MB (3348060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102a0c901baee1361089b28aec226639cbc012bb6fc2ce8fa2416dc77301b93f`  
		Last Modified: Tue, 06 Oct 2026 02:07:46 GMT  
		Size: 15.3 MB (15268725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc81368705c8c7979ad527b9020e7967b4af666a726ef33b8b39580ab6cc15d`  
		Last Modified: Tue, 06 Oct 2026 02:07:45 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8cb653f0163af2eb7d11f829f3fbe37402ec54c3bfc92daaa766a12ff6999f`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 5.4 MB (5361717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:f7f6d74ddf4adc62f23c3f222f8cfc4cb40a30d3c6b7d5e5af08463ff7286f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2555508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b16909ae8ac652989a2a00b0ee1b0f7b97fd9ef380aaf734e56804d43795859`

```dockerfile
```

-	Layers:
	-	`sha256:02e525d6e885da5c8c08c099796b7f53c04b07178c15d6da358e5dd39d11f57d`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 2.5 MB (2547461 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c68934c40b6a75a467cf99e6a631b5547ff945833bc5b14db48a65ab3e65a765`  
		Last Modified: Tue, 06 Oct 2026 02:49:00 GMT  
		Size: 8.0 KB (8047 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:3dc3f152695cb0fd917c4d985c6e18261a146f590aa053d3a387400374938959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54771396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50074cbfd7965e1f112523abcd41c1a8a893eeeaf20768defd40b206cbe327c5`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Thu, 01 Oct 2026 22:04:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 22:04:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 01 Oct 2026 22:04:25 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 01 Oct 2026 22:04:25 GMT
ENV PYTHON_VERSION=3.13.16
# Thu, 01 Oct 2026 22:04:25 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Fri, 02 Oct 2026 00:15:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 02 Oct 2026 00:15:20 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 02 Oct 2026 00:15:20 GMT
CMD ["python3"]
# Fri, 02 Oct 2026 03:19:33 GMT
ENV HY_VERSION=1.3.1
# Fri, 02 Oct 2026 03:19:33 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 02 Oct 2026 03:19:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 02 Oct 2026 03:19:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b0c8ba5d0c541c4fb0b8a3cfb9194137798e92c7af67d551a5ad9866e3d0f41`  
		Last Modified: Thu, 01 Oct 2026 22:48:18 GMT  
		Size: 4.2 MB (4187061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c52085f382ba75d2cd1ab022ac9be7e686d528095b45dd3a541f6439eb9c9d18`  
		Last Modified: Fri, 02 Oct 2026 00:15:35 GMT  
		Size: 13.1 MB (13138612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9eca5342fdf64d046df078bdb648f6cb22c877e5509dc77441a528a8eda69c6`  
		Last Modified: Fri, 02 Oct 2026 00:15:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee1e8b0d25d1972e8eeb255dd4590cbf954d97b35cb41b3aa28e6e8c1b0ccbe`  
		Last Modified: Fri, 02 Oct 2026 03:19:56 GMT  
		Size: 5.4 MB (5361910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:140ba9ad12f4a7d51cf0a1601e268efb0a8c7f858dd15778d1a2dbab719025a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2562855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0884f65d3924db645ec3e8816592d8ee4602006f3dc5af05a45fc76e026147e0`

```dockerfile
```

-	Layers:
	-	`sha256:dea0de24dce7e68e083390199d1717da614cf8a7abf12a0d27dae672e5065a08`  
		Last Modified: Fri, 02 Oct 2026 03:19:56 GMT  
		Size: 2.6 MB (2554732 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84209bc907f4ed71b4d700b85f0b1224dfe4531c048e1acf0a8cada341dfa45f`  
		Last Modified: Fri, 02 Oct 2026 03:19:56 GMT  
		Size: 8.1 KB (8123 bytes)  
		MIME: application/vnd.in-toto+json
