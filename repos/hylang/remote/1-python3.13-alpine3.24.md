## `hylang:1-python3.13-alpine3.24`

```console
$ docker pull hylang@sha256:29a60fcbb8e1b9a2d47c791fadf8b6c9e757807e759bae6b90314f778520b5ce
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

### `hylang:1-python3.13-alpine3.24` - linux; amd64

```console
$ docker pull hylang@sha256:30db2e66739e0b3dc0ea36fd01d6b98990b4f7f07e31bd5a6b3d81ff82dead81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24815903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2351d89adaa4080e0a7e59546dc6428dc09bc915e1117b6c63a2fb0bf6e55c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:02:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:02:11 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:02:11 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 00:02:11 GMT
ENV PYTHON_VERSION=3.13.15
# Tue, 01 Sep 2026 00:02:11 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Tue, 01 Sep 2026 00:07:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:07:00 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:07:00 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:18:52 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:18:52 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:18:52 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:18:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8754e842af47bb367714de3fec4bbc455aa684e0aacc1aa7e7364fbcd4416c1`  
		Last Modified: Tue, 01 Sep 2026 00:07:06 GMT  
		Size: 408.1 KB (408093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1246c75eb338cb1302c85931f1c4b19360ecc0295730d8e6c143feefc6d875d3`  
		Last Modified: Tue, 01 Sep 2026 00:07:06 GMT  
		Size: 15.2 MB (15209995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04626f2ffdb09c6430b484993db7c8cbecc0f67a3fce6265bb08fda7bffef2a`  
		Last Modified: Tue, 01 Sep 2026 00:07:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadd181c70d848c16a53e275617d85ad37f337cc1947487e35ec68fc397ba1b9`  
		Last Modified: Tue, 01 Sep 2026 00:18:58 GMT  
		Size: 5.4 MB (5351177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:8b0caeec276c6605656a7b73b0254defb21b07a1825d0c176dad185ff52278c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.4 KB (627352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a9cb0883512b8dfe0b16b4143beec62bf48b765db393e185e94f1399630f6d`

```dockerfile
```

-	Layers:
	-	`sha256:8f2d7b260abc54bf75e8ff12d56224d9c973731460b8f82b6139c5db99140743`  
		Last Modified: Tue, 01 Sep 2026 00:18:57 GMT  
		Size: 618.0 KB (617960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352addbfe6b8f7c72ee323c3e0151aacf3ee6aeb00431cfd217dfa22e6c49238`  
		Last Modified: Tue, 01 Sep 2026 00:18:57 GMT  
		Size: 9.4 KB (9392 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.24` - linux; arm variant v6

```console
$ docker pull hylang@sha256:517c5942031b4723c78a10ccd0fb1550233fa7cb641f2b66ce2de347fd1dc4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23813448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641be9dfb6c89c9bf18dc9acac23eb1ab6456d26450e6cb01cd7dc1265833c58`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:36:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:36:14 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:36:14 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:36:14 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 31 Aug 2026 23:36:14 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Mon, 31 Aug 2026 23:44:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:44:04 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:44:04 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:18:14 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:18:14 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:18:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:18:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614c9248e2ebdd6fd7ac0d8fb8e47a0855632a582ad3995ce41da664603d9dcf`  
		Last Modified: Mon, 31 Aug 2026 23:44:09 GMT  
		Size: 409.9 KB (409947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785e0a5ebd44b9c16c670fd8e02432e05a8a8ce3b17b5d93241203494fdd2b75`  
		Last Modified: Mon, 31 Aug 2026 23:44:10 GMT  
		Size: 14.5 MB (14498402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a508380c71240e2f21e972736ad142c44139d3213e1b22eea54c5017be40e9c`  
		Last Modified: Mon, 31 Aug 2026 23:44:10 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3994505e353c3b5ae5381b0ebd6eb7dd1dfaa5c19e471b3a706cec9fbd6cb718`  
		Last Modified: Tue, 01 Sep 2026 00:18:18 GMT  
		Size: 5.4 MB (5351399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:366ed0d2180a7fb822825f81af748e2fc7863f90ff7b99db01208b8a11c20aa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b8e9b9f932b5c4f1fe6a68489ef8f6c5a84d39f2ee028f251230c82bebf008a`

```dockerfile
```

-	Layers:
	-	`sha256:191d1c78daccfb12e167b6330f1b5f71b291d0a6da48967c54c9784e61dc7db0`  
		Last Modified: Tue, 01 Sep 2026 00:18:18 GMT  
		Size: 9.3 KB (9289 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.24` - linux; arm variant v7

```console
$ docker pull hylang@sha256:f1ee6fadf7bd0eeb49074a244260927eec734568eaa31e0d44f3c05faf51d920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.0 MB (23011820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad039031a8a5924b34aa206f502bd4eb5f4af957e3bcafe5ef36d9a13d0913f9`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:57:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:57:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:57:33 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:57:33 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 31 Aug 2026 23:57:33 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Tue, 01 Sep 2026 00:05:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:05:33 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:05:33 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:23:28 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:23:28 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:23:28 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:23:28 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6ef8164486d85320a3963187da3d28322fb1c5b0a8e7ce59f74ecbf0d5609e`  
		Last Modified: Tue, 01 Sep 2026 00:05:39 GMT  
		Size: 408.5 KB (408502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451859942d0583886c5ce291ed0e183e817164c2f67c1978bbd5f1f13dda0f45`  
		Last Modified: Tue, 01 Sep 2026 00:05:40 GMT  
		Size: 14.0 MB (13991101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62115470e50792608ebfeb12da7e9c64db4dc99e3b3429c28429db200d5b6600`  
		Last Modified: Tue, 01 Sep 2026 00:05:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a21f610a3c7bc18c5598d8f11edc6e8a5492e6a8a957f047f2cd7a529d09372`  
		Last Modified: Tue, 01 Sep 2026 00:23:34 GMT  
		Size: 5.4 MB (5351354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:04363a84bbcaadcaddafe136c614dd441b4dc7b89569ba662802df16b2a5a8df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.9 KB (629872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:191e2e0ad4195b3d1af12df94d660c67c7a7890c0cc703a236844942d1a05d3e`

```dockerfile
```

-	Layers:
	-	`sha256:22a23bd53955189604e3f78098c0e360a29f571f31e0247c4cbc8f84aaa921bf`  
		Last Modified: Tue, 01 Sep 2026 00:23:33 GMT  
		Size: 620.4 KB (620368 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbef8d882058c57f5cf69506f77d52e118fc1610ab7c9b134bfde537a1ff73d6`  
		Last Modified: Tue, 01 Sep 2026 00:23:33 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:73ec53a404a8c5373c124b3f7dd7ccb5b534648deb6033744ed8b3d8d53f2b1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25570889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89c3165b9fc157e68d0224e01fc66d577d35443405fac00ff0f6fdc508bacddc`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:35:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:35:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:35:43 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:35:43 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 31 Aug 2026 23:35:43 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Mon, 31 Aug 2026 23:46:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:46:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:46:06 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:12:21 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:12:21 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:12:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:12:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656a4f510766e1f02ec3381294123ae80453ebb9ff03f955a594ef6788d9c249`  
		Last Modified: Mon, 31 Aug 2026 23:38:35 GMT  
		Size: 411.7 KB (411744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56924aed122454c1359759cd5f93d79eeafbda34d5df60768fbe8e1772b9097`  
		Last Modified: Mon, 31 Aug 2026 23:46:13 GMT  
		Size: 15.6 MB (15624630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c8442b3ab6f01c526498643f6448e6c1e12daec285c76e597513894974fa01`  
		Last Modified: Mon, 31 Aug 2026 23:46:12 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328edaddaad67b87008f810c4c8a6a01e1c07bc5d55ebdb698606ae2cf0d1dc7`  
		Last Modified: Tue, 01 Sep 2026 00:12:28 GMT  
		Size: 5.4 MB (5351230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:61695941359cba9758d7123b5c410b6b5835e1a2032fe5db11962ccbd4d443ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.0 KB (626958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66d088d8f930868573ad10702a134fb626b7840bb08e7d0f5344414dafbe8c70`

```dockerfile
```

-	Layers:
	-	`sha256:5c8e0b6a07ccf48b3ae53a2424762108d0e9b42f1853d6e532921861e4004b30`  
		Last Modified: Tue, 01 Sep 2026 00:12:27 GMT  
		Size: 617.4 KB (617414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae75682eb6488b47e08428791160ecc1c2c4159cffb6b2b11cf4e2769b9a291`  
		Last Modified: Tue, 01 Sep 2026 00:12:27 GMT  
		Size: 9.5 KB (9544 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.24` - linux; 386

```console
$ docker pull hylang@sha256:c0d304527ba9bab4f518aafadb1de86c3af5e874ad57158f3e411ae472f83e89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.7 MB (24696345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3203122aa9576514b5953706f67934e4defb2dcdffe11d7cf8ba8fb47be7bc0c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:36:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:36:52 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:36:52 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:36:52 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 31 Aug 2026 23:36:52 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Mon, 31 Aug 2026 23:42:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:42:24 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:42:24 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:14:21 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:14:21 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:14:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:14:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aacd56243158865214c7d805a5ea9aa95e546bf090245ce4c7cf55fc27d3e5cf`  
		Last Modified: Mon, 31 Aug 2026 23:42:31 GMT  
		Size: 408.9 KB (408879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e825e31a0a1df4cf8e58a864dbfb3fbffee5fbcf54e8fd189509a8142e02cdfe`  
		Last Modified: Mon, 31 Aug 2026 23:42:31 GMT  
		Size: 15.3 MB (15265850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a4d08b5545d2fb4176206caf0b40a00d9fa1f7a2c37d774ef2b05872b3ae03`  
		Last Modified: Mon, 31 Aug 2026 23:42:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e81a094e5d7f819cbdd9509047bacdd909bacdc080a46dfb1ec41970262644dd`  
		Last Modified: Tue, 01 Sep 2026 00:14:26 GMT  
		Size: 5.4 MB (5351227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:a045d1a4decec599164c501dd488cccd5ad87525110a6bffb998eb433d79a943
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c3211ffc08bbde086af0176b91862a71cb607548b138c96a02ae06b8818a16d`

```dockerfile
```

-	Layers:
	-	`sha256:ade47bd3e1a4776c5a44084053fb3d98dfe613748cafa0ee5e5008650cb060a8`  
		Last Modified: Tue, 01 Sep 2026 00:14:26 GMT  
		Size: 617.9 KB (617915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:535a0d824559f51fb086fbfd802fc02bca2a5141b418efb7df199b19003daf7a`  
		Last Modified: Tue, 01 Sep 2026 00:14:26 GMT  
		Size: 9.3 KB (9340 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.24` - linux; ppc64le

```console
$ docker pull hylang@sha256:f299c105eb941045d8de2224ff2ba4d7598ab70fddb4a66d9c13960704152b16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25473982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:373e0d62d2bc1f27184dc71d3a8f44c9ba18a9c9856ac13edf3da83f43cad067`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:50:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:50:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:50:58 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 00:50:58 GMT
ENV PYTHON_VERSION=3.13.15
# Tue, 01 Sep 2026 00:50:58 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Tue, 01 Sep 2026 01:45:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 01:45:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 01:45:29 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 04:11:34 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 04:11:34 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 04:11:34 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 04:11:34 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df021382b713823ff90b03b74d2f6213d0d013cb3dbcfc001e7d72239351a491`  
		Last Modified: Tue, 01 Sep 2026 00:54:11 GMT  
		Size: 412.3 KB (412297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddc6a7cedd97c510488d52f04df5088ac160c2dfdeed3db4d000ab0d4c2752e`  
		Last Modified: Tue, 01 Sep 2026 01:45:40 GMT  
		Size: 15.9 MB (15896555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8138d2e5b6a5149aa5c27a22e5a97e851047b82f92f5333a507a3ad380db922a`  
		Last Modified: Tue, 01 Sep 2026 01:45:39 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755790dee23a9c0df3cea56e9279d2690317c132a75a5a3954478ced2d877cc3`  
		Last Modified: Tue, 01 Sep 2026 04:11:44 GMT  
		Size: 5.4 MB (5351481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:dd7000bf83a7a5a17ad68d9c188b2d0bf0e6aaefdc1ad0f953ac5c5225ae50f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.8 KB (626827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f617f0c6485b765c3470971a5d3edc376d6056e31825f4b387e3c65965e17c25`

```dockerfile
```

-	Layers:
	-	`sha256:85b34f3a287d22263fd386ee7410aa317e05b8d77f903a145332a540f86df780`  
		Last Modified: Tue, 01 Sep 2026 04:11:44 GMT  
		Size: 617.4 KB (617367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:781651f0f5cf95a07e2fd49dad8840e43f04dabab12ea884fc92c6e03601a2b7`  
		Last Modified: Tue, 01 Sep 2026 04:11:44 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.24` - linux; riscv64

```console
$ docker pull hylang@sha256:f98433733ecac31533f2d4d363032d6a97d2a6b9ee9f50040195b09e8f161078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.3 MB (24253690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d67e748a0895cefa0cecf630731b52529b5a49322a8a05cc9b28da0ff5c515a`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 17:09:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 17:09:21 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 17:09:21 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Tue, 01 Sep 2026 17:09:21 GMT
ENV PYTHON_VERSION=3.13.15
# Tue, 01 Sep 2026 17:09:21 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Tue, 01 Sep 2026 23:48:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 23:48:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 23:48:34 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:28:49 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:28:49 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:28:49 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:28:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17c7109d4af9f369b071d963351ab404bdf7fba6a49c0dd3e384874de7ab1bc`  
		Last Modified: Tue, 01 Sep 2026 17:52:45 GMT  
		Size: 408.6 KB (408639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:010336dff472f199cc1d52191e56ea586c435729fd64521adca5349f6835cb71`  
		Last Modified: Tue, 01 Sep 2026 23:49:22 GMT  
		Size: 14.9 MB (14918397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89920d464b89734a6e0bb5c7596832c0ef7aa006f0969f059e07867c8aca0935`  
		Last Modified: Tue, 01 Sep 2026 23:49:20 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953031f1cd5c64c9a079d0d3c54ac0aedd55ee31e9b7c5d272d447cb54bd80ad`  
		Last Modified: Thu, 03 Sep 2026 04:29:28 GMT  
		Size: 5.4 MB (5352046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:d13a648ddce1faab24613d8bf3cb17ee61326c60912ee7a3fd3908944c522815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.8 KB (626823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7625a319bfe561a8eaa31acf9d26fe59a3ddcda888046266c9a34caf7ac6a9`

```dockerfile
```

-	Layers:
	-	`sha256:467cbeeabf0d6f0719a2a9ef3db496cc181a6582abb4dabb32277073362dcfe7`  
		Last Modified: Thu, 03 Sep 2026 04:29:27 GMT  
		Size: 617.4 KB (617363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:892d8fc2629ded74a78014aa6b4992c1687c5538517fd1d3b180cb5080668b0c`  
		Last Modified: Thu, 03 Sep 2026 04:29:27 GMT  
		Size: 9.5 KB (9460 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine3.24` - linux; s390x

```console
$ docker pull hylang@sha256:99b252b50d4ab656b797283c7f1f64a910cc93b7d289eb451b79e6536f78bc08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.9 MB (24914966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0d95821477337ad1e75583720faac9a9fdc22e68d80f63247d9992bcba11988`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:37:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:37:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:37:47 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Mon, 31 Aug 2026 23:37:47 GMT
ENV PYTHON_VERSION=3.13.15
# Mon, 31 Aug 2026 23:37:47 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Tue, 01 Sep 2026 00:01:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:01:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:01:30 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:32:09 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:32:09 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:32:09 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:32:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c9ad4a471322feedb240364f256004d190ae01b1cac01572f67481a76943f25`  
		Last Modified: Mon, 31 Aug 2026 23:45:00 GMT  
		Size: 409.5 KB (409530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8b618377766eff718bb17e39742741b505fb4385069495aa50bcc472150df8`  
		Last Modified: Tue, 01 Sep 2026 00:01:43 GMT  
		Size: 15.4 MB (15444388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f1ed1f4490ad388667db5fc5f467318afbe87c680145b186e11d7e771a7164`  
		Last Modified: Tue, 01 Sep 2026 00:01:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c7cf0307cda8379d403a16ea221482a1bd7048fe260a3bfde1d83e08d3d802`  
		Last Modified: Tue, 01 Sep 2026 00:32:22 GMT  
		Size: 5.4 MB (5351479 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:951dfb7b6b196b768381c711e0d0a7b532945ca866e405226a737a616309251a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.7 KB (626701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ae636edb1f8f7e4478e98518b11a098b947eb1ecc7caf453daf7975305e0f8`

```dockerfile
```

-	Layers:
	-	`sha256:9d1baed594a0a38b9814307df3e250e7d732e8e7004a743c52df320e49895376`  
		Last Modified: Tue, 01 Sep 2026 00:32:21 GMT  
		Size: 617.3 KB (617309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:344a61444c97c85519fb3d7c7dbe851672ceafa7edef26f59fd65b92dbbe7ac3`  
		Last Modified: Tue, 01 Sep 2026 00:32:21 GMT  
		Size: 9.4 KB (9392 bytes)  
		MIME: application/vnd.in-toto+json
