## `hylang:1-python3.12-alpine`

```console
$ docker pull hylang@sha256:625dac6496238f0691438bb1f9f23b181f12ce1990716201c457df509825a6d4
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

### `hylang:1-python3.12-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:b5bc017c4f80529797015789ccac416c87f088037f8edc6616ae80c1c78ec129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23286328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15ea9c16a9fee70b80a8ae3ca960c90289ca7664ade4210e6fd3aab48d9a7332`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:44 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:34:44 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:34:44 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 13 Aug 2026 19:34:44 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 13 Aug 2026 19:34:44 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 13 Aug 2026 19:39:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 19:39:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 19:39:42 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:11:58 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:11:58 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:11:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:11:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0021712cb493a0e6a23e7793de77e942d10e7e3aba2c215389755dff3e1f08f0`  
		Last Modified: Thu, 13 Aug 2026 19:39:49 GMT  
		Size: 408.1 KB (408091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eec6ed36766e2cb281c079d0a3987132533e88a558748d3f71e0efe80f8d7c5`  
		Last Modified: Thu, 13 Aug 2026 19:39:49 GMT  
		Size: 13.8 MB (13767433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5086b6265f8c1341de4871e36c183358e1f20dbacf78b4a507c48d6bd28e4ec1`  
		Last Modified: Thu, 13 Aug 2026 19:39:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28231e695c0f47cb275380fe4f240f061708275a2f1044e0811f452aa02c6b87`  
		Last Modified: Thu, 13 Aug 2026 20:12:04 GMT  
		Size: 5.3 MB (5264166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:2de42c799bb3f384e30602bb928659201168dbf623932224b978fd2a550764a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **645.3 KB (645349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48d2193dc88e593c148c4c722942aa326e7611ee581ed8dcb1fa731b0ed1524`

```dockerfile
```

-	Layers:
	-	`sha256:e94fef9fd48da33f1b081d3e7d6f75f487026995943ae062032d7b4b329eb3ae`  
		Last Modified: Thu, 13 Aug 2026 20:12:04 GMT  
		Size: 635.9 KB (635942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c42ef757961c38d31ddedb378822c083e1cf2beefbe074f4ba426dce1d93671b`  
		Last Modified: Thu, 13 Aug 2026 20:12:04 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:bde3011c5eb3ed2b61479583bbf89380fe8b172d28472b99ede712b5e97b8fc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22554240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4e56c50507f7c94a1ab3ad9f39dc978296dc7db6efca78cace212b095c613d`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:48:48 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:48:48 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:48:48 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 13 Aug 2026 19:48:48 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 13 Aug 2026 19:48:48 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 13 Aug 2026 19:55:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 19:55:56 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 19:55:56 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:23:09 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:23:09 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:23:09 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:23:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e165d4ad1cc6d31a78ba8b39c790d463f8c88bffd17ed2c64b09fb870a5e1e7e`  
		Last Modified: Thu, 13 Aug 2026 19:56:00 GMT  
		Size: 410.0 KB (409954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2093ed16e617fa0b1a489ce4e9655441e95bbcb4d4cf0b90f25111f31d8e145`  
		Last Modified: Thu, 13 Aug 2026 19:56:01 GMT  
		Size: 13.3 MB (13326359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769b286c9bcf37853c04f4a20e0f433ed40ff0b152de8248a53beb92db56a592`  
		Last Modified: Thu, 13 Aug 2026 19:56:00 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3bec8558f172936b6dc8802e9a2b965c5a8e148a831edcb97afe0196fd6861`  
		Last Modified: Thu, 13 Aug 2026 20:23:13 GMT  
		Size: 5.3 MB (5264227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:5064c72cebf03d2cbf0e7c5fac678a7b5e8dea2f7e42374d0daa04d9224f8026
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d86d1910f9c33de25dcb682b37fb2057651981af5f98483b035e1c95078d6ee`

```dockerfile
```

-	Layers:
	-	`sha256:4acdb0f5432e64f9e16a9f48166a9ba742c19b55c1824389ea1d107ad2bac29d`  
		Last Modified: Thu, 13 Aug 2026 20:23:13 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:e77f6ec71931ff362bf5e3970528fc4674adfd73455f324684ab8f3d8dc12ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.9 MB (21859672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ccf55a05563b011db94aa1365baeaa2d2d0c9c683fad4680986b8c59c5d1b2`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:58:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:58:16 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:58:16 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:58:16 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 13 Aug 2026 19:58:16 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 13 Aug 2026 19:58:16 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 13 Aug 2026 20:05:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 20:05:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 20:05:27 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:26:48 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:26:48 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:26:48 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:26:48 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c89cca872e1c815cf2f75bcdbed6bdf673c93a31e00c37e99dbb83b214a174`  
		Last Modified: Thu, 13 Aug 2026 20:05:34 GMT  
		Size: 408.5 KB (408517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1a72f46cfae8576d56c59c198f4dbf57f4b5aeb02427330266376cab8487cd`  
		Last Modified: Thu, 13 Aug 2026 20:05:34 GMT  
		Size: 12.9 MB (12926131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457126aa4b965458f28a68216a265ebaa96f126a7fb78c034c962008f13fb991`  
		Last Modified: Thu, 13 Aug 2026 20:05:33 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddd3ea51829817af2ec42a9e772bf1d7f84baf8b8f9131b7d08d51e1e4e7d21`  
		Last Modified: Thu, 13 Aug 2026 20:26:54 GMT  
		Size: 5.3 MB (5264161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:b3ce847854058deeef889240ab2495818f1b5b0e7c136ac56b323ef9538cccab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.9 KB (647868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:037360275073e700c5c08c927146c272b62584b33826b9db385df73cbd747fcf`

```dockerfile
```

-	Layers:
	-	`sha256:106cc8409a2690b8748692c1342e3da4bed11d373d217a947ff2331e197e12b9`  
		Last Modified: Thu, 13 Aug 2026 20:26:54 GMT  
		Size: 638.4 KB (638350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b423c2eaa9cc2bbefa31b8e80475509c6044498a6413e25f41c32bc2bc09ea52`  
		Last Modified: Thu, 13 Aug 2026 20:26:53 GMT  
		Size: 9.5 KB (9518 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:1f7ea67355818e3e6a922ab98078e7625ae7fa98bac1c32080238da6770c4f45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23769765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a0a20eaef7666888be2c46f46d2bab949d714c95a21dd7e2822d8718316479`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:47 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:34:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:34:47 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 13 Aug 2026 19:34:47 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 13 Aug 2026 19:34:47 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 13 Aug 2026 19:41:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 19:41:32 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 19:41:32 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:12:03 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:12:03 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:12:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:12:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b92e13fa8603c9c753df3644d99e360e0639aa4a1b2600e3a159e60491c2815`  
		Last Modified: Thu, 13 Aug 2026 19:41:38 GMT  
		Size: 411.8 KB (411757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983412a436f021e327b71c9ec6bda5da8eeb98f95508efa70df67c178447b9e1`  
		Last Modified: Thu, 13 Aug 2026 19:41:39 GMT  
		Size: 13.9 MB (13910450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ffbff50b922475d0112e90e918811bcd1e97a225ebadf3b6ce461f11e62a7e8`  
		Last Modified: Thu, 13 Aug 2026 19:41:38 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ee4fb69fba1e8066756d17e3cdc3e0f193e56a9174d1b0e88d03fe96ff02b67`  
		Last Modified: Thu, 13 Aug 2026 20:12:09 GMT  
		Size: 5.3 MB (5264271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:98c9179c1c3939f9299b28b92bc65c03d6d60a57c800ed8d8263ecac55e124ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **645.0 KB (644955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5f8ee8c4d9ce7b66bcbd89628e3fe5260135e85f3eab76b75ef50c88389609`

```dockerfile
```

-	Layers:
	-	`sha256:accf27dabd9f22b50c7811817b2ee02ff00867c06cbd0f56caf437db700f9753`  
		Last Modified: Thu, 13 Aug 2026 20:12:09 GMT  
		Size: 635.4 KB (635396 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e568d74de14ddba6a4b31c71588d335307f773e021f379019b5ed0c2fe1ba960`  
		Last Modified: Thu, 13 Aug 2026 20:12:09 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine` - linux; 386

```console
$ docker pull hylang@sha256:cb7e61e73a0b5e1ba233383f907b266431572a659558019b758dddffb4b96406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.3 MB (23323125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9729e55fd9961397308e95ab0150d8ea572cda4e5e07726dee03097545a695`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:33 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:34:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:34:33 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 13 Aug 2026 19:34:33 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 13 Aug 2026 19:34:33 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 13 Aug 2026 19:39:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 19:39:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 19:39:52 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:15:36 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:15:36 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:15:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:15:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e11b2fbacb2be9086f7ceb0e38d8a60c0be796e1ddf6cc27d05155a62caec4`  
		Last Modified: Thu, 13 Aug 2026 19:39:58 GMT  
		Size: 408.9 KB (408884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:474a49010fbeaf6b75b26f2e697a30fe0e4165d1879e4d388a65359e692cca39`  
		Last Modified: Thu, 13 Aug 2026 19:39:59 GMT  
		Size: 14.0 MB (13979668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4c3b0f43f0531c82bc4ec7d4d7327a892edb1079731f8568f5a98fbb7367d9a`  
		Last Modified: Thu, 13 Aug 2026 19:39:58 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6930f84389b2bd5425ad4c00dff08844ec35184738793157b68b111879ae6709`  
		Last Modified: Thu, 13 Aug 2026 20:15:41 GMT  
		Size: 5.3 MB (5264184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:af7ee3bda1f1beacd88fd18f06da65fbf59a3bacd572bed80689213ffbbd6338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **645.3 KB (645252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0761b1ae12b636a260cc7de14e7f2015bbae405742daf48ac4b39751046ba10c`

```dockerfile
```

-	Layers:
	-	`sha256:5ed4b665f6a8552438230eb519ca2aaa1d17e89fff143e7d466d3217a08e1ed2`  
		Last Modified: Thu, 13 Aug 2026 20:15:41 GMT  
		Size: 635.9 KB (635897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:accf15eb886c218f0e1b380ec586efcaf1ad7a16221291afec879dfe49525bb6`  
		Last Modified: Thu, 13 Aug 2026 20:15:41 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:b6d93c80deb64c8e0224b1d3564ed896ee38a94b1114f4bc00f74f911a41906c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24117014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fbf63eaec89ebe8fc32004b43a1345847688ae6c72eb211a55a5a22c5f51ad`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 20:47:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:47:50 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 20:47:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 20:47:50 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 13 Aug 2026 20:47:50 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 13 Aug 2026 20:47:50 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 13 Aug 2026 20:58:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 20:58:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 20:58:18 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 22:37:50 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 22:37:50 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 22:37:50 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 22:37:50 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc822856974336a5f9491969b7a7b7f29b5e58f2d639615dbbca8b14649ecf0`  
		Last Modified: Thu, 13 Aug 2026 20:58:30 GMT  
		Size: 412.3 KB (412294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9a807d91b43df682c7ff8423ab15feb29052609f45f5de18df6e3657e1e2449`  
		Last Modified: Thu, 13 Aug 2026 20:58:30 GMT  
		Size: 14.6 MB (14626816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ddc750f470134c2bc3bb57486f9cac77a4b6f2e068b640824f80e9d4c108a6`  
		Last Modified: Thu, 13 Aug 2026 20:58:30 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f851e2f81347a9adfe5512949996db35e30dabacfeffb7a62ff19bcb9e4278fe`  
		Last Modified: Thu, 13 Aug 2026 22:38:02 GMT  
		Size: 5.3 MB (5264257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:5fe4101fb3f45d4c9f2436bfbb2744dd6330a22bb97c53cbdd494d78e876019f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 KB (644824 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8500ec1caa0312f40a2db513e55245b65c9e55d988191dd333482ced1ce1554e`

```dockerfile
```

-	Layers:
	-	`sha256:5e1472f6696ede68389b345d688704a4c98487fd7501657f9f8398f6314198db`  
		Last Modified: Thu, 13 Aug 2026 22:38:02 GMT  
		Size: 635.3 KB (635349 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3cce6c0306ec214956651daa8018f69f048fe9f0ae51c6fa037fa03068e68f79`  
		Last Modified: Thu, 13 Aug 2026 22:38:02 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:f620619e39adb2a9583655c672ecef972c01285197d0fdd75b4449d853237375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23015767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8feeed4984b5af10d3e4921fe4b5f42dddf3641e4099dcc4f61d4a68ea77feb3`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 18 Jun 2026 09:50:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Jun 2026 09:50:39 GMT
ENV LANG=C.UTF-8
# Thu, 18 Jun 2026 09:50:39 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 18 Jun 2026 09:50:39 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 18 Jun 2026 09:50:39 GMT
ENV PYTHON_VERSION=3.12.13
# Thu, 18 Jun 2026 09:50:39 GMT
ENV PYTHON_SHA256=c08bc65a81971c1dd5783182826503369466c7e67374d1646519adf05207b684
# Thu, 18 Jun 2026 10:25:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 18 Jun 2026 10:25:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 18 Jun 2026 10:25:37 GMT
CMD ["python3"]
# Wed, 12 Aug 2026 23:24:35 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 23:24:35 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 23:24:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 12 Aug 2026 23:24:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ce979d576e0b9f540685c68e3aaf2cf14980615efb46eac8d4f7cef592da5b`  
		Last Modified: Thu, 18 Jun 2026 10:26:24 GMT  
		Size: 409.4 KB (409407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96889aec9b3d6a8951dae8fdb4d70009c38618c69e2229a2706bc0aee729831`  
		Last Modified: Thu, 18 Jun 2026 10:26:26 GMT  
		Size: 13.8 MB (13768412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e4e5c4090980bfe33d41f44425aa79591817e1cc7d9bab44bb972548e10af1d`  
		Last Modified: Thu, 18 Jun 2026 10:26:24 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b34841c1bda8bffb1e9e50fa95ad6954518f70f141e7e893322b4454d8abf1c`  
		Last Modified: Wed, 12 Aug 2026 23:25:14 GMT  
		Size: 5.3 MB (5263340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:092389869e9b006c98e46a62c5bfba54377c9e87c4328f485e38251c5c6a651d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.8 KB (644812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a80775cf88313064f04eb06c2f132fcb98d8149cddb5a34751771e82c707235`

```dockerfile
```

-	Layers:
	-	`sha256:bcfa5e229053a1812451f1ae175d06dde56be7f37052c32c1dac13c229d6b455`  
		Last Modified: Wed, 12 Aug 2026 23:25:13 GMT  
		Size: 635.3 KB (635337 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c953d0647d546f081325f9d2d62b6cf1886af46351c14f40b667491fde8168d`  
		Last Modified: Wed, 12 Aug 2026 23:25:13 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.12-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:92c56d260b2ebb270d41e5c0cbd93615505cdf88109e59cca926d66749d38048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23678834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b89f91aa6080d7f6a97d9502c9f8e83aa6cec49b35cd886ec040c319bc0105fe`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 20:00:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:00:37 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 20:00:37 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 20:00:37 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 13 Aug 2026 20:00:37 GMT
ENV PYTHON_VERSION=3.12.14
# Thu, 13 Aug 2026 20:00:37 GMT
ENV PYTHON_SHA256=5c8462af5790baf43a321a1559dbe0db06d1be4300fb85fb53c40060668e548a
# Thu, 13 Aug 2026 20:11:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 20:11:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 20:11:18 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 21:13:06 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 21:13:06 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 21:13:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 21:13:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5f4d223ba4f4263f815c5508efdab1dc625933b66f96de3b140fb2ba11ae706`  
		Last Modified: Thu, 13 Aug 2026 20:12:03 GMT  
		Size: 409.5 KB (409509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63003e6573d5fde06dcc21098cd9da7b68db29d9657394937a3ce045b7a885ef`  
		Last Modified: Thu, 13 Aug 2026 20:12:04 GMT  
		Size: 14.3 MB (14295396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:969fa13f8f3bef7e7300ef915f0eb575cbc512c6528f8dbcbf89703a06cb3739`  
		Last Modified: Thu, 13 Aug 2026 20:12:03 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8c9eefe196cef61c5b976befaf70c7022d1cad0e228ac239accf78b7899e41`  
		Last Modified: Thu, 13 Aug 2026 21:13:31 GMT  
		Size: 5.3 MB (5264360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:b541f2f53dc91e3f110195117515cf38bd55c098e045e4b58eca7b927cbcd7d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.7 KB (644698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aa581bf9c58f79955e31cb952d65587df6c5b0beefa749a7b67af71ee4d0f56`

```dockerfile
```

-	Layers:
	-	`sha256:dd941f6f18c14ce1423326c44a37e787725e2329c6b7b46211a0985a4a785049`  
		Last Modified: Thu, 13 Aug 2026 21:13:30 GMT  
		Size: 635.3 KB (635291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:703b14f499322df7baead08c1b3c394ce87817ea3ef5ef033d250c7ca0ec8683`  
		Last Modified: Thu, 13 Aug 2026 21:13:30 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json
