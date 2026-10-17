## `python:3-alpine3.24`

```console
$ docker pull python@sha256:5a02b6cf2cc372357e17ffde3f5f87afa4659a783d949d8320c005f506cf11e9
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

### `python:3-alpine3.24` - linux; amd64

```console
$ docker pull python@sha256:ff95aad772d41f11f6aa513d1955843e7dac0749b34b07d467822b75303b2b03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22257777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c94b9cf3b01531c3a28f55ba23b2dfaaf9afc84175978539a45f86e442eba521`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 22:21:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:21:52 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Fri, 16 Oct 2026 22:21:52 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:21:52 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:26:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:26:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:26:54 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51237b591007142f90bef51281ebde3d328de8b97275f13e17662f42395a6d29`  
		Last Modified: Fri, 16 Oct 2026 22:24:26 GMT  
		Size: 416.3 KB (416301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254a8b2505f2af851fe3dd66e2bc78264a86ba34f0a886359921f4512c5338fb`  
		Last Modified: Fri, 16 Oct 2026 22:27:01 GMT  
		Size: 18.0 MB (17991490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ed4c773e9dd20638f7282dddeb79ad401a44f727ca9dbdc0e04b63413db822`  
		Last Modified: Fri, 16 Oct 2026 22:27:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:3-alpine3.24` - unknown; unknown

```console
$ docker pull python@sha256:e2c63ef055bb718fea6863c033400aaa4a2e248ca41a6b5c0914089b5f6645e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.6 KB (644593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57c4e19db835303e7fb44706edbdf9d67d6f4d68a4635f663b096bcc1ce24b0d`

```dockerfile
```

-	Layers:
	-	`sha256:f1302ae8be98dfff69a9cf7cd3b83c01e10fccdd6338a8f83b07e20ebeec7b29`  
		Last Modified: Fri, 16 Oct 2026 22:27:01 GMT  
		Size: 621.8 KB (621823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8b50df9f7bfec227e9bbddbb364607543d71aed218cdea17d4f397b8f8129ef8`  
		Last Modified: Fri, 16 Oct 2026 22:27:00 GMT  
		Size: 22.8 KB (22770 bytes)  
		MIME: application/vnd.in-toto+json

### `python:3-alpine3.24` - linux; arm variant v6

```console
$ docker pull python@sha256:404ef1912596bf8d0c3e5164d98fa7ada8a90507c34dfb9877efa89d91b558b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19336752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1320f5e37ead191dc0b43499e70500a0214c6df7788643f982e1117777964e69`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:32:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:32:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:32:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:32:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:35:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:35:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:35:26 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78db627e690b8097d3659a1df63a332071c3383fe2057ec2b9ccbb519194aa8`  
		Last Modified: Thu, 01 Oct 2026 21:35:31 GMT  
		Size: 417.5 KB (417530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87d9a333e2d13b8ceab0027a745d615d54e7b4fbe4dfe3de392f6bf986924769`  
		Last Modified: Thu, 01 Oct 2026 21:35:32 GMT  
		Size: 15.4 MB (15363860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f3771ae0bcd2d4afc40e9bb73f8737a75600beeeae6ebc4ffc3da3476cf556`  
		Last Modified: Thu, 01 Oct 2026 21:35:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:3-alpine3.24` - unknown; unknown

```console
$ docker pull python@sha256:2150b53bf7e6bfa0dbf5ab66220204bb44ee0ab6aab42a3048d92b02dc9ab382
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.6 KB (22610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cc37978076fda8492dd3cc8f8b2be62c7c2d6e10ef85cf27cfe0b07b485664`

```dockerfile
```

-	Layers:
	-	`sha256:41186b6b1b2b86aaf975a79a44dd4de6c9ed3a964263f7114fb28ded57d8ba25`  
		Last Modified: Thu, 01 Oct 2026 21:35:31 GMT  
		Size: 22.6 KB (22610 bytes)  
		MIME: application/vnd.in-toto+json

### `python:3-alpine3.24` - linux; arm variant v7

```console
$ docker pull python@sha256:ea3d659b88e8e1e6822fc416d2755bcef054f0d258237e14a68e435da4c2166e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18484981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3d17ac8deecf107dd476ca4a5abde2201dd5ac4ae7f21485e7c464461fa99c9`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:40:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:40:57 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:40:57 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:40:57 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:43:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:43:44 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:43:44 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea01aab9745235f8578c4919664b12da82c4fb9d83fc5f666b2715834b01b983`  
		Last Modified: Thu, 01 Oct 2026 21:43:51 GMT  
		Size: 416.4 KB (416402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fee084e3ea65758f71bb171c5fdcf28cb7ab66020b83ccd860bd8537c18c618`  
		Last Modified: Thu, 01 Oct 2026 21:43:51 GMT  
		Size: 14.8 MB (14803131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee46c7dec0caacc4b9fd258f0ffe3068f0ec246941ba8fb544350a748caa7574`  
		Last Modified: Thu, 01 Oct 2026 21:43:50 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:3-alpine3.24` - unknown; unknown

```console
$ docker pull python@sha256:f658510084553306c6d995a6bb5fb330af25497118a677b58d748a7370502a1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.8 KB (639816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62415ddf4f61ba9c2a00be3b96e6380f1e7ccf69b18dc032ca9c364292fa68ae`

```dockerfile
```

-	Layers:
	-	`sha256:606071ec4bec6c010ba55850eee263af09b921514dea427e319aebc50a7a227e`  
		Last Modified: Thu, 01 Oct 2026 21:43:51 GMT  
		Size: 617.0 KB (616991 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a38ea9c4c7e6f0bf939b10776f007d162ecef416d8152c0631eaf3add37ef2e5`  
		Last Modified: Thu, 01 Oct 2026 21:43:50 GMT  
		Size: 22.8 KB (22825 bytes)  
		MIME: application/vnd.in-toto+json

### `python:3-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull python@sha256:48e36f31b62575b7ce08dc0e05769ac944baf8073b0f96c04bb1b2d1595a91bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22901110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fd67544186c09d3f2a9f3448c6439f53759c544f30eb7369aec276a19873e87`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 22:24:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:24:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Fri, 16 Oct 2026 22:24:25 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:24:25 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:27:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:27:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:27:06 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5034c4531f9e39c3c4ebb3611795f31889485e7e873a70ed41bce9549b5a874`  
		Last Modified: Fri, 16 Oct 2026 22:27:13 GMT  
		Size: 419.1 KB (419124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f7643a9c530a2250e03cec3170d8e6fc031955ca2424865e34bdeb587f1589`  
		Last Modified: Fri, 16 Oct 2026 22:27:14 GMT  
		Size: 18.3 MB (18294077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6899df73a8ac68c8deb3a77d1039df160122b381bfe45d7182d4189655a55511`  
		Last Modified: Fri, 16 Oct 2026 22:27:13 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:3-alpine3.24` - unknown; unknown

```console
$ docker pull python@sha256:d2ed998f25e1181f641f70493c5eaf3e8e57a0b6d26bd4e1a0f2ea8369be60c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.2 KB (644229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f461e6a72d3efc5fffd4a8d491370344470f972d0f6ce84b0df6122ec28d9afd`

```dockerfile
```

-	Layers:
	-	`sha256:959d5a3b4345bf352b0c4170653b7a4e5346a872fb714819512f87b6eea51a60`  
		Last Modified: Fri, 16 Oct 2026 22:27:13 GMT  
		Size: 621.3 KB (621277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee0189825cc67b2dda09c5ee3ff1632b7c4510ca13c4b3ff90c80ae8ba32209e`  
		Last Modified: Fri, 16 Oct 2026 22:27:13 GMT  
		Size: 23.0 KB (22952 bytes)  
		MIME: application/vnd.in-toto+json

### `python:3-alpine3.24` - linux; 386

```console
$ docker pull python@sha256:80a482842225bff6ef168b87e43c9fb0d0a2dbbaa749e187374fb6428c2a144b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20268298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11c5c76fc1ae177b7bedf0b55ced3e1ce3e8aaa77dad669a527ba2c9539f1246`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:32 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:32 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:32 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:09 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:09 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d8510a61682d3a5ac5cf98449e15e39b390225a3341a36c13ad97c03dd88c3`  
		Last Modified: Thu, 01 Oct 2026 21:36:16 GMT  
		Size: 416.9 KB (416883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94cac76eb53adda7b06c99877585736e8576ff39fe0e405b872d76cccd5db804`  
		Last Modified: Thu, 01 Oct 2026 21:36:16 GMT  
		Size: 16.2 MB (16174385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b523f4f293f8a3d8789b056f734bbc826ed6e9c041a88ef6bcfb574a73b9121`  
		Last Modified: Thu, 01 Oct 2026 21:36:16 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:3-alpine3.24` - unknown; unknown

```console
$ docker pull python@sha256:611445f68c04cf14ab805bd791cdd34bb01e88d54b9a697898181f69a242df7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.2 KB (637168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97fb1b51190b82ce1e37593387d7496fc569ce38d94f03cefbb65b59a0787004`

```dockerfile
```

-	Layers:
	-	`sha256:3703c3649eced7a49bb52e5a23fabb1ae32297de0d9f6aa88129cfd5071a0f27`  
		Last Modified: Thu, 01 Oct 2026 21:36:16 GMT  
		Size: 614.5 KB (614538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:479eae82fce5ac885a57531eb114699601082a3a5106d308fedcaa340e077dc0`  
		Last Modified: Thu, 01 Oct 2026 21:36:16 GMT  
		Size: 22.6 KB (22630 bytes)  
		MIME: application/vnd.in-toto+json

### `python:3-alpine3.24` - linux; ppc64le

```console
$ docker pull python@sha256:8f2a28d33c1343a10aa735ba290819d625280d461380bae087a005916b0ea66d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21086040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8989d684f00b52acd371d33c8ff6600a5e25c0da7be519e13c2bc0ed8495eb03`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 22:46:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 22:46:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 22:46:54 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 22:46:54 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 22:50:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:50:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:50:57 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c0d82cb49a6e98be9b2386af86988d7016f7feef52a57081fc28e490ef0496`  
		Last Modified: Thu, 01 Oct 2026 22:51:14 GMT  
		Size: 419.5 KB (419517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02652229bc9a6ddc5759426a566b64589ab420a854c5c65335e7a7aa92a45ed0`  
		Last Modified: Thu, 01 Oct 2026 22:51:15 GMT  
		Size: 16.8 MB (16848797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc571471264bc0f7d970f92215a31caa10c638abd8e5c1179d4187478115377`  
		Last Modified: Thu, 01 Oct 2026 22:51:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:3-alpine3.24` - unknown; unknown

```console
$ docker pull python@sha256:feba70fa9ab603e0be434dd0be01b7634a75301fdd61e2d3d650db01ceff80b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.7 KB (636749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ba90147016fc183b9eb2eaa97223fc02f1703ee98bc7554ad1157156e44336`

```dockerfile
```

-	Layers:
	-	`sha256:38d4413e3d76b6e52cd81d90de5c81f349bb0700ab72a96cebc34625571c3dff`  
		Last Modified: Thu, 01 Oct 2026 22:51:14 GMT  
		Size: 614.0 KB (613990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c95b280cc3f9ef3f28129bdc2066ce4d5cc02d37e1be720fea4e16df165d85bb`  
		Last Modified: Thu, 01 Oct 2026 22:51:14 GMT  
		Size: 22.8 KB (22759 bytes)  
		MIME: application/vnd.in-toto+json

### `python:3-alpine3.24` - linux; riscv64

```console
$ docker pull python@sha256:c043d26f50d9380bec1b2709f395ccea84d39b928d804fa83f63ac200ac71ee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20517930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3005f10666c0241eb99a9df378a2c4e36dcc7ac1e10b568471eb676bf070f55a`
-	Default Command: `["python3"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sun, 04 Oct 2026 00:51:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 04 Oct 2026 00:51:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Sun, 04 Oct 2026 00:51:09 GMT
ENV PYTHON_VERSION=3.15.0
# Sun, 04 Oct 2026 00:51:09 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Wed, 14 Oct 2026 11:18:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 14 Oct 2026 11:18:36 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 14 Oct 2026 11:18:36 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091ed96fffe6fbbf2a3b85a5196d329f06ddce61dd3f330e38cd3d9e0f59c61d`  
		Last Modified: Sun, 04 Oct 2026 01:36:08 GMT  
		Size: 416.8 KB (416756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba1d6cbe781fd54b1e59bc889f0205bff97fe1f70a8de61f0551e62a8af6b69`  
		Last Modified: Wed, 14 Oct 2026 11:19:28 GMT  
		Size: 16.5 MB (16525553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1541bd42ae34e1b06473368be5a5bfeb563139b0a823173397674a1a480cb0`  
		Last Modified: Wed, 14 Oct 2026 11:19:25 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:3-alpine3.24` - unknown; unknown

```console
$ docker pull python@sha256:7abe6a821b94c5b61e836b615745504f926a439033f83f5b6d9a12a53d0adb09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.7 KB (636744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e3ab326cb76ac7e2c5d5295870bb1a13f5e620b10967ca05df06827d00bb495`

```dockerfile
```

-	Layers:
	-	`sha256:ff7a0bc80edc4e024484982b84b460b806c962f34fcc7e5740a1517efb215d18`  
		Last Modified: Wed, 14 Oct 2026 11:19:26 GMT  
		Size: 614.0 KB (613986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e32b2a96e39f02b573aa6c5da0f7e84fc4f30030b9b195d89c1703de6cdc5282`  
		Last Modified: Wed, 14 Oct 2026 11:19:26 GMT  
		Size: 22.8 KB (22758 bytes)  
		MIME: application/vnd.in-toto+json

### `python:3-alpine3.24` - linux; s390x

```console
$ docker pull python@sha256:e130c858bbe8de969e3c2bb9fd4835795c47fbdbc0e97ae2b7e3c5f1f56668ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22514552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:302a760980b2b317be33f09af17ae47e7cdd62fa882b36d124b029eb5ac0b5cb`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 22:24:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:24:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 12 Oct 2026 22:24:58 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:24:58 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:34:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:34:24 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:34:24 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f446bdb492edc09a65bf3b817e2656ceb07e5e3551682cb87fbd4c783b5ba75`  
		Last Modified: Mon, 12 Oct 2026 22:30:14 GMT  
		Size: 417.4 KB (417447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99ac5cae45839839505f753ce331d0284165de569a399bca82daf8d58fd342e`  
		Last Modified: Fri, 16 Oct 2026 22:34:35 GMT  
		Size: 18.4 MB (18381518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaeaf9a69f079c6c3b2bb9f02bb0ceb57359efcc32a7776cf4d22255f5661b3c`  
		Last Modified: Fri, 16 Oct 2026 22:34:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:3-alpine3.24` - unknown; unknown

```console
$ docker pull python@sha256:b68b0878f1a304656b91e1013dc382fdc8fc0baaddcca69ca5b0eae8f76ca253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **643.9 KB (643943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94a3a3d2d0d223af8cb734ec680e46350ab1c8bfb356c7cf084403737edf35b`

```dockerfile
```

-	Layers:
	-	`sha256:68251444bba0866dad9c13312fe15cbb557888706a783e6980eb99725b571ea5`  
		Last Modified: Fri, 16 Oct 2026 22:34:35 GMT  
		Size: 621.2 KB (621172 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:383f12aaa6b2e5d0b30b2d31e2f9f6496e21dfdfec63058d7399640cd0fa347d`  
		Last Modified: Fri, 16 Oct 2026 22:34:35 GMT  
		Size: 22.8 KB (22771 bytes)  
		MIME: application/vnd.in-toto+json
