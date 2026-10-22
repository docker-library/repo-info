## `hylang:python3.12-alpine`

```console
$ docker pull hylang@sha256:4b2d03c7c08345bc96bd74e95c83cea4b5960be99c48c633ca529bd7116388d5
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

### `hylang:python3.12-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:307d9f370c45a26d83f582e514965b87a88e7182a42149aa94880a0a0af94be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23378176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4f2bd7dc81ba9cdde49ed949bfa8b3a8424a9fc6b86c853ec4520150ede59fe`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:59:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 22:59:17 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:59:17 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 22:59:17 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 22:59:17 GMT
ENV PYTHON_VERSION=3.12.15
# Wed, 21 Oct 2026 22:59:17 GMT
ENV PYTHON_SHA256=c2c4321961fab0fb999d66e0cecf521c2ab3994c7992873ea99e306c1094fd5a
# Wed, 21 Oct 2026 23:04:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:04:22 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:04:22 GMT
CMD ["python3"]
# Wed, 21 Oct 2026 23:40:51 GMT
ENV HY_VERSION=1.3.1
# Wed, 21 Oct 2026 23:40:51 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 21 Oct 2026 23:40:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 21 Oct 2026 23:40:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6505b46c81c2f2e17de7ef7fcfe645c68e055dc0a7573a3a5e610b1e2e4a299f`  
		Last Modified: Wed, 21 Oct 2026 23:04:29 GMT  
		Size: 412.0 KB (412017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37737182bc17ec146b765dac3e7b5796ff774014fd61ac969bf177241d04a819`  
		Last Modified: Wed, 21 Oct 2026 23:04:29 GMT  
		Size: 13.8 MB (13777079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a526054cd95b7ad4bb7cce9c5c6d27dcc22e8e82e6b71d96e4d7093e776af3`  
		Last Modified: Wed, 21 Oct 2026 23:04:29 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42c51ac33e6d96d862279389e83c2e90f44512f5f51ba68a314a51995266dd3d`  
		Last Modified: Wed, 21 Oct 2026 23:40:56 GMT  
		Size: 5.3 MB (5335724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:da56838a7a26bc54322ad3e4c0f6793760b23b9ee303e240049e5d2f95ddd6a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.7 KB (644705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2559f85738ac6c15ec5d6604846c7839645fa0dd0372d1b1c19cb2341b1e1d55`

```dockerfile
```

-	Layers:
	-	`sha256:0aa96359992e095eef09a571731253ef9ac803c5d8301e9875f35d100cb8705c`  
		Last Modified: Wed, 21 Oct 2026 23:40:57 GMT  
		Size: 635.3 KB (635298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ac4ac89839f68aa99238bcadfd4a4c379bced2b18fb44d5ef2c0df66fc8f71e`  
		Last Modified: Wed, 21 Oct 2026 23:40:56 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:25c6901f9129ee504cd29559055364db3240f7addb21f5b6789069cdca3566da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 MB (22645563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ce38a87724238c2db2e098b51551d441ca08b3c2835af01ec00cc91f1572c2b`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:32:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:32:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:32:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 23:32:40 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 23:32:40 GMT
ENV PYTHON_VERSION=3.12.15
# Wed, 21 Oct 2026 23:32:40 GMT
ENV PYTHON_SHA256=c2c4321961fab0fb999d66e0cecf521c2ab3994c7992873ea99e306c1094fd5a
# Wed, 21 Oct 2026 23:39:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:39:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:39:41 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:19:19 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:19:19 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:19:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:19:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e818e9bfc8e646bc353ca7fd0487ac9bb0093f61bc8da8d3d97df7f7519fd73`  
		Last Modified: Wed, 21 Oct 2026 23:39:46 GMT  
		Size: 413.7 KB (413736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d0b12bae100ef9b51e1a023ea4c6403607a2503974f28a028d3f03759f40ac`  
		Last Modified: Wed, 21 Oct 2026 23:39:46 GMT  
		Size: 13.3 MB (13337321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18944fa613ef6e1d1e6ed45dec72675d8f966986748de0f7266ee9ac352df3ca`  
		Last Modified: Wed, 21 Oct 2026 23:39:46 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e780fe086639c28efba1c0c3d1f69acaf9e5f9ae6b5bec4130f814de485a6087`  
		Last Modified: Thu, 22 Oct 2026 00:19:23 GMT  
		Size: 5.3 MB (5335966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:90d76f43b91ceeeb1c6243a1b53fbb87cd5ac96c668cb0cfc78b9b99bce92a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbe276c65c8519a941250500df77e8e24e37409970a5c523c3bdd964805da645`

```dockerfile
```

-	Layers:
	-	`sha256:af553bdd8cca528f864280dfe2f71b8fa8e2e78e141fa803170dda0982f56647`  
		Last Modified: Thu, 22 Oct 2026 00:19:23 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:2041eba1629f417a72a41bcc46ddb78073e11ca17bbd10e2b46eec05e062a6ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.0 MB (21950967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55fddc7e3e768623dc09ddfd6930c5b1f08ec3bfe4973825992ddc8af66846a0`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:38:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:38:40 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:38:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 23:38:40 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 23:38:40 GMT
ENV PYTHON_VERSION=3.12.15
# Wed, 21 Oct 2026 23:38:40 GMT
ENV PYTHON_SHA256=c2c4321961fab0fb999d66e0cecf521c2ab3994c7992873ea99e306c1094fd5a
# Wed, 21 Oct 2026 23:45:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:45:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:45:55 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:31:37 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:31:37 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:31:37 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:31:37 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc9e240f4ef51ef2ec262f6b9aff85888ad58433ea3c4968a01d0c3fcb8a57b`  
		Last Modified: Wed, 21 Oct 2026 23:46:01 GMT  
		Size: 412.4 KB (412410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f605152870bdb7b67e4c7a238359518b05c1be23ac045f812964aff8105f238`  
		Last Modified: Wed, 21 Oct 2026 23:46:01 GMT  
		Size: 12.9 MB (12935583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2433664521826272a871f02fe2b36cb4ebb87b711663c720f6e8e587209bcaf3`  
		Last Modified: Wed, 21 Oct 2026 23:46:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc6f05680940051ac6abfe756f4e79aa8b6dc5925f92554612686537d37dba4`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 5.3 MB (5336065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:3dc288c213c2f25f7ae2ccb6861f2173dd1ed6b604cdb28622d8a1afcc07121f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.2 KB (647225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d3c0b1dfb33ee780d0e431d7028ebcfbe0382ca87ce9e630471aa74c232520`

```dockerfile
```

-	Layers:
	-	`sha256:42ba3401c5b670eea7a5aaca22c0ee63c2a7bc9dcd2a9d37ca30d4291f40e5b2`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 637.7 KB (637706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b72bfb8ea1ae31fb87cea2a9fcf7798733a9bdfc4b01bf767ac678f616739a83`  
		Last Modified: Thu, 22 Oct 2026 00:31:43 GMT  
		Size: 9.5 KB (9519 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:f392a7dcb2327350ae42b8f46b53ceccdaf55f64fe5d382762c65f4fc18ed7e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23860356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c837f6e69782a346c00494824f78d9935b23a87a39f49d8018adfd88611ecc`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:24:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:24:09 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:24:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 23:24:09 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 23:24:09 GMT
ENV PYTHON_VERSION=3.12.15
# Wed, 21 Oct 2026 23:24:09 GMT
ENV PYTHON_SHA256=c2c4321961fab0fb999d66e0cecf521c2ab3994c7992873ea99e306c1094fd5a
# Wed, 21 Oct 2026 23:30:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:30:36 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:30:36 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:31:21 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:31:21 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:31:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:31:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b55611a4e007c236d30ff447cd9fd97bae2579b14b4e0063a2b6a325af4ba7`  
		Last Modified: Wed, 21 Oct 2026 23:30:43 GMT  
		Size: 415.6 KB (415559 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb1727fb8fbe0fe413f73e7857eb1de4b90e134c039daed4fe3bd524c93cc21`  
		Last Modified: Wed, 21 Oct 2026 23:30:44 GMT  
		Size: 13.9 MB (13918245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0145d2e04ce88ed6ddc5bd437750e9c1b6285b98328a2110f526820cf07197`  
		Last Modified: Wed, 21 Oct 2026 23:30:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33802514152c7d188d49ece20db8af399756ce6323b23c5cc59b4a9df3863ba0`  
		Last Modified: Thu, 22 Oct 2026 00:31:27 GMT  
		Size: 5.3 MB (5335815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:5746d083e47cd0cfdbd91a740440b5a50f823462c843921944bdc15486dada80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.3 KB (644311 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dab05153715e50ca09a05ff35a295f728b86527f18574f666966f2db510386d`

```dockerfile
```

-	Layers:
	-	`sha256:4f208cb13e30c8a355b91af5c57b07a39882e20c47ab0c14002e9a957a3f9cf3`  
		Last Modified: Thu, 22 Oct 2026 00:31:27 GMT  
		Size: 634.8 KB (634752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96fcebee0bd4e7f44ba435389eb7c5a3a625df1b30dbfba5047eebf0844b6a17`  
		Last Modified: Thu, 22 Oct 2026 00:31:26 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; 386

```console
$ docker pull hylang@sha256:2dab55b7cdc4b5f2b8c8a9e9cc34a88c55134b662fe2f0ba0b2c103c40eb8085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23415393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b846bc420056c14238e14f6804e7619aca3263609ea46f9300a17cba026c7049`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:21:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:21:26 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:21:26 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 23:21:26 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 23:21:26 GMT
ENV PYTHON_VERSION=3.12.15
# Wed, 21 Oct 2026 23:21:26 GMT
ENV PYTHON_SHA256=c2c4321961fab0fb999d66e0cecf521c2ab3994c7992873ea99e306c1094fd5a
# Wed, 21 Oct 2026 23:26:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 21 Oct 2026 23:26:32 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 21 Oct 2026 23:26:32 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 00:22:18 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 00:22:18 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 00:22:18 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 00:22:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c44e1ff4276533029a0ab91816657db26bc0487b7c968fb04db07c96d120d6`  
		Last Modified: Wed, 21 Oct 2026 23:26:38 GMT  
		Size: 412.8 KB (412836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39be39f87bb7fbb6842efad3323e0f31b03bac288ea3a409f89f8460e0cf4c38`  
		Last Modified: Wed, 21 Oct 2026 23:26:38 GMT  
		Size: 14.0 MB (13987503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4077e8c53e8e9b6f7758015908410ada57cd6dfebffa204e8df3e8ebdd1228`  
		Last Modified: Wed, 21 Oct 2026 23:26:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc67e67d39556bafa786b4c39ae16b10a2362b157a2b0597735f202c8092ead`  
		Last Modified: Thu, 22 Oct 2026 00:22:24 GMT  
		Size: 5.3 MB (5335810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:2bc2a214feba403164f7e603725ea95b45905ccd343f085d409f5a064c0644ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.6 KB (644608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40c096da30f1b17427bc40d4dd9a3b5138a0abbdf3eb8df8ea43439e304eab38`

```dockerfile
```

-	Layers:
	-	`sha256:3ee8ccd39dce1c8f9e14f7980a018577d66c84dd0c4721388c51738636fd8d1d`  
		Last Modified: Thu, 22 Oct 2026 00:22:24 GMT  
		Size: 635.3 KB (635253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:188c4c8e033231e7c087fa14faa48db554e565e322ba0316ab1fc4c826a52616`  
		Last Modified: Thu, 22 Oct 2026 00:22:24 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:6e0a11112936b62ce53a4fd3dd07e5b48972fe146792aa15a8a914dce0654ddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24206917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4c304f84cd62dc9a4366db641c73a07a2231fc888416bcdee74136973d7095`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 14:19:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Oct 2026 14:19:32 GMT
ENV LANG=C.UTF-8
# Thu, 22 Oct 2026 14:19:32 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 22 Oct 2026 14:19:32 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Thu, 22 Oct 2026 14:19:32 GMT
ENV PYTHON_VERSION=3.12.15
# Thu, 22 Oct 2026 14:19:32 GMT
ENV PYTHON_SHA256=c2c4321961fab0fb999d66e0cecf521c2ab3994c7992873ea99e306c1094fd5a
# Thu, 22 Oct 2026 14:31:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 14:31:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 14:31:52 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 18:31:10 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 18:31:10 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 18:31:10 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 18:31:10 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a68b344c931f49bdd195295f5bda2592b5eebd0b64cd50f58b1c2c73f4d6a8`  
		Last Modified: Thu, 22 Oct 2026 14:32:14 GMT  
		Size: 416.0 KB (416049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91cded997f4b3b16c0dd1527681a3d6b466df5910ded3d923e378f7f916e866f`  
		Last Modified: Thu, 22 Oct 2026 14:32:14 GMT  
		Size: 14.6 MB (14633659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54d8a6356d76b8ae71d7845822cdaf0042b72fc1e1045929b7870457012a178`  
		Last Modified: Thu, 22 Oct 2026 14:32:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1426a72d0a03371070e8dddccd081cba1db09d678ec57591cbfabd3fce540de`  
		Last Modified: Thu, 22 Oct 2026 18:31:30 GMT  
		Size: 5.3 MB (5336139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:9deaabe1f32714c337820f48b4ed61e48b31f410d35d9abba6349c268c5e4218
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.2 KB (644180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54d2ca556ee8358dc4cd7b0dae061206aa0cef79b6054ecdaec78c4f2de0e8a`

```dockerfile
```

-	Layers:
	-	`sha256:5e48354c80ab494d40666705218e67cc41d2ee3de7ed0f090821d9ea0bfc3550`  
		Last Modified: Thu, 22 Oct 2026 18:31:26 GMT  
		Size: 634.7 KB (634705 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:550ef21392836882ca2f25f5ac624d54f0588c5ecf92a92c95be952af24c5788`  
		Last Modified: Thu, 22 Oct 2026 18:31:24 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:087c1fca2cb86ea8f79129055badb2ab5505807e29aeb0e3a3d49d1542e44127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25307587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6946d8bfa3260b9445ed5f3c5fb7c32c60a8eec99fd2118ba2ac07a0a0f9517b`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sun, 04 Oct 2026 10:50:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 04 Oct 2026 10:50:09 GMT
ENV LANG=C.UTF-8
# Sun, 04 Oct 2026 10:50:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Sun, 04 Oct 2026 10:50:09 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Sun, 04 Oct 2026 10:50:09 GMT
ENV PYTHON_VERSION=3.12.15
# Sun, 04 Oct 2026 10:50:09 GMT
ENV PYTHON_SHA256=c2c4321961fab0fb999d66e0cecf521c2ab3994c7992873ea99e306c1094fd5a
# Sun, 04 Oct 2026 11:26:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sun, 04 Oct 2026 11:26:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 04 Oct 2026 11:26:35 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 03:01:36 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 03:01:36 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 03:01:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 03:01:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af743be6fd3d1b0683fb3d3537a5430664a9a3b97809c76c49240d723cf9d812`  
		Last Modified: Sun, 04 Oct 2026 11:27:36 GMT  
		Size: 416.8 KB (416760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd84bc57424e1ccfc4abbf2a8166435b459235917e10d38b3980b8291af51c6`  
		Last Modified: Sun, 04 Oct 2026 11:27:39 GMT  
		Size: 16.0 MB (16037706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891bec476cae81a6d4bcbcbe6e746c39994176ca57b1f3c1412d517bcf3519b2`  
		Last Modified: Sun, 04 Oct 2026 11:27:36 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889cbdc54d1a38da4d2a00d39b82e0e3a62017e9c6f52e1b279d29cd530fa097`  
		Last Modified: Mon, 05 Oct 2026 03:02:25 GMT  
		Size: 5.3 MB (5277500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:8b6cbdd9a64e2227af002bb524bfd4854f36dd55c91f3b3cec95aa889157d182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.1 KB (646113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5aa54757b060041930a77c23e97b37386af6235cbbffcc34426816da1a35f8f`

```dockerfile
```

-	Layers:
	-	`sha256:8cad9c7022f41b11057f3dea82a9fca3a813ea3206b8a3dc8a6c97c2badfb08d`  
		Last Modified: Mon, 05 Oct 2026 03:02:25 GMT  
		Size: 636.6 KB (636638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e6901ed881054ff83776c0b88557dcc3f9bd3d2fe0daa4b652ce14ca81e1929`  
		Last Modified: Mon, 05 Oct 2026 03:02:24 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.12-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:b1637b5aabb12a1519eb9d39f6c844991dbe5386fb58024651601a6553711c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23772057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:385ae213f94fe32da5eda6b1bc2913ea1a704d5096f8a2295812843b54e14a35`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:54:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 23:54:33 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 23:54:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 23:54:33 GMT
ENV GPG_KEY=7169605F62C751356D054A26A821E680E5FA6305
# Wed, 21 Oct 2026 23:54:33 GMT
ENV PYTHON_VERSION=3.12.15
# Wed, 21 Oct 2026 23:54:33 GMT
ENV PYTHON_SHA256=c2c4321961fab0fb999d66e0cecf521c2ab3994c7992873ea99e306c1094fd5a
# Thu, 22 Oct 2026 00:00:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 22 Oct 2026 00:00:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 22 Oct 2026 00:00:37 GMT
CMD ["python3"]
# Thu, 22 Oct 2026 01:19:29 GMT
ENV HY_VERSION=1.3.1
# Thu, 22 Oct 2026 01:19:29 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 22 Oct 2026 01:19:29 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 22 Oct 2026 01:19:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c1bc473c6fa284c3e70053419acdf8029a009f56a88e8b627d81ffa71abdf9`  
		Last Modified: Thu, 22 Oct 2026 00:00:53 GMT  
		Size: 413.4 KB (413422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1b16ed5e7b6e7118d3c39749b2f13f2c1a30c15799c958cf8a0c93410ecca2`  
		Last Modified: Thu, 22 Oct 2026 00:00:50 GMT  
		Size: 14.3 MB (14303132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81f0cfd468ea6aac87368d4001f3e125e1f35bf69dd3f2f2d504ed4d893a53c`  
		Last Modified: Thu, 22 Oct 2026 00:00:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6695456e8c6ef7e5e2bbea84e0e145a349ce5d1ab44176cf2c0a8ac7ba59de2`  
		Last Modified: Thu, 22 Oct 2026 01:19:39 GMT  
		Size: 5.3 MB (5335546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.12-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:9a2ef89525ab0e6b27f9633685d0c4ef32063521d6cd17a4a73ced72841c6f64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.1 KB (644054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10ef6471569074b953cfc1c3c0edaf42562318bd77c4a292049004eb763511ac`

```dockerfile
```

-	Layers:
	-	`sha256:17286e2f68cf6e2de288a13df1c6eb17966378c4b014635163990d023f70405e`  
		Last Modified: Thu, 22 Oct 2026 01:19:38 GMT  
		Size: 634.6 KB (634647 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e23e1b71cbfc97a01b30f150c3133f0562c7e33f9aab13cb697d92216402b867`  
		Last Modified: Thu, 22 Oct 2026 01:19:38 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json
