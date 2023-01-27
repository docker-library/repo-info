## `hylang:python3.11-alpine3.17`

```console
$ docker pull hylang@sha256:727692890d85369c85ff4747e67de2b0570e3ce87079ef331ab43805734ecb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `hylang:python3.11-alpine3.17` - linux; amd64

```console
$ docker pull hylang@sha256:e0449c6ed373a8cfdeda5f9600c7750d06c629316d6267fd29b048157ce5e000
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (25999608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13c1ee3fab3be62251da159cbcd427abdc8f66f20ce3be817c1d64f69cf9dc1b`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:05:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 20:09:04 GMT
ENV LANG=C.UTF-8
# Mon, 09 Jan 2023 20:09:06 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	;
# Mon, 09 Jan 2023 20:25:21 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 09 Jan 2023 20:25:21 GMT
ENV PYTHON_VERSION=3.11.1
# Mon, 23 Jan 2023 22:06:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gnupg 		tar 		xz 				bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		patchelf 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		--with-lto 		--with-system-expat 		--without-ensurepip 	; 	nproc="$(nproc)"; 	make -j "$nproc" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 		LDFLAGS="-Wl,--strip-all" 	; 	make install; 		bin="$(readlink -vf /usr/local/bin/python3)"; 	patchelf --set-rpath '$ORIGIN/../lib' "$bin"; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		python3 --version
# Mon, 23 Jan 2023 22:06:07 GMT
RUN set -eux; 	for src in idle3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done
# Mon, 23 Jan 2023 22:06:07 GMT
ENV PYTHON_PIP_VERSION=22.3.1
# Mon, 23 Jan 2023 22:06:08 GMT
ENV PYTHON_SETUPTOOLS_VERSION=65.5.1
# Mon, 23 Jan 2023 22:06:08 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/66030fa03382b4914d4c4d0896961a0bdeeeb274/public/get-pip.py
# Mon, 23 Jan 2023 22:06:08 GMT
ENV PYTHON_GET_PIP_SHA256=1e501cf004eac1b7eb1f97266d28f995ae835d30250bec7f8850562703067dc6
# Mon, 23 Jan 2023 22:06:14 GMT
RUN set -eux; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum -c -; 		export PYTHONDONTWRITEBYTECODE=1; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 	; 	rm -f get-pip.py; 		pip --version
# Mon, 23 Jan 2023 22:06:15 GMT
CMD ["python3"]
# Tue, 24 Jan 2023 01:49:16 GMT
ENV HY_VERSION=0.25.0
# Tue, 24 Jan 2023 01:49:17 GMT
ENV HYRULE_VERSION=0.2.1
# Tue, 24 Jan 2023 01:49:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION"
# Tue, 24 Jan 2023 01:49:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd9832a787c7d68019488dcae52ce17e79f7cc4217fb549f6ff5c3fa1e10a93`  
		Last Modified: Mon, 09 Jan 2023 21:10:29 GMT  
		Size: 622.9 KB (622912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bd94263bbe1a13db9f5969b4e828c5195eff35a5faba47a144ebeef38199a6b`  
		Last Modified: Tue, 24 Jan 2023 01:27:41 GMT  
		Size: 12.9 MB (12870961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d26ab7708ebf1a788408d75d6c8ed819c70c5ba58e7ea1f0279045fd361501`  
		Last Modified: Tue, 24 Jan 2023 01:27:40 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606d64b2ff70d834d1921f9f69a502e16aafc21e266145269803f87a299ef087`  
		Last Modified: Tue, 24 Jan 2023 01:27:40 GMT  
		Size: 3.1 MB (3056511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e86f82225a6a309aa5a7f4e1744681409d7cc63b1891ca4bfcbca6ac5c71d1`  
		Last Modified: Tue, 24 Jan 2023 01:57:52 GMT  
		Size: 6.1 MB (6078366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.11-alpine3.17` - linux; arm variant v6

```console
$ docker pull hylang@sha256:87de7c7975e043b84e8dd7c901809f0261131071e336fe09fcfbe3ed215d25bf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25250547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8533e6e8030abbcdbeafaef59803693db3faf122046e75391386b48f7072cc82`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:17:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 21:17:56 GMT
ENV LANG=C.UTF-8
# Mon, 09 Jan 2023 21:17:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	;
# Mon, 09 Jan 2023 21:39:20 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 09 Jan 2023 21:39:21 GMT
ENV PYTHON_VERSION=3.11.1
# Mon, 23 Jan 2023 20:00:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gnupg 		tar 		xz 				bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		patchelf 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		--with-lto 		--with-system-expat 		--without-ensurepip 	; 	nproc="$(nproc)"; 	make -j "$nproc" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 		LDFLAGS="-Wl,--strip-all" 	; 	make install; 		bin="$(readlink -vf /usr/local/bin/python3)"; 	patchelf --set-rpath '$ORIGIN/../lib' "$bin"; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		python3 --version
# Mon, 23 Jan 2023 20:00:32 GMT
RUN set -eux; 	for src in idle3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done
# Mon, 23 Jan 2023 20:00:33 GMT
ENV PYTHON_PIP_VERSION=22.3.1
# Mon, 23 Jan 2023 20:00:33 GMT
ENV PYTHON_SETUPTOOLS_VERSION=65.5.1
# Mon, 23 Jan 2023 20:00:33 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/66030fa03382b4914d4c4d0896961a0bdeeeb274/public/get-pip.py
# Mon, 23 Jan 2023 20:00:34 GMT
ENV PYTHON_GET_PIP_SHA256=1e501cf004eac1b7eb1f97266d28f995ae835d30250bec7f8850562703067dc6
# Mon, 23 Jan 2023 20:00:42 GMT
RUN set -eux; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum -c -; 		export PYTHONDONTWRITEBYTECODE=1; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 	; 	rm -f get-pip.py; 		pip --version
# Mon, 23 Jan 2023 20:00:42 GMT
CMD ["python3"]
# Mon, 23 Jan 2023 22:06:01 GMT
ENV HY_VERSION=0.25.0
# Mon, 23 Jan 2023 22:06:01 GMT
ENV HYRULE_VERSION=0.2.1
# Mon, 23 Jan 2023 22:06:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION"
# Mon, 23 Jan 2023 22:06:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4990cb0f2adf15c2cae3e77a77051eba75e85c3c58c8d7ecd234ccbebb9e38b3`  
		Last Modified: Mon, 09 Jan 2023 22:38:33 GMT  
		Size: 625.0 KB (624955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913321d8138c3aa1c63bcfea58b96cecce2160930aec4982863f9d5d693d4020`  
		Last Modified: Mon, 23 Jan 2023 21:47:36 GMT  
		Size: 12.4 MB (12386243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d7fc01cb983131d20685b2fe73eba774c3b8f772454cc51e09ecb640a467541`  
		Last Modified: Mon, 23 Jan 2023 21:47:33 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d35497ba4f58214b7560f2ae2515bdc4087a25126b1e811444528a0e9d61dcb`  
		Last Modified: Mon, 23 Jan 2023 21:47:34 GMT  
		Size: 3.1 MB (3056253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09a059154299149e8a9651c30f58877f9693dca21351f7bf181066b61f89f4fd`  
		Last Modified: Mon, 23 Jan 2023 22:13:02 GMT  
		Size: 6.1 MB (6075623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.11-alpine3.17` - linux; arm variant v7

```console
$ docker pull hylang@sha256:f79e211e2e84443e07746547eb690a7db62991f45d5a3eae3166aa987a13e9a9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24586172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6bc9727ad5399359e7e2e73065bdf045a817d84c1f8ed538f232637256cdb9`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:33:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 23:33:02 GMT
ENV LANG=C.UTF-8
# Mon, 09 Jan 2023 23:33:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	;
# Mon, 09 Jan 2023 23:54:03 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 09 Jan 2023 23:54:04 GMT
ENV PYTHON_VERSION=3.11.1
# Mon, 23 Jan 2023 23:06:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gnupg 		tar 		xz 				bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		patchelf 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		--with-lto 		--with-system-expat 		--without-ensurepip 	; 	nproc="$(nproc)"; 	make -j "$nproc" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 		LDFLAGS="-Wl,--strip-all" 	; 	make install; 		bin="$(readlink -vf /usr/local/bin/python3)"; 	patchelf --set-rpath '$ORIGIN/../lib' "$bin"; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		python3 --version
# Mon, 23 Jan 2023 23:06:56 GMT
RUN set -eux; 	for src in idle3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done
# Mon, 23 Jan 2023 23:06:56 GMT
ENV PYTHON_PIP_VERSION=22.3.1
# Mon, 23 Jan 2023 23:06:57 GMT
ENV PYTHON_SETUPTOOLS_VERSION=65.5.1
# Mon, 23 Jan 2023 23:06:57 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/66030fa03382b4914d4c4d0896961a0bdeeeb274/public/get-pip.py
# Mon, 23 Jan 2023 23:06:57 GMT
ENV PYTHON_GET_PIP_SHA256=1e501cf004eac1b7eb1f97266d28f995ae835d30250bec7f8850562703067dc6
# Mon, 23 Jan 2023 23:07:04 GMT
RUN set -eux; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum -c -; 		export PYTHONDONTWRITEBYTECODE=1; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 	; 	rm -f get-pip.py; 		pip --version
# Mon, 23 Jan 2023 23:07:04 GMT
CMD ["python3"]
# Tue, 24 Jan 2023 03:48:47 GMT
ENV HY_VERSION=0.25.0
# Tue, 24 Jan 2023 03:48:47 GMT
ENV HYRULE_VERSION=0.2.1
# Tue, 24 Jan 2023 03:49:01 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION"
# Tue, 24 Jan 2023 03:49:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195bafe2485bbd04fb274d28ba1a61517e45d8f137b6f88b96705db2ccdd1982`  
		Last Modified: Tue, 10 Jan 2023 00:53:21 GMT  
		Size: 623.9 KB (623891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba3e5b6bb7f704ce3c47fb618e862e30c01a5786de68eaecdde50a2c968c5a8`  
		Last Modified: Tue, 24 Jan 2023 03:24:59 GMT  
		Size: 12.0 MB (11965022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a6ae3480fd1e1b45a2d7fdec3f057edc18e891c3677cb6d827cb59117a78d2`  
		Last Modified: Tue, 24 Jan 2023 03:24:57 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbbcd27aa238ccc67ad2635bd059586fd53d74fe94224d374b3a49c532a0fabf`  
		Last Modified: Tue, 24 Jan 2023 03:24:58 GMT  
		Size: 3.1 MB (3056257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:435edcd8e727a814f73132e2c05f556432b1a800f8a922c18f8d2a5b7558dca9`  
		Last Modified: Tue, 24 Jan 2023 04:01:45 GMT  
		Size: 6.1 MB (6075563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.11-alpine3.17` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:cf01f1d1474dc5732e0bf6c6385f53ca081207eb2573e063bb6a916720ab00cf
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25819085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:305a4c508f71c456863c51affc3b097159488d2cfd8f3429d4a2776172585f93`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 17:50:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 20:45:02 GMT
ENV LANG=C.UTF-8
# Mon, 09 Jan 2023 20:45:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	;
# Mon, 09 Jan 2023 21:00:18 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 09 Jan 2023 21:00:18 GMT
ENV PYTHON_VERSION=3.11.1
# Mon, 23 Jan 2023 22:26:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gnupg 		tar 		xz 				bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		patchelf 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		--with-lto 		--with-system-expat 		--without-ensurepip 	; 	nproc="$(nproc)"; 	make -j "$nproc" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 		LDFLAGS="-Wl,--strip-all" 	; 	make install; 		bin="$(readlink -vf /usr/local/bin/python3)"; 	patchelf --set-rpath '$ORIGIN/../lib' "$bin"; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		python3 --version
# Mon, 23 Jan 2023 22:26:06 GMT
RUN set -eux; 	for src in idle3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done
# Mon, 23 Jan 2023 22:26:06 GMT
ENV PYTHON_PIP_VERSION=22.3.1
# Mon, 23 Jan 2023 22:26:06 GMT
ENV PYTHON_SETUPTOOLS_VERSION=65.5.1
# Mon, 23 Jan 2023 22:26:06 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/66030fa03382b4914d4c4d0896961a0bdeeeb274/public/get-pip.py
# Mon, 23 Jan 2023 22:26:06 GMT
ENV PYTHON_GET_PIP_SHA256=1e501cf004eac1b7eb1f97266d28f995ae835d30250bec7f8850562703067dc6
# Mon, 23 Jan 2023 22:26:11 GMT
RUN set -eux; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum -c -; 		export PYTHONDONTWRITEBYTECODE=1; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 	; 	rm -f get-pip.py; 		pip --version
# Mon, 23 Jan 2023 22:26:12 GMT
CMD ["python3"]
# Tue, 24 Jan 2023 01:40:40 GMT
ENV HY_VERSION=0.25.0
# Tue, 24 Jan 2023 01:40:40 GMT
ENV HYRULE_VERSION=0.2.1
# Tue, 24 Jan 2023 01:40:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION"
# Tue, 24 Jan 2023 01:40:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d462052b8b5e4c3d6738809617086300ae4bfc3b4e9076ecc08184d4db3dadc1`  
		Last Modified: Mon, 09 Jan 2023 21:41:02 GMT  
		Size: 624.9 KB (624879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d39a1ce7ce55878832637311b702029ea35e2a0d3a16a81d9e8ffe52bed39fdf`  
		Last Modified: Tue, 24 Jan 2023 01:19:25 GMT  
		Size: 12.8 MB (12799934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716a594288ba3cf49a20186aaf3a264916a02606c109188d306d799e8e9ced77`  
		Last Modified: Tue, 24 Jan 2023 01:19:23 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711e9c1e0bb145d5efce8ded84360a8fbb245737039849fd51f55c245a978291`  
		Last Modified: Tue, 24 Jan 2023 01:19:24 GMT  
		Size: 3.1 MB (3056436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76956a5faffaabc6f699744901dedbe7dad2f716755f525361452195fc5da7ca`  
		Last Modified: Tue, 24 Jan 2023 01:48:38 GMT  
		Size: 6.1 MB (6078365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.11-alpine3.17` - linux; 386

```console
$ docker pull hylang@sha256:0c56c727ee9edfd4b203a0ae28a95a2abc8b300c9e3e42d9f72aa7b185d88565
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26272838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf94735043fa5d37db787e8dad1ff901569d0e1c984c6e441680fe1a2f440b3`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:00 GMT
ADD file:d03619a0ef81726c34189e849b80cc92da908eb36e116f28275d5765e6d0919a in / 
# Mon, 09 Jan 2023 17:05:00 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:31:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 19:31:10 GMT
ENV LANG=C.UTF-8
# Mon, 09 Jan 2023 19:31:12 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	;
# Mon, 09 Jan 2023 19:47:44 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 09 Jan 2023 19:47:45 GMT
ENV PYTHON_VERSION=3.11.1
# Mon, 23 Jan 2023 23:24:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gnupg 		tar 		xz 				bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		patchelf 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		--with-lto 		--with-system-expat 		--without-ensurepip 	; 	nproc="$(nproc)"; 	make -j "$nproc" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 		LDFLAGS="-Wl,--strip-all" 	; 	make install; 		bin="$(readlink -vf /usr/local/bin/python3)"; 	patchelf --set-rpath '$ORIGIN/../lib' "$bin"; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		python3 --version
# Mon, 23 Jan 2023 23:24:21 GMT
RUN set -eux; 	for src in idle3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done
# Mon, 23 Jan 2023 23:24:22 GMT
ENV PYTHON_PIP_VERSION=22.3.1
# Mon, 23 Jan 2023 23:24:23 GMT
ENV PYTHON_SETUPTOOLS_VERSION=65.5.1
# Mon, 23 Jan 2023 23:24:24 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/66030fa03382b4914d4c4d0896961a0bdeeeb274/public/get-pip.py
# Mon, 23 Jan 2023 23:24:25 GMT
ENV PYTHON_GET_PIP_SHA256=1e501cf004eac1b7eb1f97266d28f995ae835d30250bec7f8850562703067dc6
# Mon, 23 Jan 2023 23:24:33 GMT
RUN set -eux; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum -c -; 		export PYTHONDONTWRITEBYTECODE=1; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 	; 	rm -f get-pip.py; 		pip --version
# Mon, 23 Jan 2023 23:24:33 GMT
CMD ["python3"]
# Tue, 24 Jan 2023 03:38:51 GMT
ENV HY_VERSION=0.25.0
# Tue, 24 Jan 2023 03:38:51 GMT
ENV HYRULE_VERSION=0.2.1
# Tue, 24 Jan 2023 03:39:07 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION"
# Tue, 24 Jan 2023 03:39:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:40e5b0b2e2bde18974628cadecd8a2f190f45f06c32846c16885d69b2908bf68`  
		Last Modified: Mon, 09 Jan 2023 17:05:42 GMT  
		Size: 3.4 MB (3408318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454ecf8c7d5e185512ac438ffdd8de6c53fff4c02dd3817718de8e02e1dddd3b`  
		Last Modified: Mon, 09 Jan 2023 20:38:24 GMT  
		Size: 623.2 KB (623159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430d393bd29558d5480d27c34bcea001fbb895a4aafa07cc76ad36c00a28c273`  
		Last Modified: Tue, 24 Jan 2023 03:15:50 GMT  
		Size: 13.1 MB (13111368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce957b51d9b1cdd7d69029f59f05232b6e6224ea99244a4b0bc71620edc2e40`  
		Last Modified: Tue, 24 Jan 2023 03:15:48 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1ecb4b16fb6d264ce896eb272643fd8ce00e3f213650dcac0785c04ed7a0452`  
		Last Modified: Tue, 24 Jan 2023 03:15:49 GMT  
		Size: 3.1 MB (3054219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd3de1bd5536f0c88bd89f6473dd60491662d08de3987eb34a4d1219afaa90b`  
		Last Modified: Tue, 24 Jan 2023 03:52:52 GMT  
		Size: 6.1 MB (6075543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.11-alpine3.17` - linux; ppc64le

```console
$ docker pull hylang@sha256:39ed972c173914ce203efa532e6ac5141035c7cd7677e6ef00da919fef3a4d83
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.5 MB (26457057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91fb7ba0c63bb0519726a2d77695a0e814ad43eed89d9b1ac43d8880fd41aaae`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:13 GMT
ADD file:9a1d27fdc0c915f387f2446c85193d5215b18020b313114f0bf2799efcc1baae in / 
# Mon, 09 Jan 2023 17:05:13 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:25:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 19:25:43 GMT
ENV LANG=C.UTF-8
# Mon, 09 Jan 2023 19:25:46 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	;
# Mon, 09 Jan 2023 19:55:53 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 09 Jan 2023 19:55:53 GMT
ENV PYTHON_VERSION=3.11.1
# Tue, 24 Jan 2023 00:05:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gnupg 		tar 		xz 				bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		patchelf 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		--with-lto 		--with-system-expat 		--without-ensurepip 	; 	nproc="$(nproc)"; 	make -j "$nproc" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 		LDFLAGS="-Wl,--strip-all" 	; 	make install; 		bin="$(readlink -vf /usr/local/bin/python3)"; 	patchelf --set-rpath '$ORIGIN/../lib' "$bin"; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		python3 --version
# Tue, 24 Jan 2023 00:05:10 GMT
RUN set -eux; 	for src in idle3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done
# Tue, 24 Jan 2023 00:05:10 GMT
ENV PYTHON_PIP_VERSION=22.3.1
# Tue, 24 Jan 2023 00:05:11 GMT
ENV PYTHON_SETUPTOOLS_VERSION=65.5.1
# Tue, 24 Jan 2023 00:05:11 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/66030fa03382b4914d4c4d0896961a0bdeeeb274/public/get-pip.py
# Tue, 24 Jan 2023 00:05:11 GMT
ENV PYTHON_GET_PIP_SHA256=1e501cf004eac1b7eb1f97266d28f995ae835d30250bec7f8850562703067dc6
# Tue, 24 Jan 2023 00:05:22 GMT
RUN set -eux; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum -c -; 		export PYTHONDONTWRITEBYTECODE=1; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 	; 	rm -f get-pip.py; 		pip --version
# Tue, 24 Jan 2023 00:05:23 GMT
CMD ["python3"]
# Tue, 24 Jan 2023 06:07:52 GMT
ENV HY_VERSION=0.25.0
# Tue, 24 Jan 2023 06:07:52 GMT
ENV HYRULE_VERSION=0.2.1
# Tue, 24 Jan 2023 06:08:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION"
# Tue, 24 Jan 2023 06:08:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f45bfda3aa14e255d9eb4c9a108eb3d8c6721946b4aa2e5808e5092242344a1c`  
		Last Modified: Mon, 09 Jan 2023 17:05:56 GMT  
		Size: 3.4 MB (3384562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a4d526866c146251b1a2e4acc532b16a45ff28a367f28d7732f7732373b655`  
		Last Modified: Mon, 09 Jan 2023 21:19:11 GMT  
		Size: 625.3 KB (625272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf676b25d1e05f4419bde9b1d5ed83cc35be1d88c9bd1454b8784a6c0caad9a8`  
		Last Modified: Tue, 24 Jan 2023 05:30:41 GMT  
		Size: 13.3 MB (13312015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f87438ea7e9ecdeee64f86118280bfca5514dfccd2335d175b3c0736f0048e`  
		Last Modified: Tue, 24 Jan 2023 05:30:38 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5a4765ee93c99de1418fd9aa2175db7886f696241c50af1327792d96e0aeb0`  
		Last Modified: Tue, 24 Jan 2023 05:30:39 GMT  
		Size: 3.1 MB (3056451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6435fe6a11f3e9d5b5b976fba63f4d74876c10870be571b1f2a963455ae979f0`  
		Last Modified: Tue, 24 Jan 2023 06:21:13 GMT  
		Size: 6.1 MB (6078528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.11-alpine3.17` - linux; s390x

```console
$ docker pull hylang@sha256:7c987754b5d7fac09a5706b90af779d76021a982b06247561c9ebf090a1c09e6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25759976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa64e0a42204ecc9e37c7ea9010022ea807f00487cc205ffbd37aabe8fcc188`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:44 GMT
ADD file:eabe7c3c368e65478b53ac35c1daf3b703f2bca4ecdab2d080a65e8b981d7d4a in / 
# Mon, 09 Jan 2023 17:05:46 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:26:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Jan 2023 23:26:45 GMT
ENV LANG=C.UTF-8
# Mon, 09 Jan 2023 23:26:48 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	;
# Mon, 09 Jan 2023 23:47:07 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 09 Jan 2023 23:47:07 GMT
ENV PYTHON_VERSION=3.11.1
# Mon, 23 Jan 2023 21:15:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		gnupg 		tar 		xz 				bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		patchelf 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		--with-lto 		--with-system-expat 		--without-ensurepip 	; 	nproc="$(nproc)"; 	make -j "$nproc" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 		LDFLAGS="-Wl,--strip-all" 	; 	make install; 		bin="$(readlink -vf /usr/local/bin/python3)"; 	patchelf --set-rpath '$ORIGIN/../lib' "$bin"; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		python3 --version
# Mon, 23 Jan 2023 21:15:38 GMT
RUN set -eux; 	for src in idle3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done
# Mon, 23 Jan 2023 21:15:38 GMT
ENV PYTHON_PIP_VERSION=22.3.1
# Mon, 23 Jan 2023 21:15:38 GMT
ENV PYTHON_SETUPTOOLS_VERSION=65.5.1
# Mon, 23 Jan 2023 21:15:38 GMT
ENV PYTHON_GET_PIP_URL=https://github.com/pypa/get-pip/raw/66030fa03382b4914d4c4d0896961a0bdeeeb274/public/get-pip.py
# Mon, 23 Jan 2023 21:15:38 GMT
ENV PYTHON_GET_PIP_SHA256=1e501cf004eac1b7eb1f97266d28f995ae835d30250bec7f8850562703067dc6
# Mon, 23 Jan 2023 21:15:44 GMT
RUN set -eux; 		wget -O get-pip.py "$PYTHON_GET_PIP_URL"; 	echo "$PYTHON_GET_PIP_SHA256 *get-pip.py" | sha256sum -c -; 		export PYTHONDONTWRITEBYTECODE=1; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		"pip==$PYTHON_PIP_VERSION" 		"setuptools==$PYTHON_SETUPTOOLS_VERSION" 	; 	rm -f get-pip.py; 		pip --version
# Mon, 23 Jan 2023 21:15:44 GMT
CMD ["python3"]
# Mon, 23 Jan 2023 23:34:14 GMT
ENV HY_VERSION=0.25.0
# Mon, 23 Jan 2023 23:34:14 GMT
ENV HYRULE_VERSION=0.2.1
# Mon, 23 Jan 2023 23:34:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION"
# Mon, 23 Jan 2023 23:34:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ae982806674c51a962c0fdd6e19f464ebd673df529c5cfb7c1d049e0b618d384`  
		Last Modified: Mon, 09 Jan 2023 17:06:50 GMT  
		Size: 3.2 MB (3170744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a6acf5c56be5c3721cd05ad50683db0ec17f48fc7ada071d7007f6c109b5bb1`  
		Last Modified: Tue, 10 Jan 2023 00:56:26 GMT  
		Size: 623.2 KB (623214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938a67bc1861d5d718c2b9f41e86e357441342df6cf029597e15bda11d6cb0e4`  
		Last Modified: Mon, 23 Jan 2023 23:15:11 GMT  
		Size: 12.8 MB (12830824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079cece0cb914804c5dd2361f310cdfb1b5272e2fda82dd5956f0dc29e202771`  
		Last Modified: Mon, 23 Jan 2023 23:15:09 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4776a71b4cc4c2c1a35209951e4cb9b2d41de231f3a7f540d0a8bb9534f853a7`  
		Last Modified: Mon, 23 Jan 2023 23:15:10 GMT  
		Size: 3.1 MB (3056500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdad7c55afa4efc1631fd6a0aa5ba470ba1a6b48fec2d8a013527b4445b3728e`  
		Last Modified: Mon, 23 Jan 2023 23:43:23 GMT  
		Size: 6.1 MB (6078462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
