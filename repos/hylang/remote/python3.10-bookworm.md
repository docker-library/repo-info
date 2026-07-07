## `hylang:python3.10-bookworm`

```console
$ docker pull hylang@sha256:0aa5ad60bec508fd8a4ad006404a50ed9064c73163c35577ffee423a73ab8d42
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `hylang:python3.10-bookworm` - linux; amd64

```console
$ docker pull hylang@sha256:231747abff58c1cd69cdb409b317c64b9f6bc705691dd375106bb7bf7861d0aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52370888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:512b3dfa8963168f98ac50f654144ce29af56b6a53476df813ec365e2fac2119`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 21:42:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:42:30 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:42:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:30 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:42:30 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:42:30 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:48:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:48:58 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:48:58 GMT
CMD ["python3"]
# Mon, 06 Jul 2026 22:11:01 GMT
ENV HY_VERSION=1.3.0
# Mon, 06 Jul 2026 22:11:01 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 06 Jul 2026 22:11:01 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 06 Jul 2026 22:11:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fdca44399f9abea333c5d3d23f40d53dbec929687754cebe76a9fdb825c67c4`  
		Last Modified: Mon, 06 Jul 2026 21:49:06 GMT  
		Size: 3.5 MB (3520827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7057875ef31ed191bb5b90857c6226ddc4441b79b08e512a96e1756b407e94d4`  
		Last Modified: Mon, 06 Jul 2026 21:49:07 GMT  
		Size: 15.4 MB (15433091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:224856bff41f767919378478048a2086cc6561f841c765abd4dd59711bbcb98f`  
		Last Modified: Mon, 06 Jul 2026 21:49:06 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d861428877e69836873044ef453c1de1512bba910a15b0aa436b12c707c3be`  
		Last Modified: Mon, 06 Jul 2026 22:11:08 GMT  
		Size: 5.2 MB (5179080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:94dc677be4fe6ac6aad65904ce90d644e3eb890285aaf744ada267ee30b5c068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2633731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44666b9356aad785d87f5ee523a23ab412878674a2b1e1d50252b580be8d4fb2`

```dockerfile
```

-	Layers:
	-	`sha256:be29c8e9d9505c4dbbbe0a4db29bd949c23094f65098b595c4fa9ca5718b80d4`  
		Last Modified: Mon, 06 Jul 2026 22:11:08 GMT  
		Size: 2.6 MB (2625637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43f5420bc050618b0d92343adfcb4a1a48b80eaf179e383ca52576816446abb1`  
		Last Modified: Mon, 06 Jul 2026 22:11:08 GMT  
		Size: 8.1 KB (8094 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; arm variant v5

```console
$ docker pull hylang@sha256:e0bba13788c8a680f6da735fefb0a6ce104953f79a3f9f526f4f296afb44847f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48931859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e6986f9e0cc717cff180ff2e9fd6c95ec0d0408aa3c1db58c20c2e39664bec`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 21:42:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:42:50 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:42:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:42:50 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:42:50 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:42:50 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:53:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:53:32 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:53:32 GMT
CMD ["python3"]
# Mon, 06 Jul 2026 22:37:00 GMT
ENV HY_VERSION=1.3.0
# Mon, 06 Jul 2026 22:37:00 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 06 Jul 2026 22:37:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 06 Jul 2026 22:37:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:56a07f407b343196efb8a614d5b61dad4cbe8fd8c8e97a11342cd7a61eadc02c`  
		Last Modified: Wed, 24 Jun 2026 00:27:42 GMT  
		Size: 25.8 MB (25773229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453463d4f81a85bb6dd50b159ddd2f025aaba7d25535d5ec9048dc60797eb1b9`  
		Last Modified: Mon, 06 Jul 2026 21:53:40 GMT  
		Size: 3.1 MB (3093609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e933639488494d24365f764506b68c517985fb8b10126a47273b6fc495f732`  
		Last Modified: Mon, 06 Jul 2026 21:53:41 GMT  
		Size: 14.9 MB (14885482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1842e14eeb2e2b0b1329118ed49fc7b06db8c5fc744781ab370863f4e83a5dd9`  
		Last Modified: Mon, 06 Jul 2026 21:53:40 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71e81b248d6aa7023c839be723551026ae4c33d6444a2dafaa10960a8263748`  
		Last Modified: Mon, 06 Jul 2026 22:37:07 GMT  
		Size: 5.2 MB (5179289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:60bca05668867282c444246d2825d091338526c4efbdac095dfebe5df3c4bea8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2637631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74ed2fd77760143ce658b3c178ea212c128b93f01b3e5dd291cb4ddfba3ad94`

```dockerfile
```

-	Layers:
	-	`sha256:4636a185032102ab9a108fe7628ceb1101ff86db18aa1b79dcffe87f6996d442`  
		Last Modified: Mon, 06 Jul 2026 22:37:07 GMT  
		Size: 2.6 MB (2629457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:107aff6cbcadee7730a289195715ae9c767bf9886afb25b7adc2158846501002`  
		Last Modified: Mon, 06 Jul 2026 22:37:07 GMT  
		Size: 8.2 KB (8174 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; arm variant v7

```console
$ docker pull hylang@sha256:713c2ca951af10a0bc67bc3dd32e298c031e326ff6c0178f45fad164c61755f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.4 MB (46445260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63eb201c955bd718936e2539287c80c8a4e1dbd80040556a4535d659f59744ff`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:24:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 03:24:57 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 03:24:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:24:57 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 24 Jun 2026 03:24:57 GMT
ENV PYTHON_VERSION=3.10.20
# Wed, 24 Jun 2026 03:24:57 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Wed, 24 Jun 2026 03:35:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel<0.46' 	; 	pip3 --version # buildkit
# Wed, 24 Jun 2026 03:35:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 24 Jun 2026 03:35:30 GMT
CMD ["python3"]
# Wed, 24 Jun 2026 04:26:15 GMT
ENV HY_VERSION=1.3.0
# Wed, 24 Jun 2026 04:26:15 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 24 Jun 2026 04:26:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 24 Jun 2026 04:26:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd664e6f26ab8e2e00a0131d53341af68799808fc1d671635afbf7fecd4c3f9`  
		Last Modified: Wed, 24 Jun 2026 03:35:38 GMT  
		Size: 2.9 MB (2928732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:829e96106137c3203e2bb822ae8dadeddcd320dcded183fa8a9fa4194b4fb483`  
		Last Modified: Wed, 24 Jun 2026 03:35:38 GMT  
		Size: 14.4 MB (14414134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c315e34f6c40d11c367b1a85686d5d8b07be753f8fb067e1627a84a121a48f34`  
		Last Modified: Wed, 24 Jun 2026 03:35:38 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a9f5de483d344ad770c959f4259e9a8dd293b8aa1471b4b633f98dd43accf6`  
		Last Modified: Wed, 24 Jun 2026 04:26:22 GMT  
		Size: 5.2 MB (5157613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:ff15ae8de2b038314f8d5d861105721c373df80b7c66304b5c2d53f00d0a0285
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2633512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f462e7003300ad2462b3ecf7203b910966058f67e79e197c14b881bd38c7781`

```dockerfile
```

-	Layers:
	-	`sha256:396b52ce920ec6ada5ab30b81c6b47e5690efe3955a3af8da1698fc431972e58`  
		Last Modified: Wed, 24 Jun 2026 04:26:22 GMT  
		Size: 2.6 MB (2625339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04575884c4897d4d5a02cfa21ec89fee0c91a88f2b4e9f38467677e7ac0d03ba`  
		Last Modified: Wed, 24 Jun 2026 04:26:22 GMT  
		Size: 8.2 KB (8173 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:ddbe1e5e7f9c2268868cb596071807a9cf9203da02a97c2b79b99acbf0423921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (52021619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:948b920ac1d33d805990b83691601334ae8a5b0dcf5a3fe580e03a9cdbab339a`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 21:43:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:43:00 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:43:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:43:00 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:43:00 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:43:00 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:50:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:50:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:50:25 GMT
CMD ["python3"]
# Mon, 06 Jul 2026 22:12:01 GMT
ENV HY_VERSION=1.3.0
# Mon, 06 Jul 2026 22:12:01 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 06 Jul 2026 22:12:01 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 06 Jul 2026 22:12:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08887053115bc7858a9dbd6bb6201e799b225d30cc14531014855aecb0150cbb`  
		Last Modified: Mon, 06 Jul 2026 21:50:34 GMT  
		Size: 3.4 MB (3352673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e213df308a61c71f01698a5ddb000829a91cd1b90ff4c30a313d08420175ca3d`  
		Last Modified: Mon, 06 Jul 2026 21:50:34 GMT  
		Size: 15.4 MB (15367157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdaeb9ee2c85708476bfe3bfa9b7c6345d5b256a2490104d4953491e1fd38f2`  
		Last Modified: Mon, 06 Jul 2026 21:50:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5e4afe07711f61f8dadb754beeb435b540f227940c6face489fd3f9835da66`  
		Last Modified: Mon, 06 Jul 2026 22:12:08 GMT  
		Size: 5.2 MB (5179120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:243774df546885a92211dbf1405c94b4e4cc519de69fcceb21e1e0a235cdd848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2634108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6d59125d7f53dde0577401689a0621247c5ee54faa54b4ab9c29d265135a65`

```dockerfile
```

-	Layers:
	-	`sha256:0a4e9bc7c8ce13ac99a515923065e5339dd0ab5f52e2838bb0c2d1b35e33d503`  
		Last Modified: Mon, 06 Jul 2026 22:12:08 GMT  
		Size: 2.6 MB (2625910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e610503699ddc84b14fa2b6f477ce180a56c3e6b4ee00d60845890929298ef35`  
		Last Modified: Mon, 06 Jul 2026 22:12:08 GMT  
		Size: 8.2 KB (8198 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; 386

```console
$ docker pull hylang@sha256:7a96dad96b3c65387e1ecc00c85f162faab309213d146be9f0c6f9b702954473
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53603507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a80e0f507b3eb0ae02803a470ee5b25f956e10f203b247e85f8c68679b5f0edd`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 21:51:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:51:49 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:51:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 21:51:49 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:51:49 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:51:49 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:59:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:59:22 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:59:22 GMT
CMD ["python3"]
# Mon, 06 Jul 2026 22:13:54 GMT
ENV HY_VERSION=1.3.0
# Mon, 06 Jul 2026 22:13:54 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 06 Jul 2026 22:13:54 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 06 Jul 2026 22:13:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:df519b11ac99d8e2d452cbd55f824e658d0b86f649745abaaf8cbe33e2736a30`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 29.2 MB (29225809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e78c23d960992228e27359621975534f0e9d9bda922f78f9dc446bcafb2f6e`  
		Last Modified: Mon, 06 Jul 2026 21:59:31 GMT  
		Size: 3.5 MB (3521283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6dd2ceb3da54e2eb52afdd33a862e4001b38e2eb0869d632a56d772ad8a6fa8`  
		Last Modified: Mon, 06 Jul 2026 21:59:31 GMT  
		Size: 15.7 MB (15677031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1e9eba93cb9957937bacbf4ee4d799c7195eedab4beec86a9a9568b05db68f`  
		Last Modified: Mon, 06 Jul 2026 21:59:31 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8c5f2b64ecdbb6c330a8cac8baf174e8b7d15b36e85177098b20c703c59441`  
		Last Modified: Mon, 06 Jul 2026 22:14:01 GMT  
		Size: 5.2 MB (5179134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:4ae33af9887fdf760b34f4bc124041693dbb15dff55359d9b6cce56b9bcc5ac1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2630850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bbf30b55cd9c75267561fae2fa99f398a3e6a164271d8e3ac68ff076fe7ca87`

```dockerfile
```

-	Layers:
	-	`sha256:31df285b6aa031f25cc12fc48921c5380b9a526fa4d20ae779b4c9e925415657`  
		Last Modified: Mon, 06 Jul 2026 22:14:01 GMT  
		Size: 2.6 MB (2622788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f82b3a0d59858fa9a7fac1064229bd5f9e63354332a115b1b20d5af738abeee8`  
		Last Modified: Mon, 06 Jul 2026 22:14:01 GMT  
		Size: 8.1 KB (8062 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; ppc64le

```console
$ docker pull hylang@sha256:515f8acc8c9dc8b8e3244aa676d62c4d990c963642180c77727b15a699085633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (56957276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1d399cbdb7ad2d87f1152687cb82b729f1b7c62c2065233fa17a82c4373041`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 06:37:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 06:37:59 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 06:37:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 06:37:59 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 24 Jun 2026 06:37:59 GMT
ENV PYTHON_VERSION=3.10.20
# Wed, 24 Jun 2026 06:37:59 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Wed, 24 Jun 2026 07:30:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel<0.46' 	; 	pip3 --version # buildkit
# Wed, 24 Jun 2026 07:30:19 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 24 Jun 2026 07:30:19 GMT
CMD ["python3"]
# Wed, 24 Jun 2026 11:24:30 GMT
ENV HY_VERSION=1.3.0
# Wed, 24 Jun 2026 11:24:30 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 24 Jun 2026 11:24:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 24 Jun 2026 11:24:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f13db830607f74579648df891c22813790163690c59dd11d050a9f5de4f50d`  
		Last Modified: Wed, 24 Jun 2026 06:57:56 GMT  
		Size: 3.7 MB (3725241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff6e674cb73e6a7fb3105422ce3f7fda70a98fc0b2cd1239077229ccc2af1a42`  
		Last Modified: Wed, 24 Jun 2026 07:30:35 GMT  
		Size: 16.0 MB (15991879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b7859cf91cc9b97c4513d0bfbd9d13fedf5f4e3ca00e0a96d08d41b8dc25d39`  
		Last Modified: Wed, 24 Jun 2026 07:30:34 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf1b670d16119bbef66816948ec2ee628f0ff69251d7a2ac7d963f046adc8b1`  
		Last Modified: Wed, 24 Jun 2026 11:24:44 GMT  
		Size: 5.2 MB (5157928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:c87ea5628429b565f142370704386ddbf1f356d81d6a770e815d3ed4422d0ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2635714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6671f6b4f91e55d4da156bb329eca7abbdf7c4ea7514e916b23f26e9ea024df8`

```dockerfile
```

-	Layers:
	-	`sha256:1a03851082d9c8c4320daf7be1e46310ae454cf22cc7d0bc165b90df5cbd24bd`  
		Last Modified: Wed, 24 Jun 2026 11:24:43 GMT  
		Size: 2.6 MB (2627576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f9b6fe39d07e519a473b96fd8084058557d40f5b43dc8007fda0001835f153c8`  
		Last Modified: Wed, 24 Jun 2026 11:24:43 GMT  
		Size: 8.1 KB (8138 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.10-bookworm` - linux; s390x

```console
$ docker pull hylang@sha256:f0939dac887d92af7e1a61250c30001c5e92f9b4000a5bfd0cd39f11209c955d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50405885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d55da9f7c431c44700b7f5bb1504225e190fd71bf38d0d993930b6373baa8a36`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Wed, 24 Jun 2026 03:43:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 24 Jun 2026 03:43:56 GMT
ENV LANG=C.UTF-8
# Wed, 24 Jun 2026 03:43:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 03:43:56 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 24 Jun 2026 03:43:56 GMT
ENV PYTHON_VERSION=3.10.20
# Wed, 24 Jun 2026 03:43:56 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Wed, 24 Jun 2026 04:05:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel<0.46' 	; 	pip3 --version # buildkit
# Wed, 24 Jun 2026 04:05:13 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 24 Jun 2026 04:05:13 GMT
CMD ["python3"]
# Wed, 24 Jun 2026 05:12:05 GMT
ENV HY_VERSION=1.3.0
# Wed, 24 Jun 2026 05:12:05 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 24 Jun 2026 05:12:05 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 24 Jun 2026 05:12:05 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af515a288b7cf1eb798272406eb7e5bb9232da83c08621e62fcb58e8e4054d9a`  
		Last Modified: Wed, 24 Jun 2026 03:56:22 GMT  
		Size: 3.2 MB (3184102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068829bb01fb96f2f23c1559cc7609af4cd9c9a363cf30fc9ce4b951fc348cc1`  
		Last Modified: Wed, 24 Jun 2026 04:05:27 GMT  
		Size: 15.2 MB (15170406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b648b0347ee95187068b05f5dc23ff946c64055b63d7c148023715d1d7f85b24`  
		Last Modified: Wed, 24 Jun 2026 04:05:27 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dbbab2d64eee32a7c4d5f44c2da76c7fa0484ae09398589219910b9f64028f`  
		Last Modified: Wed, 24 Jun 2026 05:12:19 GMT  
		Size: 5.2 MB (5157542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.10-bookworm` - unknown; unknown

```console
$ docker pull hylang@sha256:3f5b506339e89cd3c531c60e3af6758e8d412a0f39cb1d5f7c49349927a2fbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.6 MB (2627979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d5a875a4aec48fcecf60360a5f5c092323a110f780f90d540807d47f14a0a4f`

```dockerfile
```

-	Layers:
	-	`sha256:f71249ec9a962afeda3f94369cda51dacd4d5f7428f00541259fae58f763b21a`  
		Last Modified: Wed, 24 Jun 2026 05:12:19 GMT  
		Size: 2.6 MB (2619886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:284926e8fd5763e9a02658e823258b3d546985950b575bb2ef8e542610404420`  
		Last Modified: Wed, 24 Jun 2026 05:12:19 GMT  
		Size: 8.1 KB (8093 bytes)  
		MIME: application/vnd.in-toto+json
