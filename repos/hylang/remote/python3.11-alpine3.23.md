## `hylang:python3.11-alpine3.23`

```console
$ docker pull hylang@sha256:b09931fed7e381c11ddecc3dfc206abc8dcf7beeec110c184c8db5d3f7521aa7
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

### `hylang:python3.11-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:99f82ce015b21345983d7c29936522b944870c783594a3f329c191f58718a415
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27332996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:330ad889ee8890b1e20964417daa77d2bc0ee6f4c57e90e0596f621542f1d424`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:41:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:41:53 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:41:53 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:41:53 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 26 Oct 2026 22:41:53 GMT
ENV PYTHON_VERSION=3.11.18
# Mon, 26 Oct 2026 22:41:53 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Mon, 26 Oct 2026 22:57:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:57:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:57:18 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:50:12 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:50:12 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:50:12 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:50:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c80a865bc26af03accf654209d32d074b60e5197f31273896bb20326a8921d`  
		Last Modified: Mon, 26 Oct 2026 22:47:23 GMT  
		Size: 412.0 KB (411997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad109a68d5e72a281f2d9325c76982763d79c035711d5dd6f19c97c31909282`  
		Last Modified: Mon, 26 Oct 2026 22:57:25 GMT  
		Size: 16.1 MB (16135113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe83348d09f4ad5416df9c492623957e46b8e6859edbfadc6152fde42b02176`  
		Last Modified: Mon, 26 Oct 2026 22:57:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c49e5199bf87bf6af3252eed199c144f9bc76c4c45f1a254a6d3b43308b7e9`  
		Last Modified: Mon, 26 Oct 2026 23:50:19 GMT  
		Size: 6.9 MB (6933410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:456970672cae54072186816dc6ba0e9f3156c5bee11c08e492813e97a28a2d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.8 KB (689801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae25444431f7df060fac924cfeb5d45a5e1d4b21708696bc9db3142afe78eb3a`

```dockerfile
```

-	Layers:
	-	`sha256:622e47096b33f49fb720b0fb9c0dce6c1b4f21b451be8d4e2644f73e6175abd5`  
		Last Modified: Mon, 26 Oct 2026 23:50:19 GMT  
		Size: 681.7 KB (681698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d57000e3d99f4df938c9f3fb55e2ab94c3059abdd2b360e2eb0cb12a844d0290`  
		Last Modified: Mon, 26 Oct 2026 23:50:19 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:e9c4fcd51bf65d415f69efda0bcc1bf28988f4a3b864658bc65984d0e7284c7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26596925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b4b568f265a31eb5d1269461df23cf647cf38bc1b3a08c270c22bbe3ad12e64`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:58:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:58:57 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:58:57 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:58:57 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 26 Oct 2026 22:58:57 GMT
ENV PYTHON_VERSION=3.11.18
# Mon, 26 Oct 2026 22:58:57 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Mon, 26 Oct 2026 23:06:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:06:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:06:06 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:43:21 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:43:21 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:43:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:43:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efeeb794f48bb71d3ef7f665cb0955d55bbbcaa37119d580db7ad8520f89b92`  
		Last Modified: Mon, 26 Oct 2026 23:06:11 GMT  
		Size: 413.7 KB (413733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61cc43883e7e5082d54d5ad5f8fd87ea5fab3f4c2e5e5b5a686c275cd8d2c03a`  
		Last Modified: Mon, 26 Oct 2026 23:06:12 GMT  
		Size: 15.7 MB (15691270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:189ca232c3bb4ee19b84796ae32b528b0b4b542358674c928cad8f1f7919808e`  
		Last Modified: Mon, 26 Oct 2026 23:06:11 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54bf32ff828b3a257ef71ce0ed9366d6ef5d4a517a6b50b1114407934e19da91`  
		Last Modified: Mon, 26 Oct 2026 23:43:26 GMT  
		Size: 6.9 MB (6933485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:36ef156bd9126e8ab4306de0255acdaaf22d94ba34ab63b73d9718ad6b8da0e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22db64f309d899000dcafafb157ead467293bed8f359e9ecb558e6838f6741bd`

```dockerfile
```

-	Layers:
	-	`sha256:825e139da24be608d09cafc9cfc09f3dda21713f362e2e6e81440efcf3368429`  
		Last Modified: Mon, 26 Oct 2026 23:43:25 GMT  
		Size: 8.0 KB (7967 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:3ef7b697bc5e1ad88fa9811831d90677a158f8461a8e4db9538604692d6f947c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25888661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9cb8d2fc37776a0d0f3eba12fe9d7f19c5e206e9366a6aa447cf8f957af4839`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 23:32:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:32:58 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:32:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 23:32:58 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 26 Oct 2026 23:32:58 GMT
ENV PYTHON_VERSION=3.11.18
# Mon, 26 Oct 2026 23:32:58 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Mon, 26 Oct 2026 23:39:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:39:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:39:55 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:22:27 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:22:27 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:22:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:22:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cee402adc457f4a3a81f69b4b6b501e91457022be941621d0269a71945f578c`  
		Last Modified: Mon, 26 Oct 2026 23:40:02 GMT  
		Size: 412.4 KB (412385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d8190ab09309cf60ac574dd508ef4852a0c9c2bbb8c3abdc7927d24c1d3279`  
		Last Modified: Mon, 26 Oct 2026 23:40:02 GMT  
		Size: 15.3 MB (15275500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7175c7fa74c2b0e848f1932c2754e8099d5cdd1bdc44b62c6d7a5cddbd500384`  
		Last Modified: Mon, 26 Oct 2026 23:40:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00139074caea020197bdba970c9f3d95c95d1c726c2db8105dfdfab73fe3f88`  
		Last Modified: Tue, 27 Oct 2026 00:22:33 GMT  
		Size: 6.9 MB (6933488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:b12f673f02347d268eff54a1939d17c714fffa03a5f9b492c4e401a250530921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 KB (692256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2933c7070208c16c18652301ebaf5fbf3755424e6cefe078ca1e66729adb2a72`

```dockerfile
```

-	Layers:
	-	`sha256:dfbb3bc37fdc0a1ddf681e862592972bb65cabca80c5cf06862e288f5b92cc13`  
		Last Modified: Tue, 27 Oct 2026 00:22:33 GMT  
		Size: 684.1 KB (684074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcb03f3e7fcfdda314ecf23630fc65c17a13d9be91fe90479ef2dbebbca66e3c`  
		Last Modified: Tue, 27 Oct 2026 00:22:33 GMT  
		Size: 8.2 KB (8182 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:e1f130b94ec20d5cf3a22aadbc70fb9238860e77e7229acb696c5871c310a2ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27844217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a64d920f3a09e9e6f7e04036cff95559ed205ff0cb5700282d768fda8da1a613`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:57:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:57:15 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:57:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:57:15 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 26 Oct 2026 22:57:15 GMT
ENV PYTHON_VERSION=3.11.18
# Mon, 26 Oct 2026 22:57:15 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Mon, 26 Oct 2026 23:04:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:04:03 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:04:03 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:53:57 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:53:57 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:53:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:53:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc41e328c9d4c212b0709f052d269a417c038f2cd9ff53e94766dadf4bdb3dec`  
		Last Modified: Mon, 26 Oct 2026 23:04:10 GMT  
		Size: 415.6 KB (415578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f91147a354e2b98beb67450aa5e98563c4b672d8b2759f0cb41f90a9c0f56f15`  
		Last Modified: Mon, 26 Oct 2026 23:04:11 GMT  
		Size: 16.3 MB (16305354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a04dd27b0e59df3a654d51ad0137fb4fb1c67003df0a866575d398b77a3ede`  
		Last Modified: Mon, 26 Oct 2026 23:04:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a54c6adf1b9dcbc21629d9f0e3cf45273fa734db8825004f02f77b0230026d`  
		Last Modified: Mon, 26 Oct 2026 23:54:04 GMT  
		Size: 6.9 MB (6933543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:cad8f6fda962fc9a7eb20b7938e03f3a1c2cd536aa58cfa9fce89c6230440c98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.3 KB (689311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172c1aee5c402fe92edc1c1a3ca5826bd58a6cdfc1fda460102df83ab420d9e0`

```dockerfile
```

-	Layers:
	-	`sha256:e71099f7eb049d3d28d87960c55f5f14d30bb0c25867bf60052dbcde6ac04053`  
		Last Modified: Mon, 26 Oct 2026 23:54:04 GMT  
		Size: 681.1 KB (681104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ceee78c13ffce3285523dd71d4895fa77f9dbcd72b368b4ea24a7031b0c93de7`  
		Last Modified: Mon, 26 Oct 2026 23:54:04 GMT  
		Size: 8.2 KB (8207 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:c4be52dd273898c1579ff4054d41db850cbb2881313292c4794fff7d855f134e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27361817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b933343d446880117b10f77b8270338102353bfcf5e294e6d7d4b4efd466521e`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:15:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:01 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 21:15:01 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 21 Oct 2026 21:15:01 GMT
ENV PYTHON_VERSION=3.11.17
# Wed, 21 Oct 2026 21:15:01 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Wed, 21 Oct 2026 21:20:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 21:20:16 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 21:20:16 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 21:40:36 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 21:40:36 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 21:40:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 21:40:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e4db116eaba3ce3370af7ba343de0f51590769deb93f372ac65a27869e599e`  
		Last Modified: Wed, 21 Oct 2026 21:20:22 GMT  
		Size: 412.8 KB (412795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b88eaa383ac0755923562a6ec0c3f0c5c629ce5d43972d80649cea979cb15094`  
		Last Modified: Wed, 21 Oct 2026 21:20:23 GMT  
		Size: 16.3 MB (16338476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8199ecb960c67ae681d935cbb38b6a62c31970061e818d18ebe6aa5c46e410f`  
		Last Modified: Wed, 21 Oct 2026 21:20:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b82eb507a0398ca270853f43ac3915de4e7a366bf24e22620e3df711b92c67a`  
		Last Modified: Wed, 21 Oct 2026 21:40:42 GMT  
		Size: 6.9 MB (6932992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:de285ff94aadd32362706a7f435b9426bbd6302130b8de71bac12c6316c16a65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.7 KB (689744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09777a3346b3fc7e7d2d156f2a117b0a68d5f292d48527144bd7ad388fd0f320`

```dockerfile
```

-	Layers:
	-	`sha256:2feaa5787723f6cf0c39334e1b2e71f86b8e12787a0fc6a5cc51e713eb25e9ad`  
		Last Modified: Wed, 21 Oct 2026 21:40:42 GMT  
		Size: 681.7 KB (681673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:714888205504d2f184be3e65e758212bfdf2f30c3c6fafa0fd5e4479229678d4`  
		Last Modified: Wed, 21 Oct 2026 21:40:41 GMT  
		Size: 8.1 KB (8071 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:b2a7e04f4d0ea3b753ed8bedd21a82d7a2fa063990480f51cbe45ce48e969b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28106671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d2616ec937c34de08ec2bfd6464f39c3c007f418e7fd3ad81c11523363bbcf2`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 14:19:35 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 14:19:35 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 22 Oct 2026 14:19:35 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PYTHON_VERSION=3.11.17
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Thu, 22 Oct 2026 14:45:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 14:45:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 14:45:34 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 18:32:55 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 18:32:55 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 18:32:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 18:32:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2c67e0eac017dbd155198f7fe853d421fdd650682fb195256bb31ceff2b94b9`  
		Last Modified: Thu, 22 Oct 2026 14:32:14 GMT  
		Size: 416.1 KB (416069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27e9756e069c4b89a8ab3c0cbe3cc537491f33b33fd902d99784c1ecec111006`  
		Last Modified: Thu, 22 Oct 2026 14:45:50 GMT  
		Size: 16.9 MB (16938761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b485d9930cf3330abc1558249f4d984cd74242ba3b5b4b6ff8a3751cc03e885`  
		Last Modified: Thu, 22 Oct 2026 14:45:50 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada9b5ca3c3734a4223177aeb1e6d5e0fc3834ed5e31355362926c10447f1a55`  
		Last Modified: Thu, 22 Oct 2026 18:33:11 GMT  
		Size: 6.9 MB (6933214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:311e3c0dd229267d94899e5975c7ee82c16488f078205851b102c32ad4c021c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.2 KB (689228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b55290538ae6018f19b6c65b09e0215fb025ceaabd39b2b06564c78fbcad847`

```dockerfile
```

-	Layers:
	-	`sha256:c3a519035894175eca70bcaf7973530cd97bf0546533269ea45ebaa6d4172c6a`  
		Last Modified: Thu, 22 Oct 2026 18:33:11 GMT  
		Size: 681.1 KB (681081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aeb5ba90ea31a4a65471ced215f17693792d665224878878ac62d374398fd54`  
		Last Modified: Thu, 22 Oct 2026 18:33:11 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:8d2308286df52cf35d57270142ec28e4a4eecc73fdf83920661d6fa1fde00425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29142125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ed4a0ff82daf09e8894f8a1b02d3e888b9f0fab35c32290bb96db4b69b4d8ce`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Mon, 21 Sep 2026 19:27:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 21 Sep 2026 19:27:15 GMT
ENV LANG=C.UTF-8
# Mon, 21 Sep 2026 19:27:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 21 Sep 2026 19:27:15 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 21 Sep 2026 19:27:15 GMT
ENV PYTHON_VERSION=3.11.17
# Mon, 21 Sep 2026 19:27:15 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Mon, 05 Oct 2026 18:28:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 05 Oct 2026 18:28:24 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 05 Oct 2026 18:28:24 GMT
CMD ["python3"]
# Tue, 06 Oct 2026 03:59:09 GMT
ENV HY_VERSION=1.3.1
# Tue, 06 Oct 2026 03:59:09 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 06 Oct 2026 03:59:09 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 06 Oct 2026 03:59:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8724b641dedfa80250a72a9489c1b0c8a378027f2b9f94e3824010538939a70b`  
		Last Modified: Mon, 21 Sep 2026 20:03:36 GMT  
		Size: 416.7 KB (416739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b956f63d0dcad04ce35c7e723ebe89cdf586cf12e20149daf6ce0fbcf22ff6b9`  
		Last Modified: Mon, 05 Oct 2026 18:29:32 GMT  
		Size: 18.3 MB (18273774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d759538e33b065029679d94fdeb7899c901463f78e734324b040dcfff57f7b`  
		Last Modified: Mon, 05 Oct 2026 18:29:29 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ae2bade08771b8c48504f03d001e642416c31d4eff0ad9b700beaea0c24b69`  
		Last Modified: Tue, 06 Oct 2026 04:00:04 GMT  
		Size: 6.9 MB (6875040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:18414b8918f2feca749adb8480ff23eb91fe61375d8b9f9b15fd9101b4cbfc95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bdd36808cb1cb1b5a80bf85c65d3bece9b31107b5bbd171b3adcba7022f7c9c`

```dockerfile
```

-	Layers:
	-	`sha256:384cd11bd83eafbb7a3bb4bde863bd395532bb0b85191a7110041cd851750817`  
		Last Modified: Tue, 06 Oct 2026 04:00:02 GMT  
		Size: 683.0 KB (683014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94ac6aaa6b0afe5f3a07894f54701b4466bbf62c839e632962b38bd43bfac119`  
		Last Modified: Tue, 06 Oct 2026 04:00:02 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:5d1830b68f20ebf5900ee7fb9b6c9c20366b0082c504a572e9dc5fff0bcb90af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27634959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685084b20d3baddcab5dbabfa5ad06b253b6f67f3e301aa1b0e33f82940cbabd`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:47:22 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:47:22 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 21:47:22 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PYTHON_VERSION=3.11.17
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PYTHON_SHA256=bfb74ad39efae27cda510f134ab408e00f9992c56851cfc0b1cdb5646da11599
# Wed, 21 Oct 2026 21:54:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 21:54:36 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 21:54:36 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 23:11:15 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 23:11:15 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 23:11:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 23:11:15 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f462866f0d48d21fd0e3ff1f6a6640c06b072e70712cb43208bcc522bd40dd`  
		Last Modified: Wed, 21 Oct 2026 21:54:50 GMT  
		Size: 413.4 KB (413413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2baa56648c48811c6b7dd0dbc69ace1d434482d0aa8e85ab8151fbf060e6cf`  
		Last Modified: Wed, 21 Oct 2026 21:54:52 GMT  
		Size: 16.6 MB (16571134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11279f70980f9a1d8f71e93c6e0cde97f07372db1bf9e8a85da3473a08fdd0e8`  
		Last Modified: Wed, 21 Oct 2026 21:54:50 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4228aa02a9434e4370eff69d6c6c0838b46f95289c857d5dca5a04425880be`  
		Last Modified: Wed, 21 Oct 2026 23:11:25 GMT  
		Size: 6.9 MB (6933042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:d1f9934f9db392b74caf3ad3b107bd40c95dd7a3d8802c359a8f2c3659b2d482
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.1 KB (689150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b2fdd165beb009c6e5178cd36d48f8d1c2d4b1d4cfbf7d911b99fb492a2f4dd`

```dockerfile
```

-	Layers:
	-	`sha256:9bb583d1e6023eaba3015b416d0c0160c37c5243df13e9343d38d140302fb1a1`  
		Last Modified: Wed, 21 Oct 2026 23:11:25 GMT  
		Size: 681.0 KB (681047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97a4e834d30ef771cfa04afc397ec2a5fe7735b2ad1be47982aed5bee7562ba5`  
		Last Modified: Wed, 21 Oct 2026 23:11:25 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json
