## `hylang:python3.13-bookworm`

```console
$ docker pull hylang@sha256:738d4f135efcb5d5d58b5e936d773dc195bb2399379fd91ba4c5ebf3d840f383
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
$ docker pull hylang@sha256:f2ffdd56b9c0ab75fbfea216795210101ca042366e0b9859833c327476d10675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49622245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:393579847544824790ca182cd176bb1309db887bd2cb7c2f563d2aa7c99b7066`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 01:54:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 01:54:23 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 01:54:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 01:54:23 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 28 Oct 2026 01:54:23 GMT
ENV PYTHON_VERSION=3.13.18
# Wed, 28 Oct 2026 01:54:23 GMT
ENV PYTHON_SHA256=abb0102e6d4ae027509bcb82327d9dd85515b44a3ba8ad538cfc5e9847029f68
# Wed, 28 Oct 2026 02:04:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:04:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:04:38 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 02:42:22 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 02:42:22 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 02:42:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 02:42:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6826f8529239b0ebfe5dd429a795c8c4989724db6ae9059fa9f03dda8c31f8f5`  
		Last Modified: Wed, 28 Oct 2026 02:04:46 GMT  
		Size: 3.3 MB (3341535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed7a1a27c6d053227e15859d704914451dfa1f77792489b54ecc64103fe9db7`  
		Last Modified: Wed, 28 Oct 2026 02:04:46 GMT  
		Size: 12.6 MB (12608442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e143ada11afde237a069ca6ba1887c691cf44e992e77da323c9139f47b8acd2`  
		Last Modified: Wed, 28 Oct 2026 02:04:46 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbd0a748323fcbca565b4f7f1afd4bb312a9666a0a8e3f0ba2971a3fe181027`  
		Last Modified: Wed, 28 Oct 2026 02:42:29 GMT  
		Size: 5.4 MB (5424580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:47b630e4c196a0fbccaf27d009edb18701c37cb187a8e02cd5a7b458d2b49576
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aade4607efb067d902149e9ad959c436f4ab031ef429f677d68b7305def8a56b`

```dockerfile
```

-	Layers:
	-	`sha256:b961b524ee78fd3e3bea2fd8fb1365d598cd918cea9f4e48256319c288963771`  
		Last Modified: Wed, 28 Oct 2026 02:42:29 GMT  
		Size: 2.5 MB (2549001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43c9add06e7eb57e07c60d1ff82f7fa8bd555dfb9b4582778504ba1b06e6e781`  
		Last Modified: Wed, 28 Oct 2026 02:42:28 GMT  
		Size: 8.1 KB (8094 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:89944038d9f224b454c75295e2a2cca87b40e01c18f068db4b89ce922f5c064a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.9 MB (43906355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a883727d7a7d2b8a401d744c082566af6c5bd408404f34e6f096749018aef94f`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:38:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:38:11 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:38:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:38:11 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 28 Oct 2026 02:38:11 GMT
ENV PYTHON_VERSION=3.13.18
# Wed, 28 Oct 2026 02:38:11 GMT
ENV PYTHON_SHA256=abb0102e6d4ae027509bcb82327d9dd85515b44a3ba8ad538cfc5e9847029f68
# Wed, 28 Oct 2026 02:59:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:59:33 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:59:33 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 03:51:00 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 03:51:00 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 03:51:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 03:51:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:cbe97ec71a04b2e9c534c23b59d26efd60897a49fc8ed09b5b3363faac51e383`  
		Last Modified: Wed, 28 Oct 2026 00:10:33 GMT  
		Size: 24.0 MB (23960966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb1240b4b0185ef35fdefca6b4af4b5fe16fe722e8b5b6ef283e868f21c547e`  
		Last Modified: Wed, 28 Oct 2026 02:59:40 GMT  
		Size: 2.7 MB (2746640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b5423a5bef837fa404f580d40f09105f137dad09729071436807e7502ad377`  
		Last Modified: Wed, 28 Oct 2026 02:59:40 GMT  
		Size: 11.8 MB (11773711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f92456a4fa1413fb7851c5c9842102c3b87587ede6bc0d9b546d9ece4aa426`  
		Last Modified: Wed, 28 Oct 2026 02:59:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9326a79e784d20cfd65597fbe5a0dd29d20b6f589c72a23e585274174445f87`  
		Last Modified: Wed, 28 Oct 2026 03:51:07 GMT  
		Size: 5.4 MB (5424789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:65772ee91c5923aded4bdbe8c948189897ede3b516ebffb4397c742c69c1e277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2559420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e4f8da8b167ce59bccf7bc51d2ca9bb2ca7005b2b74bf8d10867284ccbb1e7b`

```dockerfile
```

-	Layers:
	-	`sha256:e981d9ac0ba219cefec52a4321bf3470c201ed9ad74f80adc7f4caa600fef695`  
		Last Modified: Wed, 28 Oct 2026 03:51:07 GMT  
		Size: 2.6 MB (2551246 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef200ea26d470153fb9fc150d25811016e818110fae55f2985d59dc158090120`  
		Last Modified: Wed, 28 Oct 2026 03:51:07 GMT  
		Size: 8.2 KB (8174 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:e6bcb2bea1860633137d24326fc969339c7d9cc134c70ccbe4d1662d02470775
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.2 MB (49248746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f602b022a076d76ef111377f5f3be7b8ebe2938aac79e42a88c7347586dffdb8`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:15:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 28 Oct 2026 02:15:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:15:51 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 28 Oct 2026 02:15:51 GMT
ENV PYTHON_VERSION=3.13.18
# Wed, 28 Oct 2026 02:15:51 GMT
ENV PYTHON_SHA256=abb0102e6d4ae027509bcb82327d9dd85515b44a3ba8ad538cfc5e9847029f68
# Wed, 28 Oct 2026 02:29:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 28 Oct 2026 02:29:14 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 28 Oct 2026 02:29:14 GMT
CMD ["python3"]
# Wed, 28 Oct 2026 03:20:36 GMT
ENV HY_VERSION=1.3.1
# Wed, 28 Oct 2026 03:20:36 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 28 Oct 2026 03:20:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 28 Oct 2026 03:20:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17fc4b3b47710ec9c49e529c1083b40d2e731f00d8728cee8628e9ae6eb62758`  
		Last Modified: Wed, 28 Oct 2026 02:29:22 GMT  
		Size: 3.2 MB (3174127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c89f2983ded6fa8a311251738886b226beb52a9353c26c24d3bf174e5c3b03`  
		Last Modified: Wed, 28 Oct 2026 02:29:23 GMT  
		Size: 12.5 MB (12511537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdc57b4239fae35f88d6247a33d58d253efda5c48afcab12a52bc4f51aebe80`  
		Last Modified: Wed, 28 Oct 2026 02:29:22 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952688e1f57ed824fa8c4923f5b0832863272f4d2b9385ce2a918851918b7c4b`  
		Last Modified: Wed, 28 Oct 2026 03:20:43 GMT  
		Size: 5.4 MB (5424881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:e98cf5c4bc73725a3768957a927ada3dcbd37ee6fda953d73acb706aa05c9c02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2557464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c12f9fbac256f2250f6f63c7ab9d34de169cf0c6d6f018d7f49f2734444cd78`

```dockerfile
```

-	Layers:
	-	`sha256:0ded0c67a15585d30f5efd3778c895d1e8ad1bff5bdb1db085223af4306f9f27`  
		Last Modified: Wed, 28 Oct 2026 03:20:43 GMT  
		Size: 2.5 MB (2549266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d26f87e6785208405c2a4ad3e49099a6dda3657c431c9acd8b95a0b0f94fe26`  
		Last Modified: Wed, 28 Oct 2026 03:20:43 GMT  
		Size: 8.2 KB (8198 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:1d0506e8a1f427c1e1b7e33e445c606be0e0957c1fa1a51fff0ec91afd2f9219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.5 MB (51497878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49d526a9ed0b3aafec4a2b605f347142b63b0016e5f89ef359373855e7314059`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1792531975'
# Mon, 26 Oct 2026 22:49:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:49:26 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:49:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:49:26 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 26 Oct 2026 22:49:26 GMT
ENV PYTHON_VERSION=3.13.18
# Mon, 26 Oct 2026 22:49:26 GMT
ENV PYTHON_SHA256=abb0102e6d4ae027509bcb82327d9dd85515b44a3ba8ad538cfc5e9847029f68
# Mon, 26 Oct 2026 23:00:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:00:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:00:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:27:41 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:27:41 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:27:41 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:27:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f18bb404f18e1a55e73386e40eac6da347163fe58e54559004ef9b0d1c24e4f2`  
		Last Modified: Tue, 20 Oct 2026 23:30:30 GMT  
		Size: 29.2 MB (29239245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b211191b357e0848d256c93cecff735f704207f72c592fe6d5a03df884451c`  
		Last Modified: Mon, 26 Oct 2026 23:00:36 GMT  
		Size: 4.0 MB (3981396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91f978b5380115f07e5d353ae6b9f15e8947233deb6534d733701cc533e1fd71`  
		Last Modified: Mon, 26 Oct 2026 23:00:36 GMT  
		Size: 12.9 MB (12852133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56ac95e20b7fefe36243aa112e1a6225b150a563c831bfbd9481b2c2416b62fd`  
		Last Modified: Mon, 26 Oct 2026 23:00:35 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:126dfb0fe3adbb99fe947ea1c7d021dcee8d08ce2c95767b46fe4b515dfcd9e9`  
		Last Modified: Mon, 26 Oct 2026 23:27:48 GMT  
		Size: 5.4 MB (5424855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:0b19270640c1d7939ee1422d83be328db67716ff87455075e3b7b634ecbb4d23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2554230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7a10091eef8a1ea34863a94a837c37cf156e72f278f35257ba4326faf04283`

```dockerfile
```

-	Layers:
	-	`sha256:44ab3095560ceea0a63ad2ffc40ddae38d9186b92b142c89a192b8eff1933697`  
		Last Modified: Mon, 26 Oct 2026 23:27:48 GMT  
		Size: 2.5 MB (2546168 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31d3a8ec19cf74b21801b44ae8b5cc499aa876ee0b653ee9cf4e0ddcbd5f06c4`  
		Last Modified: Mon, 26 Oct 2026 23:27:48 GMT  
		Size: 8.1 KB (8062 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:b96e1f45194fb9d37d0ca29d75c170af064c2240f065e889f48ec5d3dd6966f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.2 MB (57175879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:168fc590be473e4c837d550b6aced8f52e6517a968292ceb1291b8a7c013484e`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 08:29:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 08:29:20 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 08:29:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 08:29:20 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 08:29:20 GMT
ENV PYTHON_VERSION=3.13.18
# Wed, 21 Oct 2026 08:29:20 GMT
ENV PYTHON_SHA256=abb0102e6d4ae027509bcb82327d9dd85515b44a3ba8ad538cfc5e9847029f68
# Tue, 27 Oct 2026 02:55:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 27 Oct 2026 02:55:51 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 27 Oct 2026 02:55:51 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 07:49:07 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 07:49:07 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 07:49:07 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 07:49:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d987fde6a0b4b9bc8a2616d96734ddf024dceb6dd519ec51c02b83ad4ccbfe9`  
		Last Modified: Wed, 21 Oct 2026 08:53:44 GMT  
		Size: 3.5 MB (3543620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:240ae19391c24d242075d3bafafd1489c5b892fe7615e645e45216469a4eb975`  
		Last Modified: Tue, 27 Oct 2026 02:56:07 GMT  
		Size: 16.1 MB (16113751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcf41db60c8d139faf0a64830d8d1b59998ee486d6ceb324fd301070c3dd06d`  
		Last Modified: Tue, 27 Oct 2026 02:56:07 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca9fd0301bd4c7f992bb5877ed7b8000bfaeebe3050c12eb68fef496052a1c4`  
		Last Modified: Tue, 27 Oct 2026 07:49:27 GMT  
		Size: 5.4 MB (5425051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:0149e8c4df6fac509a60b20b7e11330cf7082629711bfedafd599e03b36caa1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2561577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:142f8131ebd36bb3ae3b2808b62203602d891fa131545767dba72a33fddd1edc`

```dockerfile
```

-	Layers:
	-	`sha256:a0e4151109462db9f1104d159ba1b62e8e5eeed2fcb2deb156fe2241939b07af`  
		Last Modified: Tue, 27 Oct 2026 07:49:27 GMT  
		Size: 2.6 MB (2553439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:229b858fa5aad4fdf21edadccf64cca4a7e83e4ee09ca3862f7290b1705c6865`  
		Last Modified: Tue, 27 Oct 2026 07:49:27 GMT  
		Size: 8.1 KB (8138 bytes)  
		MIME: application/vnd.in-toto+json
