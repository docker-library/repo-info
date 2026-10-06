## `hylang:python3.13-trixie`

```console
$ docker pull hylang@sha256:bf26972944cd3b302a5473f81cdb169adde88538928392aacb211e8a7334829f
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

### `hylang:python3.13-trixie` - linux; amd64

```console
$ docker pull hylang@sha256:42e8aa5cd288bd9bf7c578769ce0a352de4d6d7dab01ad60e7d849b05bb839ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51383651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9873bbd1737e820ff7152a2813674a36d90d3549a06fa2919cc48a8752d68948`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 21:34:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:34:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 01 Oct 2026 21:34:13 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 01 Oct 2026 21:34:13 GMT
ENV PYTHON_VERSION=3.13.16
# Thu, 01 Oct 2026 21:34:13 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Thu, 01 Oct 2026 21:45:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:45:01 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:45:01 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 22:12:48 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 22:12:48 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 22:12:48 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 22:12:48 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ae429f6151335a53305bc42db15361f1bd47811fb1660ea5b665ff08d17666`  
		Last Modified: Thu, 01 Oct 2026 21:45:10 GMT  
		Size: 4.3 MB (4268661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e7563f2ddb63441774cb88bb68bab20ca9a79267a9982ea921419c1a6910b8c`  
		Last Modified: Thu, 01 Oct 2026 21:45:10 GMT  
		Size: 11.9 MB (11922685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14f2539d39c701eb33cb2f8c26199e904da2850a54e1bf40eb73f915bd57896`  
		Last Modified: Thu, 01 Oct 2026 21:45:10 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54419c2ed91813febe3cd24e268c1233a25929d1c305d30918eb329d632fb98`  
		Last Modified: Thu, 01 Oct 2026 22:12:55 GMT  
		Size: 5.4 MB (5361638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:6f5d15b01d07d4fd574a573990f5862cc5afddc0d71515839e0f8be06eac5559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2183757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05a2a87833421c06e2812b82426b097416f30c9371f5f0f84f75f8d2cec61f49`

```dockerfile
```

-	Layers:
	-	`sha256:6d3bb8d2157c20a055867194bd30bd47a2fff5a36474e113f09a722fc4bcfc3b`  
		Last Modified: Thu, 01 Oct 2026 22:12:55 GMT  
		Size: 2.2 MB (2174452 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96a4516b9b3b95048f481f57a01b7a4b67c4b3f2f42d32abe89e53c40746f9b3`  
		Last Modified: Thu, 01 Oct 2026 22:12:55 GMT  
		Size: 9.3 KB (9305 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-trixie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:1d55fe3ab289e3896684ce092c5f0f6a93af8ef8e05642e85271c07815a2e269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46258854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:816a49ea881f6dab9cd2fc11f2f58f8041e9c8ca2fbbc6b56029609de5ce0e77`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:59:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:59:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:59:40 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 06 Oct 2026 01:59:40 GMT
ENV PYTHON_VERSION=3.13.16
# Tue, 06 Oct 2026 01:59:40 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Tue, 06 Oct 2026 02:19:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:19:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:19:34 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:37:38 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:37:38 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:37:38 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:37:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd3399a103142094866ab16d595cb288466d8a28abe4f48d18550ab71700ade`  
		Last Modified: Tue, 06 Oct 2026 02:19:41 GMT  
		Size: 1.3 MB (1276950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e495be3c08fe8285445701b6fb6f6b9913c7c62f066d0903cc61d0452b47dcb`  
		Last Modified: Tue, 06 Oct 2026 02:19:41 GMT  
		Size: 11.6 MB (11612316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61b2f80321739bcdad78cd8337a4f0dbe8cf66854ca87f47def1d343a658d367`  
		Last Modified: Tue, 06 Oct 2026 02:19:41 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27196d919b141308edfc7d6447e3eee0eb0fe902ce1d1113824a12b7fb9be479`  
		Last Modified: Tue, 06 Oct 2026 03:37:45 GMT  
		Size: 5.4 MB (5361853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:d67fb708a9763ba50d35ff8bcdae0fc4548c4dc2a6d467e32fd3ecc64febbb9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2186869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285db96038807c2c27cb66c7a146e2f952387d7257f5e42183ddaa076dfe2764`

```dockerfile
```

-	Layers:
	-	`sha256:33e364085d411ca6a57a0370f7b328f9bc3ef53b5ec11d6d430c2e3af195668b`  
		Last Modified: Tue, 06 Oct 2026 03:37:45 GMT  
		Size: 2.2 MB (2177453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:923b995f14188eb7ea62bbe862115a35303837588cc33235ebd3ddcdca2ca0d5`  
		Last Modified: Tue, 06 Oct 2026 03:37:45 GMT  
		Size: 9.4 KB (9416 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-trixie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:a1e46d7d1b0ebb5090d52a78e7845943df6e52059571533d15b2a22438018121
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46406997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e43ec5b734461218690b101d763dc71c777ab948b6fdf5b873e6f57a1d3ef3`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 21:46:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:46:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 01 Oct 2026 21:46:20 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 01 Oct 2026 21:46:20 GMT
ENV PYTHON_VERSION=3.13.16
# Thu, 01 Oct 2026 21:46:20 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Thu, 01 Oct 2026 22:08:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:08:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:08:39 GMT
CMD ["python3"]
# Thu, 01 Oct 2026 22:40:30 GMT
ENV HY_VERSION=1.3.1
# Thu, 01 Oct 2026 22:40:30 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 01 Oct 2026 22:40:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 01 Oct 2026 22:40:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe851c3ddb099d3084b48441332659b8d1ffd502cff8a91d22b25bef19136ba`  
		Last Modified: Thu, 01 Oct 2026 22:08:47 GMT  
		Size: 3.5 MB (3464723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81636701b12e25189b18b6faa9b94a5b49bbdf0c724052e2a089b2d2db1a775`  
		Last Modified: Thu, 01 Oct 2026 22:08:47 GMT  
		Size: 11.3 MB (11331342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89932d0f15a400286ad49e48874166e625c99b4524936f251dfede9cd9d29e9`  
		Last Modified: Thu, 01 Oct 2026 22:08:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3313de66697b86c0fcf12b2d877e0704e91845e4545578d12c86ff885d340751`  
		Last Modified: Thu, 01 Oct 2026 22:40:37 GMT  
		Size: 5.4 MB (5361753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:b13fc543ccca4f322b86e4e063dc9e7243146dc96ee65153e0d71e9b7d4b45d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2185323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec46b9ef6c14cf4673052dfdced22c7067adc078703ca42f3bed33421d53b68d`

```dockerfile
```

-	Layers:
	-	`sha256:99580ae159fc3ee3b455b8854809bfee821f94bc87cb8904dc45f1355a238a69`  
		Last Modified: Thu, 01 Oct 2026 22:40:37 GMT  
		Size: 2.2 MB (2175906 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d64b37b07cc71c1ef4bb3d959ef70021058ff1517cc6bb30c2fee70cd13f2778`  
		Last Modified: Thu, 01 Oct 2026 22:40:37 GMT  
		Size: 9.4 KB (9417 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-trixie` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:a9a75e58b1c9acb8a697d9b931ff8f36400b1fab66d6f777a8188cfb713fedeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48684013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffb2b264bc5a2bdafaf29f1c6ed0c3e3697998b48a5db70b855b5b95505bf8dd`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:59:28 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:59:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:59:28 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 06 Oct 2026 01:59:28 GMT
ENV PYTHON_VERSION=3.13.16
# Tue, 06 Oct 2026 01:59:28 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Tue, 06 Oct 2026 02:13:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:13:03 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:13:03 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 02:44:20 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 02:44:20 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 02:44:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 02:44:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c5ac708d8b046b36bb9ff13512a4ebb02740989de6f68337004fe5473a996d`  
		Last Modified: Tue, 06 Oct 2026 02:13:12 GMT  
		Size: 1.3 MB (1275234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e41644b4b81a155dbd3f55fa04a37386bf9cc6c5fcb5d9470f604e5f6531259b`  
		Last Modified: Tue, 06 Oct 2026 02:13:12 GMT  
		Size: 11.8 MB (11846526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74202e18a58bbfeb8aa453d39c9f10218cfd1afc69e81a2b29e40913c69f56b9`  
		Last Modified: Tue, 06 Oct 2026 02:13:11 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54e6dc0091d13185933a071a685f7e72d599104c3d97667f56df7997f8766a2`  
		Last Modified: Tue, 06 Oct 2026 02:44:27 GMT  
		Size: 5.4 MB (5361721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:bcc7a498d4f48f04f5fa29f2dfcec1426609d5417c173432f4f54a90507a8331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2184215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21710afe221300b097f57afa7e20ae825864560bf4d2a8386ede4319cfb4eac3`

```dockerfile
```

-	Layers:
	-	`sha256:875c73782c68682f441644b3aec9ec970dc8785a58b20a03f4f9b7eff400c28b`  
		Last Modified: Tue, 06 Oct 2026 02:44:27 GMT  
		Size: 2.2 MB (2174758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ce13e62e32af156c5580a60057812d47f5a68665959de65e9980d21ccfe0768`  
		Last Modified: Tue, 06 Oct 2026 02:44:27 GMT  
		Size: 9.5 KB (9457 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-trixie` - linux; 386

```console
$ docker pull hylang@sha256:80bc5a882f8c6f8c44413a145595ab9522a00c5751dae74c296f682461e2fcf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50042928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:754f0fca4ccbba190cbcc4e16e4cd9d25cb4ca60b1636f7afcb0029302a8ba19`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:54:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 01:54:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:54:34 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 06 Oct 2026 01:54:34 GMT
ENV PYTHON_VERSION=3.13.16
# Tue, 06 Oct 2026 01:54:34 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Tue, 06 Oct 2026 02:18:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:18:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:18:26 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:16:50 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:16:50 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:16:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:16:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3f415c44887d6d40f00368d485c7142ea34b5805ce424b8aeadaae548a804d`  
		Last Modified: Tue, 06 Oct 2026 02:18:33 GMT  
		Size: 1.3 MB (1299056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fff966fb79286cab906b570aa84be67f0634a8e33a3bb40b9c02775d22f3098`  
		Last Modified: Tue, 06 Oct 2026 02:18:34 GMT  
		Size: 12.0 MB (12028511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6532fea77bda07661beb56de57cf7f8e203d47eab443e068e3143818c9e8c04b`  
		Last Modified: Tue, 06 Oct 2026 02:18:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa7744027aceba32a8a07d8afb39f8c6872065a86659c9a95327b1b7268926a7`  
		Last Modified: Tue, 06 Oct 2026 03:16:57 GMT  
		Size: 5.4 MB (5361815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:00e0468c07d525a4b0065d3f7d2c30f952fef9b9474b74ea333e88d1405292eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2180866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3bc591dbe8b3543f63b08f45a5c491e1a1a88fc2613afbf4d61ad47b29fdd0`

```dockerfile
```

-	Layers:
	-	`sha256:528cc88b4ba360f989a2ee30b955e1fae7b4877a1810854915f8d8f06e23d9a3`  
		Last Modified: Tue, 06 Oct 2026 03:16:57 GMT  
		Size: 2.2 MB (2171613 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9a6a107289c466591bd09a854dd13113a5286ed7f23ea7f631ecb2b8691eb78`  
		Last Modified: Tue, 06 Oct 2026 03:16:57 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-trixie` - linux; ppc64le

```console
$ docker pull hylang@sha256:c34b57c28bbafffc4937d6e26102aa60068c0be20719b1c94d9a8d2aa36d9a42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.8 MB (55847374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972a0a8508e560af6b5673435011b0cc6a71e5351ebb8ea25c30fc400edfb423`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Thu, 01 Oct 2026 21:36:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:36:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 01 Oct 2026 21:36:00 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 01 Oct 2026 21:36:00 GMT
ENV PYTHON_VERSION=3.13.16
# Thu, 01 Oct 2026 21:36:00 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Thu, 01 Oct 2026 23:33:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 23:33:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 23:33:39 GMT
CMD ["python3"]
# Fri, 02 Oct 2026 03:18:05 GMT
ENV HY_VERSION=1.3.1
# Fri, 02 Oct 2026 03:18:05 GMT
ENV HYRULE_VERSION=1.1.0
# Fri, 02 Oct 2026 03:18:05 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Fri, 02 Oct 2026 03:18:05 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe3bb8998496bc22bd8ec1d047f98e180282aa34da095d6c7d32838f29c11f47`  
		Last Modified: Thu, 01 Oct 2026 22:03:51 GMT  
		Size: 4.5 MB (4535213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9503ce4c82f81c13d1c76114239e12aedde72344107dd5b2cf6b500616bf63bd`  
		Last Modified: Thu, 01 Oct 2026 23:33:54 GMT  
		Size: 12.3 MB (12308640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddee0b20c4cdacc38bdf7235b4fda9b11bb56c622713a2380691b9f537c45874`  
		Last Modified: Thu, 01 Oct 2026 23:33:54 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549258a32410492873846cd0a35585357b5a43da2e3928f2c6497d3f8cfda262`  
		Last Modified: Fri, 02 Oct 2026 03:18:32 GMT  
		Size: 5.4 MB (5362036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:5f225fe99bde56167f18bb314b4a534a38ffacd741a770641e43a0164e635393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2187416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:576f6ae3c4d64b6d49cdf9381e5a8465357b3e91d3c58546bb32f5dd854bcc57`

```dockerfile
```

-	Layers:
	-	`sha256:7e74fe52068717b1884286eaf718794e9b6db0a859dcd853357e5fd016359961`  
		Last Modified: Fri, 02 Oct 2026 03:18:32 GMT  
		Size: 2.2 MB (2178043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c48978548fd8f50d32bff2013e22818bd9aeaa24d5dae41c1ad4ba2ae73caea`  
		Last Modified: Fri, 02 Oct 2026 03:18:32 GMT  
		Size: 9.4 KB (9373 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-trixie` - linux; riscv64

```console
$ docker pull hylang@sha256:4a324c5c77fc9a37489949be84a6095fdfc7a164a2f26d60d0c59df2e9c71d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.9 MB (49901467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ad2440c523836b553c544cd9e6489b3493e41d356e603a885f3d4266106e5e`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 13:18:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 13:18:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Fri, 25 Sep 2026 13:18:41 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Fri, 25 Sep 2026 13:18:41 GMT
ENV PYTHON_VERSION=3.13.16
# Fri, 25 Sep 2026 13:18:41 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Sun, 04 Oct 2026 05:38:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sun, 04 Oct 2026 05:38:56 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 04 Oct 2026 05:38:56 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 02:40:00 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 02:40:00 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 02:40:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 02:40:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e88e53254af881b931a0b04fc7b52de250cbfedfbb985b7e8817410184a85134`  
		Last Modified: Fri, 25 Sep 2026 15:07:50 GMT  
		Size: 1.3 MB (1262286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e066dbbed58539d1d3f0ef61015b62a89be75a995bdfd7cd5c2ee06e1527d242`  
		Last Modified: Sun, 04 Oct 2026 05:40:20 GMT  
		Size: 15.0 MB (14952011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0270b9fa1c55abbb4ca2b2d67a946759b76582c341d83a48e3552d2000083b8`  
		Last Modified: Sun, 04 Oct 2026 05:40:18 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a185c7371f9e8bd74e80e6bf1bdcfdfeb835ab7e4f634df84396e119a76d30`  
		Last Modified: Mon, 05 Oct 2026 02:41:12 GMT  
		Size: 5.4 MB (5362536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:6b6eff26ef51b05ef39f60540bacae789f8c91662eec460b8afe5cc7f3c89daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2177786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b6a284c7f65b5bedb14ecb130f722fe7d1092b63242b623f71a17cfac59133`

```dockerfile
```

-	Layers:
	-	`sha256:e8d37f3d548824a2623ff1541cc27324c30e618f3ac9f3d1113a6999ca54797e`  
		Last Modified: Mon, 05 Oct 2026 02:41:11 GMT  
		Size: 2.2 MB (2168414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01d3f90bcdabefd75be4cdeacf58988e2205fa5bd1f17326499bf34237c9c286`  
		Last Modified: Mon, 05 Oct 2026 02:41:11 GMT  
		Size: 9.4 KB (9372 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-trixie` - linux; s390x

```console
$ docker pull hylang@sha256:d3759c339bc6df9672ab082afd71225fd548ce669a8e20e106cf0246edadeb7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.6 MB (48550522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d70c6e4c7009051ce8268ff5c3b356754599e2687d98d5a67cbca00938919b`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:14:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:14:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:14:11 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 06 Oct 2026 02:14:11 GMT
ENV PYTHON_VERSION=3.13.16
# Tue, 06 Oct 2026 02:14:11 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Tue, 06 Oct 2026 02:25:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 06 Oct 2026 02:25:49 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 06 Oct 2026 02:25:49 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:15:51 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:15:51 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:15:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:15:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f68554ac88a78acc5ea24b9ca55529985da2aa87d8bb2ea19085ee47efcc01`  
		Last Modified: Tue, 06 Oct 2026 02:21:24 GMT  
		Size: 1.3 MB (1306349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3788da0acd55c7f87b5a9fb22fc10adf93c8e058291cc2766ba4fcbd201891`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 12.0 MB (11972917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3741ba1968b306800b7ac9fb29ad0954db1bbb07cc63812ced6fe4958f7eab9a`  
		Last Modified: Tue, 06 Oct 2026 02:26:00 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ef3a2deaae82c2c4c6a837e646aa55498e2e2aa0e399999f53ec267d0a302c`  
		Last Modified: Tue, 06 Oct 2026 03:16:03 GMT  
		Size: 5.4 MB (5361758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-trixie` - unknown; unknown

```console
$ docker pull hylang@sha256:b7c598acd9fb67b169f346e28017e9442d4c7307489e378ca27cdca0c2fdd2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2185196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aaaddf03fd48bafae58ad1f0f66e8d66e2a3bf792ac96fa5ab9b7fe634a4c9d`

```dockerfile
```

-	Layers:
	-	`sha256:adb8741036dadbcfde2cb4b9549359e905d5b7712e1868d16ba4ac3d93df6a41`  
		Last Modified: Tue, 06 Oct 2026 03:16:02 GMT  
		Size: 2.2 MB (2175891 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a78917e2d028207ed8ec7e92ca6ca809b39970f354c6243be81f2eb7f90fcdb`  
		Last Modified: Tue, 06 Oct 2026 03:16:02 GMT  
		Size: 9.3 KB (9305 bytes)  
		MIME: application/vnd.in-toto+json
