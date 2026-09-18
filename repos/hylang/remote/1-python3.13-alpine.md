## `hylang:1-python3.13-alpine`

```console
$ docker pull hylang@sha256:0569ab92af98d29e21f5571dacf95bcefc78008bc18430f9033e40b97314b103
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

### `hylang:1-python3.13-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:61456402b4f71f3aa09b512bda72721ce1deaf7177ce480339338cde62e38d3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22258098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29e0ac2f6c1772cfdd92841ee1ab45670bd5bed4b7859667c88ba7a1681f6d5`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:47:45 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:47:45 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:47:45 GMT
ENV PYTHON_VERSION=3.13.15
# Thu, 17 Sep 2026 21:47:45 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Thu, 17 Sep 2026 21:52:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:52:59 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:52:59 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:33 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:33 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95137bf95caa346388294fede3a9b3df6fd7460547d407b3af7263b8e65cc41a`  
		Last Modified: Thu, 17 Sep 2026 21:53:05 GMT  
		Size: 416.3 KB (416264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058223aa38a4061e9b7b2a292791a857956701639a36316323a36086006c7c06`  
		Last Modified: Thu, 17 Sep 2026 21:53:05 GMT  
		Size: 12.6 MB (12640623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3023e46d9af6db8ee061798cd75450ada84984d6c6e778f3483fb6369e2146db`  
		Last Modified: Thu, 17 Sep 2026 21:53:05 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af20916f5be610071e88fc6c29a1d8d1b06f09b3f3f36ab28a3ef9e6b58953d`  
		Last Modified: Thu, 17 Sep 2026 22:35:40 GMT  
		Size: 5.4 MB (5351223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:ebaedb5dd81826eb367edd07e9099340b299e4a847f8ace9f483f8e95640613c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.6 KB (628645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:958ee873e602c9ba64d62719b0a43ce7f3c73cf592706b6ccc7f5cc9334e157d`

```dockerfile
```

-	Layers:
	-	`sha256:672ca3d75d1c3078565af1f5b1da065a49e5a3eb68b0827869f0323cc2cccedc`  
		Last Modified: Thu, 17 Sep 2026 22:35:40 GMT  
		Size: 619.3 KB (619253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e90c4a9711eb855b65c31b55166f7ccdad7c10856cae90bbf515529a8e32759`  
		Last Modified: Thu, 17 Sep 2026 22:35:40 GMT  
		Size: 9.4 KB (9392 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:856877a2cd3e0cdd6043fc679a2f34685e845ad4fd4f2ca78839029cc540c7c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.6 MB (21601820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8267adbf13614666e1bb80ee85eb7720af13859459c2d3aefd69e33804520e4`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:55:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:55:45 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:55:45 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:55:45 GMT
ENV PYTHON_VERSION=3.13.15
# Thu, 17 Sep 2026 21:55:45 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Thu, 17 Sep 2026 22:05:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:05:46 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:05:46 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:48:03 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:48:03 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:48:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:48:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fd6b6bc33036bbd0f008f5f7f5bbfa12f47b23de0f9e60fb0b25d520fdd345`  
		Last Modified: Thu, 17 Sep 2026 22:05:51 GMT  
		Size: 417.5 KB (417505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aada66e31ac8077494100f0fc1c4a0ff00ef778d0fc4f38386d31afa39ad9381`  
		Last Modified: Thu, 17 Sep 2026 22:05:52 GMT  
		Size: 12.3 MB (12277652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d1c645018c53b9e80b1b7e6dc6d6948b691c2fbf11c5c05d2ee0ca5c91960d`  
		Last Modified: Thu, 17 Sep 2026 22:05:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aac0f7e26e42f013fee69c7836eb13a6d6a0981f0bae8a2d34c0a356556fa22`  
		Last Modified: Thu, 17 Sep 2026 22:48:08 GMT  
		Size: 5.4 MB (5351302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:a94b629486ebbea893fcea0fe4ecae3d06c7d69c83c7ff930d075f876d42ed9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:357889f31e13dec5568750ce540e6cb37aafd48d86d73804b14b67c3141f9bb6`

```dockerfile
```

-	Layers:
	-	`sha256:d0fc5206901428c18cf28d50f15062e6b8dd98a698ad12cea173dd74e2b13509`  
		Last Modified: Thu, 17 Sep 2026 22:48:07 GMT  
		Size: 9.3 KB (9289 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:14413b651c446fbdab3460afca68ee773da3813fcdd81aa0e51db4ec76849227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.0 MB (20969668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25bffe45f8a0d001195c122811fcc7f7930401b645a596e1f0cb7b5a224e4c79`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:59:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:59:39 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:59:39 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:59:39 GMT
ENV PYTHON_VERSION=3.13.15
# Thu, 17 Sep 2026 21:59:39 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Thu, 17 Sep 2026 22:07:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:07:43 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:07:43 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:53:03 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:53:03 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:53:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:53:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ac3037da53b7ab4e8061da21ecf17ce2865b01fb5810613bccc0446632830ee`  
		Last Modified: Thu, 17 Sep 2026 22:07:49 GMT  
		Size: 416.4 KB (416411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a14da84b36abd5fcecdc2155b133d7db3d3273418edee7e49be3c9c75b974c15`  
		Last Modified: Thu, 17 Sep 2026 22:07:50 GMT  
		Size: 11.9 MB (11936492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba20899d25856a90a94b53b57cd007e42af89dedd626e3c54e0627dea731c4aa`  
		Last Modified: Thu, 17 Sep 2026 22:07:49 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd98ff660123c361e1a1c55f64af999ad337d0be77220650e64cc66a42de9eb`  
		Last Modified: Thu, 17 Sep 2026 22:53:09 GMT  
		Size: 5.4 MB (5351315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:f0a8c3f89f256ed2356686f49e7bf8729c8538580dd42b41118c76a976cd9686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.2 KB (631165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c6085507c04dc030ffd51d2612ffe7a18834be5e9316fc12f8f691b49acfaf`

```dockerfile
```

-	Layers:
	-	`sha256:b565d7ae99729987ea6cbe03289f6750e66abc53eaa5564b49c48cfd15693132`  
		Last Modified: Thu, 17 Sep 2026 22:53:09 GMT  
		Size: 621.7 KB (621661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2423919f070b380caace2d3783ff4bf6cd8addf0e2d817ddf2bda9a0c93a97ec`  
		Last Modified: Thu, 17 Sep 2026 22:53:08 GMT  
		Size: 9.5 KB (9504 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:5843e002619ac9aa88ff86750d46171a6020f5473d0af0010039f0802fa5bd8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.7 MB (22711029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff815b08d66248957e473a29ad11bfcdd9d81b55f445140bff133e9d8ad86314`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:48:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:48:36 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:48:36 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 17 Sep 2026 21:48:36 GMT
ENV PYTHON_VERSION=3.13.15
# Thu, 17 Sep 2026 21:48:36 GMT
ENV PYTHON_SHA256=1e66a7945a48390ee4c2a4268a0e4185884059a13c4aab6d148aa208deea4a76
# Thu, 17 Sep 2026 21:58:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:58:40 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:58:40 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:59:53 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:59:53 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:59:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:59:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99ba33e5a626c89fd05341a46141622fdba04755d81dcf2966f290b47a3e9ad`  
		Last Modified: Thu, 17 Sep 2026 21:51:24 GMT  
		Size: 419.1 KB (419101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ae09342b2a0384890f7912adfc7bc029a92ec3f2fa249caa836e51c40a361a`  
		Last Modified: Thu, 17 Sep 2026 21:58:47 GMT  
		Size: 12.8 MB (12752623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8bd25f57471ab2409f6385ad7c2e95c6bba52bc78c001b63b73971be4313f5`  
		Last Modified: Thu, 17 Sep 2026 21:58:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa893261b4d6f43f3776e35e8df72c179ab98407b56ad64ab8432dc3bfddb946`  
		Last Modified: Thu, 17 Sep 2026 22:59:59 GMT  
		Size: 5.4 MB (5351398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.13-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:e2aab9238f2702904891db11a0f8fa8e3997585212e4c5f13de146cf9b79dea5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.3 KB (628251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ade9c3f9f1ea95bbbc200f908b1058f24c8c4d92a2afe3bbb9002e7be02773`

```dockerfile
```

-	Layers:
	-	`sha256:07f7c6957559626103e81ebad85c9ade6334df24dbd3cd702619a404f624a19b`  
		Last Modified: Thu, 17 Sep 2026 22:59:58 GMT  
		Size: 618.7 KB (618707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc8e1285e57e5703b145d4afab27c233567a3927d3837a2639773b76df4faa89`  
		Last Modified: Thu, 17 Sep 2026 22:59:58 GMT  
		Size: 9.5 KB (9544 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.13-alpine` - linux; 386

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

### `hylang:1-python3.13-alpine` - unknown; unknown

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

### `hylang:1-python3.13-alpine` - linux; ppc64le

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

### `hylang:1-python3.13-alpine` - unknown; unknown

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

### `hylang:1-python3.13-alpine` - linux; riscv64

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

### `hylang:1-python3.13-alpine` - unknown; unknown

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

### `hylang:1-python3.13-alpine` - linux; s390x

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

### `hylang:1-python3.13-alpine` - unknown; unknown

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
