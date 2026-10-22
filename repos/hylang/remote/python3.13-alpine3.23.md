## `hylang:python3.13-alpine3.23`

```console
$ docker pull hylang@sha256:3dae8a093a8084fbccd382dab7bf207d93b9163b71edc49a0d77cfc9da9b3ce3
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

### `hylang:python3.13-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:d93c8318484727208a946832a4888dfc36d15546ffcff87785566422d79a2e7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.4 MB (22352170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:042bd1150043d7978d6bb6cb963bc1085938af04f5fbb5b6e45f7539349e8adc`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:25:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:25:41 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 21:25:41 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 21:25:41 GMT
ENV PYTHON_VERSION=3.13.17
# Wed, 21 Oct 2026 21:25:41 GMT
ENV PYTHON_SHA256=6020bd10aff3bf4821be16f088ebb1591beb7b811dcd8fab1da8f7c22a7b27e7
# Wed, 21 Oct 2026 22:31:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:31:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:31:41 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 23:05:14 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 23:05:14 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 23:05:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 23:05:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9226bfe82859c474f2bdf3b9660667b868e4600a51c7b1e367da06ca4f722da6`  
		Last Modified: Wed, 21 Oct 2026 21:28:10 GMT  
		Size: 412.0 KB (412012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0094d02882bfe049fa85989e4cac87f36d4dba3bcaeae51a7ce1ff9576835b`  
		Last Modified: Wed, 21 Oct 2026 22:31:48 GMT  
		Size: 12.7 MB (12665710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a61ce73680a893dab2580847b0928c7b71d5756f3ed1b2a1a70a7ec7165256b4`  
		Last Modified: Wed, 21 Oct 2026 22:31:47 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b17534513f57fccba7d0f9d04fc1704b3ce59f7c49d577759e2bae224db2ba7`  
		Last Modified: Wed, 21 Oct 2026 23:05:21 GMT  
		Size: 5.4 MB (5421974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:a1b37572c8adbcdcf7a2a6397472efd833b8457fd3ef12ff9be259588795d1a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.1 KB (624140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:397a7e4bcfb789584f578ccc23dbeb30165021246477154ade389a90925302c5`

```dockerfile
```

-	Layers:
	-	`sha256:eb8b8a2abd6989786bd18b4babdd5f41d0daa5aa76f26436314d0b8f124e6fcb`  
		Last Modified: Wed, 21 Oct 2026 23:05:20 GMT  
		Size: 616.1 KB (616052 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:517f9dc2267dcd4b9f9db8986848be03aad47bbe52e42ef5fdff88290f261c11`  
		Last Modified: Wed, 21 Oct 2026 23:05:20 GMT  
		Size: 8.1 KB (8088 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:fdcecd3ba481558fcd75b8fa79a254ac553b58f630950f59ed4c584f8a34cae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.7 MB (21691491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43387e08c9c1bb5e5048cc0b3a02312b3004803914b40fd068935e40433cc505`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:50:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:50:49 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 22:50:49 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 22:50:49 GMT
ENV PYTHON_VERSION=3.13.17
# Wed, 21 Oct 2026 22:50:49 GMT
ENV PYTHON_SHA256=6020bd10aff3bf4821be16f088ebb1591beb7b811dcd8fab1da8f7c22a7b27e7
# Wed, 21 Oct 2026 22:58:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:58:35 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 23:40:03 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 23:40:03 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 23:40:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 23:40:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45450d53466c413613c36398fce75ec23425c30457ccdf06833fa038e6d6392`  
		Last Modified: Wed, 21 Oct 2026 22:58:40 GMT  
		Size: 413.7 KB (413724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098ff3dce5f0bdf14d292bafed199f62b8dae5c109a42c3a5f7d8cae6bdf72da`  
		Last Modified: Wed, 21 Oct 2026 22:58:41 GMT  
		Size: 12.3 MB (12297233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1db15e45a5e412a778b51d6f7309e9cd2bce400047a0390e5558ea55c631390`  
		Last Modified: Wed, 21 Oct 2026 22:58:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d589194d6e883af3066655867b3a09eb6e9052235ec86ddef669ad289f6d7e`  
		Last Modified: Wed, 21 Oct 2026 23:40:07 GMT  
		Size: 5.4 MB (5422098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:ccda1ccf86a7330ae5934d2ce0ebfac34418d620d998016b26cd1de4e44d5087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa7b7d3e3a237db9177208fc1fcc4326cf4f6f972ac53652d784421b7372bd5`

```dockerfile
```

-	Layers:
	-	`sha256:90a82c54938f9dbd59b0addd3c40cc9cde392db804ba1d4bcbacca4f496ca136`  
		Last Modified: Wed, 21 Oct 2026 23:40:07 GMT  
		Size: 8.0 KB (7953 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:22eea05f7bac7060c0897066546357200e59c7525bb28ad1998b86c9f442e5ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21058345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f82e62f0d6d3160cdc9cb2ff8e3e623d03f3c938858a927ae158f8688cf78f58`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:09:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:09:30 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 22:09:30 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 22:09:30 GMT
ENV PYTHON_VERSION=3.13.17
# Wed, 21 Oct 2026 22:09:30 GMT
ENV PYTHON_SHA256=6020bd10aff3bf4821be16f088ebb1591beb7b811dcd8fab1da8f7c22a7b27e7
# Wed, 21 Oct 2026 22:38:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:38:32 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:38:32 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 22:54:54 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:54:54 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:54:54 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 22:54:54 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6f113cf1b8b15dcc3943e467305e61cb61e3a1acbae2d2752d8d297187e437`  
		Last Modified: Wed, 21 Oct 2026 22:38:38 GMT  
		Size: 412.4 KB (412384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabcd2c4765f7d608799245de7f5cc8c1e66f03771c0d058dbb764f7740b40ed`  
		Last Modified: Wed, 21 Oct 2026 22:38:39 GMT  
		Size: 12.0 MB (11956627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b917f1916b0849388bb2d11c4ae39545257b0c62ca387ad6a07a8161e7456ef`  
		Last Modified: Wed, 21 Oct 2026 22:38:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5801cd0bf073709e7efca34af1d91820561a41e9acffbbf74d0c389fe80cda9b`  
		Last Modified: Wed, 21 Oct 2026 22:55:00 GMT  
		Size: 5.4 MB (5422046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:1050678c4413cb415975bc6433fd60ec30a96d6c4bdd2fa19f740fe213abc7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436314f6738fdfefebaaf7ecb50dd7c9da056e9b106b2a0c4c57089e060190e8`

```dockerfile
```

-	Layers:
	-	`sha256:231bd385da27b8871eb2a958140972aab25d1e9dc420b1727a2ef8a030399b32`  
		Last Modified: Wed, 21 Oct 2026 22:55:00 GMT  
		Size: 618.4 KB (618428 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b591ccc2ae2028c32e5a4777a2ae4e7b08d395133b1191ba17728e387b7369b`  
		Last Modified: Wed, 21 Oct 2026 22:55:00 GMT  
		Size: 8.2 KB (8168 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:de75e6e73b19578bac8cd33e8916e13667101d088568afd603a08ff84968bdc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22793748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3b0e385550d03b19ff82e35bd89c4830c4db4c7115c882cf81082f1fc44773`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:35:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:35:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 22:35:23 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 22:35:23 GMT
ENV PYTHON_VERSION=3.13.17
# Wed, 21 Oct 2026 22:35:23 GMT
ENV PYTHON_SHA256=6020bd10aff3bf4821be16f088ebb1591beb7b811dcd8fab1da8f7c22a7b27e7
# Wed, 21 Oct 2026 22:42:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:42:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:42:38 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 22:52:35 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:52:35 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:52:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 22:52:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bd41f2d189a0df11f3e27a32e72235ea2640439b3943741dbbec026919fd03`  
		Last Modified: Wed, 21 Oct 2026 22:42:44 GMT  
		Size: 415.6 KB (415566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:929c5d376b9210d46ff41aecea85cda53df24cc858d415ff2dd395f5413f8232`  
		Last Modified: Wed, 21 Oct 2026 22:42:44 GMT  
		Size: 12.8 MB (12766333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c76ed62a3c88f4313027bdc698f1cd47c1e9275fa6020b5ca972f7c61c350eea`  
		Last Modified: Wed, 21 Oct 2026 22:42:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c546d7da8353db99d2dd56d4db4299fb766abd03baf6e27891322aad27fba4`  
		Last Modified: Wed, 21 Oct 2026 22:52:41 GMT  
		Size: 5.4 MB (5422107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:5dd3e7fcd9a0fafe3f96175fc8afb9eeb8895c29988e9cd2e2a59939c4441eef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.6 KB (623650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a890d38db9209b568be6638e51760b426acf1f737c7230d263c2a0ae73919d`

```dockerfile
```

-	Layers:
	-	`sha256:663934edb12e26508485f1ce015093c6b0dca94ffa51b6051568f9dbcf0680ef`  
		Last Modified: Wed, 21 Oct 2026 22:52:41 GMT  
		Size: 615.5 KB (615458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c8aa8b5855274329801f4753bb6179981339dfd4bcd8a2aa4247157c38d7717`  
		Last Modified: Wed, 21 Oct 2026 22:52:41 GMT  
		Size: 8.2 KB (8192 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:fa3c9bc61de19a58f63b8c5ba23e9f6a6245a4c1a2835f460a5f1856370838b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.4 MB (22414698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ec1f9c81e33b37cb70d40a7715c4a558f7d5e838c99d62b7a1a1a0fef417e71`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:31:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:31:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 22:31:15 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 22:31:15 GMT
ENV PYTHON_VERSION=3.13.17
# Wed, 21 Oct 2026 22:31:15 GMT
ENV PYTHON_SHA256=6020bd10aff3bf4821be16f088ebb1591beb7b811dcd8fab1da8f7c22a7b27e7
# Wed, 21 Oct 2026 22:36:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 22:36:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 22:36:57 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 22:53:43 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 22:53:43 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 22:53:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 22:53:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4aa37f1482269182ffec88747d4183919077a3007c16dadf670b8013fc08978`  
		Last Modified: Wed, 21 Oct 2026 22:37:03 GMT  
		Size: 412.8 KB (412810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3722bc2e89d19ca4b88c4c3fd1dfa81b4d336e9a440ee323539d816ce58fa817`  
		Last Modified: Wed, 21 Oct 2026 22:37:04 GMT  
		Size: 12.9 MB (12902369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e61fdee32eb94efdc44c5b8056a79e9ee0c149c94d29601d3deae51bdcc1f877`  
		Last Modified: Wed, 21 Oct 2026 22:37:04 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad6711b9e8780ac5815e9f424e8a20953bddeb17d9e58d75087eea2faa2518f2`  
		Last Modified: Wed, 21 Oct 2026 22:53:49 GMT  
		Size: 5.4 MB (5421963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:25382ce079445200f16f6607415a4baa334900c22a2c75cc421ae686db8833bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.1 KB (624083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca552c7fa9d51838ba6bad7e5329d4fa8cf2c6debf924503da9d6e76b228c39`

```dockerfile
```

-	Layers:
	-	`sha256:dcbeac83c8b13b04d00d7a1eb0d09e1636009e841eb4b23ee7aa3e84f40906de`  
		Last Modified: Wed, 21 Oct 2026 22:53:49 GMT  
		Size: 616.0 KB (616027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f00a08f5a945c1f8ae987a67552c5e20a71d25e3e6b837540fd433a6f741083d`  
		Last Modified: Wed, 21 Oct 2026 22:53:48 GMT  
		Size: 8.1 KB (8056 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:77d283b5d3824a9879f6192285b867f95d8e6103ae85d43eea092eb6c4770125
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23125401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82be3398d38c473c87c4442f1b29e0bc3be65dd86fbec41d1463db8d7f8a2c7c`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 13:51:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 13:51:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 22 Oct 2026 13:51:54 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 22 Oct 2026 13:51:54 GMT
ENV PYTHON_VERSION=3.13.17
# Thu, 22 Oct 2026 13:51:54 GMT
ENV PYTHON_SHA256=6020bd10aff3bf4821be16f088ebb1591beb7b811dcd8fab1da8f7c22a7b27e7
# Thu, 22 Oct 2026 14:18:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 14:18:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 14:18:34 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 18:30:40 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 18:30:40 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 18:30:40 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 18:30:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a5f0ccefe2ab56f5752a26a6a940416c80ca95b8072c1e99b1def3b6ea48a9`  
		Last Modified: Thu, 22 Oct 2026 13:57:46 GMT  
		Size: 416.1 KB (416055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9bf2e46e96e5aa64b8d95481d76254c19c6691dbf41a6c60fad035a74fd824`  
		Last Modified: Thu, 22 Oct 2026 14:19:11 GMT  
		Size: 13.5 MB (13468424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abd68279060bba8e732bfdb41dd2a38072152c600fd76bd326da14feffc8340`  
		Last Modified: Thu, 22 Oct 2026 14:19:10 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79747e20409d1241cd0e766f7f285aef8b761c8395d297e7ca3daff336ec10f`  
		Last Modified: Thu, 22 Oct 2026 18:30:54 GMT  
		Size: 5.4 MB (5422296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:2b4f6a191622be117a6e89f08cf6a528e53511d69458b3457e982c437c0fe2c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.6 KB (623567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba21761e2786d2fd15cd15f11bd09a3bf4ea5a673ae441e62e4bb085b5386e59`

```dockerfile
```

-	Layers:
	-	`sha256:3c11e18be405c760761f44360f6faeb8aa9ad05ba6275ae06f9d9d944c213f8d`  
		Last Modified: Thu, 22 Oct 2026 18:30:53 GMT  
		Size: 615.4 KB (615435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40f5c4cb65958886a557472407aa61016c40de404f7ebb2bedc5301594a409ac`  
		Last Modified: Thu, 22 Oct 2026 18:30:53 GMT  
		Size: 8.1 KB (8132 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:3c0033c95171028683248be1de6db6815c25c669f687562b3855fd1a59cf1753
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.3 MB (24292819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:824fce38fc7ec2b7c90adc9b989d5ee4106718f205b6e9e71b9205fee36f4aaf`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 16:50:23 GMT
ADD alpine-minirootfs-3.23.6-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:50:23 GMT
CMD ["/bin/sh"]
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 04 Oct 2026 01:38:01 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Sun, 04 Oct 2026 01:38:01 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PYTHON_VERSION=3.13.16
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PYTHON_SHA256=f4b1bfb3c79b5bb11b8d228a12504163b4c0dab4d679828d8f5f26b6cb6ab35d
# Sun, 04 Oct 2026 07:06:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sun, 04 Oct 2026 07:06:46 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 04 Oct 2026 07:06:46 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 02:50:40 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 02:50:40 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 02:50:40 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 02:50:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:125f7ed2919501383cc2a463efb0a6d988a780211c71de97a05b674ca6bb8dde`  
		Last Modified: Fri, 18 Sep 2026 16:50:46 GMT  
		Size: 3.6 MB (3576321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f359664cf0cf51d0b58fd4ebd2353599ef028ee8123848ae6f2a8a1a1b690e26`  
		Last Modified: Sun, 04 Oct 2026 02:23:30 GMT  
		Size: 416.8 KB (416766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ae59131314308818270af1f2f588ae51aa8d701c1d3300d4985afd9544dfcf`  
		Last Modified: Sun, 04 Oct 2026 07:07:47 GMT  
		Size: 14.9 MB (14937324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d68d1fa60215d671ac11846bff92ce4ce2e1ba92ee408e06dd70e6b72a29e7`  
		Last Modified: Sun, 04 Oct 2026 07:07:44 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945d4a362b5d3cddbbf07a7bc6f0654e2f41a3ef62235c911b14223479775f48`  
		Last Modified: Mon, 05 Oct 2026 02:51:29 GMT  
		Size: 5.4 MB (5362157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:cbc5d4fb71190191dd8b31d9aa75ff0da4aee6bb923224b123f5dc6a12bd79d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **625.5 KB (625497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:934c56dcae808b941cbb0e85a14a5e6b78c39250e98c65c2956c1f36e8f02091`

```dockerfile
```

-	Layers:
	-	`sha256:5e6e7a9466a864beec7b4096cc8fde937520c82ecd44c783dc304133c3063c89`  
		Last Modified: Mon, 05 Oct 2026 02:51:28 GMT  
		Size: 617.4 KB (617366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:840b7610975f3156715f489bfcfda5ddb4eb989fe25155cee4962302cebd383c`  
		Last Modified: Mon, 05 Oct 2026 02:51:28 GMT  
		Size: 8.1 KB (8131 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.13-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:78a8b08adeb26a292bfebc402ebc6a393f188cb89c656b3e03ce98db8fe82a9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22666604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0068b376b0406e3db829502a76731a21fa0db64ab7589c15d4d1b262da101b17`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:32:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:32:10 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 21:32:10 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 21:32:10 GMT
ENV PYTHON_VERSION=3.13.17
# Wed, 21 Oct 2026 21:32:10 GMT
ENV PYTHON_SHA256=6020bd10aff3bf4821be16f088ebb1591beb7b811dcd8fab1da8f7c22a7b27e7
# Wed, 21 Oct 2026 23:08:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:08:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:08:17 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 01:19:24 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 01:19:24 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 01:19:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 01:19:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49285a439e7879263cc1b1ce38b90af2f203e63497bc0850bbc227821ffaf136`  
		Last Modified: Wed, 21 Oct 2026 21:37:50 GMT  
		Size: 413.4 KB (413425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a204dc8dc0f928e8a35b2a1c44009e5f8adb8b6b529425b9bc681a69464d05c`  
		Last Modified: Wed, 21 Oct 2026 23:08:28 GMT  
		Size: 13.1 MB (13114063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47a3c8aa47d131ef7bd0eda2565c9eab6c801b4d10b57aa451f57c7c9da7a4a`  
		Last Modified: Wed, 21 Oct 2026 23:08:28 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a06cd65a79c1da47251d7db9a8c8cbb3d3d575ef765a005eac6f4d1e0bf656f`  
		Last Modified: Thu, 22 Oct 2026 01:19:34 GMT  
		Size: 5.4 MB (5421747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.13-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:639bdd89c6283ea43e9f47d1ab2abecb98196e56ea094a9249718675086d6f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.5 KB (623489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c3d47a50e0dea1ad7d56dd61ce698928745074c27797dc216adfddc73cdcb8`

```dockerfile
```

-	Layers:
	-	`sha256:39cd907abff2982f97d8cd46dc9e5c0e2541a650e538e027e31adfbafeb067af`  
		Last Modified: Thu, 22 Oct 2026 01:19:34 GMT  
		Size: 615.4 KB (615401 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43e11661cf40235c22ad0f8a7405d4a9248f310b6ba014083fb9a58370edef90`  
		Last Modified: Thu, 22 Oct 2026 01:19:34 GMT  
		Size: 8.1 KB (8088 bytes)  
		MIME: application/vnd.in-toto+json
