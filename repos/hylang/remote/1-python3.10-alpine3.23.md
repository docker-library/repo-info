## `hylang:1-python3.10-alpine3.23`

```console
$ docker pull hylang@sha256:6dced68e6350a85f0002f253c05f6e7223460a43502b1cc2bcfb4b90df0b771f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `hylang:1-python3.10-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:a7c8bf7cb03c8484a0228a6093e1b89c376dffb38c452485efe4a8148f37eaec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (24979422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d31ce53f66e7648c71547332488294573fcd10ba4561c3ebdea27c086b7a756`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:42:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:42:22 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:42:22 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 21:42:22 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:42:22 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:42:22 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:51:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:51:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:51:05 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 15:59:04 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:59:04 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 15:59:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 15:59:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59619ca7040acc431065441a3cd1e764c5a759861cd0a4f1618c4c1b26af57ba`  
		Last Modified: Mon, 06 Jul 2026 21:47:45 GMT  
		Size: 408.8 KB (408770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3007584e4db76b181dcd14eaef1f5f78689e76345a3a076ce0920416cf1f0b`  
		Last Modified: Mon, 06 Jul 2026 21:51:12 GMT  
		Size: 15.5 MB (15507928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e789c42b673895cfbffb64be235d789cd60a6d9d4ed5c005a8fcbe1c40c3d3c4`  
		Last Modified: Mon, 06 Jul 2026 21:51:12 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46ed43d0d168474927fa429419442d418bc3e186971e190a95d648f0c757569`  
		Last Modified: Wed, 05 Aug 2026 15:59:10 GMT  
		Size: 5.2 MB (5218056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:e549f8874b3ebeeda4ac935a1a558249ee90261368332b929906c4643c6e1cc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.5 KB (690485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd59a847415dc8de464e65b8e36b41ece20e69270db8e6472e29fc0fb111df3a`

```dockerfile
```

-	Layers:
	-	`sha256:1713b06e236d2b08c2cd89ced2b623f3874469e76e31a6dcf6e96267717c44c4`  
		Last Modified: Wed, 05 Aug 2026 15:59:09 GMT  
		Size: 682.4 KB (682382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc58903727541cab8f21f53bec8291c51dc00b4ca3529781d5d43b5c0b4e442c`  
		Last Modified: Wed, 05 Aug 2026 15:59:10 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:1c2e069f3c75596a5f4c28c451dc2fed829f7927e257cf445123821abaa061a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.3 MB (24283807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8665d1ff9ef683fff991ef7fd414c9dc4f3557fef6db62a7773da7df3fe4060`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 22:08:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 22:08:47 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 22:08:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 22:08:47 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 22:08:47 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 22:08:47 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 22:12:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 22:12:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 22:12:45 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 15:56:46 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:56:46 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 15:56:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 15:56:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a2357212b996301b80a13af84dcb5aa0a9354171cd41e9f3d4c7e2a7c7f176`  
		Last Modified: Mon, 06 Jul 2026 22:12:51 GMT  
		Size: 410.6 KB (410612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef08fc875e60f2a8e3131ccc03f031eb910e6f2e0c38f40c3cd8b602e2491414`  
		Last Modified: Mon, 06 Jul 2026 22:12:51 GMT  
		Size: 15.1 MB (15102116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d90daa970abc972938d014c1eb0ac499cda98147bad1343f9a2842f659e1bb4`  
		Last Modified: Mon, 06 Jul 2026 22:12:51 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fc93b2fdb923abbc77113abf00608353a39d56df824018b0f7a3844f059e7d`  
		Last Modified: Wed, 05 Aug 2026 15:56:50 GMT  
		Size: 5.2 MB (5218235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:d8b9cf451dc3cc30cc3c710436a7203708c3e282ad04a317efdf419fdcc044d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ea74b2bd6bcad3e3eb14b177fe202825c93f47fa5a04802e84859fe5efceff`

```dockerfile
```

-	Layers:
	-	`sha256:53b4c9fcfd5e19bb46239400730b3276d294fe18ed288776dd4b0f639b188cdf`  
		Last Modified: Wed, 05 Aug 2026 15:56:50 GMT  
		Size: 8.0 KB (7968 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:6137ec55eca6f461183cc085a423951bcbb57565325bfc5383ea6f81971102e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23579639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ef8df86c2eea6504bc5d33a3076ea9ab4cb4e677afaccb084da63aecb80ddc4`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 22:01:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 22:01:34 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 22:01:34 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 22:01:34 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 22:01:34 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 22:01:34 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 22:05:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 22:05:36 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 22:05:36 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 15:59:51 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:59:51 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 15:59:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 15:59:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e23ce5f36f42bc06920ab51151168393df5d9fcf15e211262b8353ef710763`  
		Last Modified: Mon, 06 Jul 2026 22:05:43 GMT  
		Size: 409.3 KB (409305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb1ad986854babadce10545a0876423676bcca7630bb05b7713056d639a19fd`  
		Last Modified: Mon, 06 Jul 2026 22:05:44 GMT  
		Size: 14.7 MB (14689926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e9200e8d335215c580a92fd5df190bec4cdf3d79139ae7af67c8286e1a3b7f`  
		Last Modified: Mon, 06 Jul 2026 22:05:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e430921973c7b47a1e4492b2377b12fd16b84597739630c65a18a788323c7b`  
		Last Modified: Wed, 05 Aug 2026 15:59:57 GMT  
		Size: 5.2 MB (5218306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:e476c010447a8434320657ca264394590adde45f8fc7d9b2f14bdd0ae49e985e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.9 KB (692941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f703b5f8ea266819496ede521bd1760297b2ef443df277534a65e1c4387b2151`

```dockerfile
```

-	Layers:
	-	`sha256:f0ed6e1f6f5f5e709536a1f5dd4f2565385bed17f25c602724f06c6ffc9d7af8`  
		Last Modified: Wed, 05 Aug 2026 15:59:57 GMT  
		Size: 684.8 KB (684758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a527e73e75a7dcacbecba6729fe0d9cc1bab612ecaeaffc844acaee7bac3117`  
		Last Modified: Wed, 05 Aug 2026 15:59:57 GMT  
		Size: 8.2 KB (8183 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:2e8903a119c5127efbcf315d00354cf3556292f6d8df6fdcb1f2420fb0c13da7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25498917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d928d81b1b79b870929bc7e10e9df0ebcccdf894b6f6519ce63f48b54841145`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:47:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:47:13 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:47:13 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 21:47:13 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:47:13 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:47:13 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:51:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:51:12 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:51:12 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 16:00:16 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:00:16 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:00:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 16:00:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8425d5d3001aad586e7e34f57ef1a567974f2d2b661ff9324cf4cb6cc157a8f4`  
		Last Modified: Mon, 06 Jul 2026 21:51:19 GMT  
		Size: 412.5 KB (412467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d63888f12a07d482f1d643991b98bd7dc6829c8197f90a85a665bfe2da0940f`  
		Last Modified: Mon, 06 Jul 2026 21:51:19 GMT  
		Size: 15.7 MB (15686261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4923379159a3fc3cf11de21763fb06b4c4186eb574943bde227a4714792fd37`  
		Last Modified: Mon, 06 Jul 2026 21:51:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a01daac021ab06745c4de1d4c902e6c9c9b1a67ba788c274258aba670766c8`  
		Last Modified: Wed, 05 Aug 2026 16:00:22 GMT  
		Size: 5.2 MB (5218082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:89660b1cc460684fc58627e366b307acece693f93d37f96d0c610173533448ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.0 KB (689995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38730990aea20d7c777a0b4a9c9db0003a5a4403774b0cdbc4a70fc8d17b0ff0`

```dockerfile
```

-	Layers:
	-	`sha256:b3ece09f1993c3eaa6331a1e63c56519d448c9b7badedb0923f328be502217da`  
		Last Modified: Wed, 05 Aug 2026 16:00:21 GMT  
		Size: 681.8 KB (681788 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8515f56e5e7dac4c64172a6238a9500c3f9f121a7fa9da3451dcd93999fbc7f5`  
		Last Modified: Wed, 05 Aug 2026 16:00:21 GMT  
		Size: 8.2 KB (8207 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:c860f3ab9bd4da21b76e492ddc8aaa35a8dc9744a466b4c1f4cdaba4299bda5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (25033818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4747ac2ff02fce5d06b1e8f25b7ef79e56278b4e6bab0516169d9b17a081a61`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 21:51:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 21:51:46 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 21:51:46 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 21:51:46 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 21:51:46 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 21:51:46 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 21:54:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 21:54:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 21:54:50 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 16:01:20 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:01:20 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:01:20 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 16:01:20 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d06a43dfee5b89332ecae97abe05ee8e5e287c8096ba9f665f269f310a31ca`  
		Last Modified: Mon, 06 Jul 2026 21:54:57 GMT  
		Size: 409.7 KB (409660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64f7e787b13df61b8dc9e98cb74dab0825dad91ba200792a2770656d845ceb5`  
		Last Modified: Mon, 06 Jul 2026 21:54:57 GMT  
		Size: 15.7 MB (15737735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3816c7f2f4a03e7d04260a59c889835f5ab0921bf67221b985b084b294bae6f4`  
		Last Modified: Mon, 06 Jul 2026 21:54:56 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327b9382b7868f8a749ff74e3e1ba23cd4aeb7467e62f8bcab153b3b32b7ee49`  
		Last Modified: Wed, 05 Aug 2026 16:01:26 GMT  
		Size: 5.2 MB (5218187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:a937ec7c082ef1440564a59043e046e863432468974f60c79236585dc41a3cea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.4 KB (690428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3f4e61450f3ea2dadfb4de131beddb00bd40ba1a827abff61120c7cacabec5`

```dockerfile
```

-	Layers:
	-	`sha256:b85a4e2d07eed600a09fe90e3a8601a5ae8d3393e7798bd65e922814ffd59374`  
		Last Modified: Wed, 05 Aug 2026 16:01:26 GMT  
		Size: 682.4 KB (682357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c27511dc406e6f93e1ef852a7a0e789a65d9b99954629f0038604b6feb7202e0`  
		Last Modified: Wed, 05 Aug 2026 16:01:26 GMT  
		Size: 8.1 KB (8071 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:39ce7a58391db8dff6673c4aebac6b57b4d69a0bf5750c8f38b4211f0e1aef90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25756694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d353094a3485233b04cea72013ab266c4c3be24e0ed4660a60045ffe753326b4`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 22:35:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 22:35:35 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 22:35:35 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 22:35:35 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 22:35:35 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 22:35:35 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 23:23:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 23:23:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 23:23:34 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 20:11:14 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 20:11:14 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 20:11:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 20:11:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e9f05908087c3bb56923094942bf208f506829dd148e0ae8beb68bbfba23ad`  
		Last Modified: Mon, 06 Jul 2026 22:46:33 GMT  
		Size: 413.0 KB (412993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12395a4f7fa3b5edb54ce1e3eaa080d94a0de41892ea7d5ba1b4c612a5c6443d`  
		Last Modified: Mon, 06 Jul 2026 23:24:02 GMT  
		Size: 16.3 MB (16312693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d23927379cb64b2e87a3714ada5431d7a7916c0a8dfaee1add61c305bb4104a`  
		Last Modified: Mon, 06 Jul 2026 23:23:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed935ce90cb74512218c64bcfdb27a5025ebfc63d7a419fe056d8092b382e9c3`  
		Last Modified: Wed, 05 Aug 2026 20:11:25 GMT  
		Size: 5.2 MB (5218459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:b8e0fefdb416711ff38b2b45b4be80b3c3b71f97758bbd5efbe7deecf9a46050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.9 KB (689912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5aaa715b5767c2b5e93d9273e565068cad2cf0f772255e2f02067468b4143aa`

```dockerfile
```

-	Layers:
	-	`sha256:49d54b2797c9ec3ac642454dcd24be40404aefc716379b26023b74977f56c143`  
		Last Modified: Wed, 05 Aug 2026 20:11:25 GMT  
		Size: 681.8 KB (681765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55aeeac7fd8b18cfbc4900e0193ba61d606d549dc97ec099fcb034364d18a890`  
		Last Modified: Wed, 05 Aug 2026 20:11:25 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:5df7073391215cb75daaff3094bea76a48ab60e46b9750a9a9f60952980861ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24490735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ea5d98d3561f24058eb43eaf0f237eefa78ac18807c9a1f12b093fcec299d3`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 20:56:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 20:56:42 GMT
ENV LANG=C.UTF-8
# Tue, 07 Jul 2026 20:56:42 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 07 Jul 2026 20:56:42 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 07 Jul 2026 20:56:42 GMT
ENV PYTHON_VERSION=3.10.20
# Tue, 07 Jul 2026 20:56:42 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Wed, 08 Jul 2026 00:56:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Wed, 08 Jul 2026 00:56:04 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 08 Jul 2026 00:56:04 GMT
CMD ["python3"]
# Wed, 12 Aug 2026 23:54:02 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 23:54:02 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 23:54:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 12 Aug 2026 23:54:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4771f07f572fc2c6bce9b17064a0e51bd6a847eed3b1acabee58d683407e2ba3`  
		Last Modified: Tue, 07 Jul 2026 21:29:06 GMT  
		Size: 409.4 KB (409429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0884556385d354bb05e8de21c347852c063caad84affa172436bb750ed812435`  
		Last Modified: Wed, 08 Jul 2026 00:56:56 GMT  
		Size: 15.5 MB (15467964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411922b5b72b9a296389e59bb5c53964e2140410dab9ec6753ae9696736e7b6a`  
		Last Modified: Wed, 08 Jul 2026 00:56:54 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f18dc6eef0056250c2227d4c17ec112ed35bb6480099a714df66b790d35d313`  
		Last Modified: Wed, 12 Aug 2026 23:54:42 GMT  
		Size: 5.0 MB (5039851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:ef56f57f4ddaebacfa065d16d96b8195ef6d6b0fcb24e4db84f632b4ce5f689e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.9 KB (689908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d74386ac91bd76040e45111691b98b40b0ce78a9ff32451a4287b2f68fa72866`

```dockerfile
```

-	Layers:
	-	`sha256:5cc53bbd2ff37abdb8186b17c9fa8c9695e1505a711b0a18db82dc59eded0368`  
		Last Modified: Wed, 12 Aug 2026 23:54:42 GMT  
		Size: 681.8 KB (681761 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d856ae58ad72d5b1673b7d557a8d6a110c48e8efe0908c025c529a6d6af41925`  
		Last Modified: Wed, 12 Aug 2026 23:54:41 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.10-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:246c9269ca7f8ec96326d1014a6e3855914df40297ad3c1da07aa0acb27c0675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.2 MB (25211942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905866f956f324ba09d71f7f010059356b294da7d6e1519a22f6907509ee08af`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 22:05:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 06 Jul 2026 22:05:47 GMT
ENV LANG=C.UTF-8
# Mon, 06 Jul 2026 22:05:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 06 Jul 2026 22:05:47 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 06 Jul 2026 22:05:47 GMT
ENV PYTHON_VERSION=3.10.20
# Mon, 06 Jul 2026 22:05:47 GMT
ENV PYTHON_SHA256=de6517421601e39a9a3bc3e1bc4c7b2f239297423ee05e282598c83ec0647505
# Mon, 06 Jul 2026 22:10:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 06 Jul 2026 22:10:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 06 Jul 2026 22:10:26 GMT
CMD ["python3"]
# Wed, 05 Aug 2026 16:04:55 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:04:55 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:04:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 16:04:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c2f8bb79bfd017cfcba696f9ae1f84609bbcf24b273589effbd2bee68e1927`  
		Last Modified: Mon, 06 Jul 2026 22:10:37 GMT  
		Size: 410.3 KB (410283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87bbac356e72ca6795376505cb7e688cb80488afd85a7aad5d726f1e3e5f939`  
		Last Modified: Mon, 06 Jul 2026 22:10:37 GMT  
		Size: 15.9 MB (15875825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366974be59c04ba6aa4e1551d0ad6248d376dafbd82a904b43791e38c0ca5730`  
		Last Modified: Mon, 06 Jul 2026 22:10:37 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d362c54be4e82d824698922f7ef8f1c4e64f8c11685005ea4454e3fa96b06427`  
		Last Modified: Wed, 05 Aug 2026 16:05:13 GMT  
		Size: 5.2 MB (5218336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.10-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:20ccc9428779c0d4e951bcf440b3b56a0861e2f35e9d47cb31bcf0d2932bab27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.8 KB (689833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c67ca0a5297684769d54ac7f2f92c26181fa773e353afe870252c4b1ddae64`

```dockerfile
```

-	Layers:
	-	`sha256:cc5e18c30b7b973372b3f199a50e039c3957c48de653406edc1d66c7a2e72825`  
		Last Modified: Wed, 05 Aug 2026 16:05:13 GMT  
		Size: 681.7 KB (681731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d83a3f611e906a7c7f0adb425f4f46164b4d98aaca70236402c2b63cc68a117`  
		Last Modified: Wed, 05 Aug 2026 16:05:13 GMT  
		Size: 8.1 KB (8102 bytes)  
		MIME: application/vnd.in-toto+json
