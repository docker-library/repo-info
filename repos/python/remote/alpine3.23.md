## `python:alpine3.23`

```console
$ docker pull python@sha256:d1b9d2a0650858ad3810864f50c8164f5712b31ebf7f4c45a747742189be6a95
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

### `python:alpine3.23` - linux; amd64

```console
$ docker pull python@sha256:c2a9b6a2acc9ae4e4b921365d25bd6928f89f3d5e95f836ac9f2b32a648fa1f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.2 MB (22245080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce5a8c70bf150cb417cefde98ffc4338ab9aa47c00f53bd4d719b671ba1dd71e`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 22:25:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:25:12 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Fri, 16 Oct 2026 22:25:12 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:25:12 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:27:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:27:51 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:27:51 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c4570dd88fd4f55bf11f00a53c9408ea15d9bdb873af638237d2dab5085836c`  
		Last Modified: Fri, 16 Oct 2026 22:27:58 GMT  
		Size: 416.3 KB (416307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f2e26296417412b37bddeeb70cd915093d94089efc6113ec07b32c367c9681`  
		Last Modified: Fri, 16 Oct 2026 22:27:59 GMT  
		Size: 18.0 MB (17980019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3a696226068a02b84aeb190a42522a199faf2253d8781c3fe538c39c64da92`  
		Last Modified: Fri, 16 Oct 2026 22:27:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:alpine3.23` - unknown; unknown

```console
$ docker pull python@sha256:37d1e572994659702ba8ec83ebf973ec517d50938f83c1edc8f6c98856684c28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.2 KB (642191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3321ab4fadf9610d7b092216865dad9c3ad5cea695f66f551297753d5178f89d`

```dockerfile
```

-	Layers:
	-	`sha256:4ec4691264447fae171ed99376b7ea76def240189928331e3d53e53ed872656f`  
		Last Modified: Fri, 16 Oct 2026 22:27:58 GMT  
		Size: 620.6 KB (620641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ca4aed35ebcfc42939f72480d47be97a8835c53834c91cbbcb1d90ab21b5a4f`  
		Last Modified: Fri, 16 Oct 2026 22:27:58 GMT  
		Size: 21.6 KB (21550 bytes)  
		MIME: application/vnd.in-toto+json

### `python:alpine3.23` - linux; arm variant v6

```console
$ docker pull python@sha256:9f61b905017a64cd283258f3d210905174461ff6d82c614a55c3adba95105de2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 MB (19335666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47f7d9e87d02ff17fa4ccfc9ad0abb65d7f399f7d8e27bb5a82083bf2445af60`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:32:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:32:53 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:32:53 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:32:53 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:35:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:35:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:35:41 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de4da541b63f613734719adf8f702bee628ed560d8519adcb20eb86a3c4ca3d`  
		Last Modified: Thu, 01 Oct 2026 21:35:46 GMT  
		Size: 417.5 KB (417494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a2bb708f073c149e6a3f09f6446eeff079eec4c2ddfbbfb70733dc53943d3c`  
		Last Modified: Thu, 01 Oct 2026 21:35:47 GMT  
		Size: 15.4 MB (15362998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94255150343f41fead7e9fb91f6c79017a246f4db3aa3aad25bc965c72e1c157`  
		Last Modified: Thu, 01 Oct 2026 21:35:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:alpine3.23` - unknown; unknown

```console
$ docker pull python@sha256:986ded9cbc093dd86c7f04db64f889ec92059ffdc7204a49fe7175dae0c3bdf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 KB (21358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfb2227c25457bd5b590c074ebbf08f94abfefdb497d8e1f67361050343a5411`

```dockerfile
```

-	Layers:
	-	`sha256:55c91afd62e83aa29ede774e278b81466991118dfdc89c676f6a13294cd40b47`  
		Last Modified: Thu, 01 Oct 2026 21:35:46 GMT  
		Size: 21.4 KB (21358 bytes)  
		MIME: application/vnd.in-toto+json

### `python:alpine3.23` - linux; arm variant v7

```console
$ docker pull python@sha256:6b2db071775f5d76ca94d63f10ea91e77642e61496f984947e4eb95f7448a331
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18472425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25250bb6fcd5da6a30854dc6ea0eeb7afecba6eaa492e6ce41d5a81069894019`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:43:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:43:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:43:25 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:43:25 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:46:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:46:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:46:15 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20de7b9d374c2976a065dace9aaab66db12274080583cf1abb4a3769fcdff99a`  
		Last Modified: Thu, 01 Oct 2026 21:46:21 GMT  
		Size: 416.4 KB (416406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e25566cb80b380063c206cc297dfda1fee0d1ac6f6189ccfbcbca828b12cbc73`  
		Last Modified: Thu, 01 Oct 2026 21:46:22 GMT  
		Size: 14.8 MB (14792857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23c43c6b67e2c2621e36c0414b19c4bff647d4e356672a73fea0b3234acdb1b`  
		Last Modified: Thu, 01 Oct 2026 21:46:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:alpine3.23` - unknown; unknown

```console
$ docker pull python@sha256:7d93e1973f9d9a12dd9f09677b53cca1df3bd06742aa9059e7bb0f3a50c19f04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.4 KB (637350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3237fe9cd5397b11e4135cc1956711bfdef5cfa9f29d944be77281994bc7be94`

```dockerfile
```

-	Layers:
	-	`sha256:d43369cbb97e0c9bc7f8db52df0e51f70a6c9ab50b0999f154ca1c20cfdfff5e`  
		Last Modified: Thu, 01 Oct 2026 21:46:21 GMT  
		Size: 615.8 KB (615777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db4ea96ffd4f5442c9ab4652cdc05f08aed1edc2608645a326edefcb8df19def`  
		Last Modified: Thu, 01 Oct 2026 21:46:21 GMT  
		Size: 21.6 KB (21573 bytes)  
		MIME: application/vnd.in-toto+json

### `python:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull python@sha256:de62099c4b9118cc85e553055fcc9f84764c165803d8d4cb0fb85c6c83b236cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.9 MB (22894142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da2517ad91c454d886407611c4117f27e9cfe42fdd0176edada02fc89eaaba8d`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 22:24:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Oct 2026 22:24:35 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Fri, 16 Oct 2026 22:24:35 GMT
ENV PYTHON_VERSION=3.15.0
# Fri, 16 Oct 2026 22:24:35 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:27:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:27:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:27:18 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2839ed0781aecfa4bbc2ec222086d7d66bc433312389cc09d4090e5e4151e1d`  
		Last Modified: Fri, 16 Oct 2026 22:27:25 GMT  
		Size: 419.1 KB (419150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c8dfa90b89333dce3d0629c953db65b7bda09838d19d4160332a2f0270a90df`  
		Last Modified: Fri, 16 Oct 2026 22:27:26 GMT  
		Size: 18.3 MB (18288688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de904b620528981e8fe8ce42740586d0664aa14608159f4acebb80a1710da46a`  
		Last Modified: Fri, 16 Oct 2026 22:27:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:alpine3.23` - unknown; unknown

```console
$ docker pull python@sha256:9046255cd53e6b66d83a05da964399d662cba6eb2e88d66f0d25dbc42ad7a7d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.7 KB (641732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:687522ebeb42dcaf52f0cb1b643d4a61c902b424f65eb7885ae79ef73820435a`

```dockerfile
```

-	Layers:
	-	`sha256:ea7f2e1a1d359d7e077a43f6c2780de8794a0bf39cce0040476134e3ab94de63`  
		Last Modified: Fri, 16 Oct 2026 22:27:26 GMT  
		Size: 620.0 KB (620047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42ce24bee7128cbb1ec110727a94fcd88efeb8bd9492baa99b0b7a937988d2ab`  
		Last Modified: Fri, 16 Oct 2026 22:27:25 GMT  
		Size: 21.7 KB (21685 bytes)  
		MIME: application/vnd.in-toto+json

### `python:alpine3.23` - linux; 386

```console
$ docker pull python@sha256:060c313eeae30e54f16b56bbf39c4f8b00770765500cf0813f6e71cc21f054f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.3 MB (20267677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb5cfa8fe396d69cc552d2e4a2b41e1fc460d2b68587d8348d86f297767b02c`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:28 GMT
ADD alpine-minirootfs-3.23.6-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:28 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 21:33:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 21:33:40 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 21:36:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 21:36:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 21:36:34 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:1f89eeb8219ece88ee6dd2e7cad6761d1e9da9e18f4b7929d9ee0052902df74a`  
		Last Modified: Thu, 17 Sep 2026 20:37:33 GMT  
		Size: 3.7 MB (3675111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74df261459ae2cd7ff33fe62f1533eebc11d5b5a9d9cf68533afc2fd8ca9349f`  
		Last Modified: Thu, 01 Oct 2026 21:36:41 GMT  
		Size: 416.9 KB (416873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f619bfcbef79b418e3a81dd0c36b5a26abd5a9c0ec1476ede3fecd1a25f71ecd`  
		Last Modified: Thu, 01 Oct 2026 21:36:41 GMT  
		Size: 16.2 MB (16175443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f83733002a94628ce83a58bf452d59adaa3707edb70cf422e1f1b87041bc5b4`  
		Last Modified: Thu, 01 Oct 2026 21:36:41 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:alpine3.23` - unknown; unknown

```console
$ docker pull python@sha256:fb89945062cbc2df06f6d0cb7ff7afa54727d0ef60c32e4b77f915cf5b3a09d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.8 KB (634806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42b15c17ed25cc22e5c94396754129bc8e02099a5f092cff62a6f4982b73277`

```dockerfile
```

-	Layers:
	-	`sha256:b34085431461e7bc35411152729c134d01b66c86dcae8f10243b341a16bdb9a2`  
		Last Modified: Thu, 01 Oct 2026 21:36:41 GMT  
		Size: 613.4 KB (613376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49ba5d4b05e0fae0b5caab47b96919345d44ee7399316dcf190b583e43e6410a`  
		Last Modified: Thu, 01 Oct 2026 21:36:41 GMT  
		Size: 21.4 KB (21430 bytes)  
		MIME: application/vnd.in-toto+json

### `python:alpine3.23` - linux; ppc64le

```console
$ docker pull python@sha256:d6c24038ad0c2ffd3d0a60e8966b5e79602f5179d861ca6b5e046645a9891336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.1 MB (21084413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9c55a08bfe32c655657b4f36f61b689639f0728202d1761101ba9fe31cf2996`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.23.6-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 01 Oct 2026 22:48:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 01 Oct 2026 22:48:37 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 01 Oct 2026 22:48:37 GMT
ENV PYTHON_VERSION=3.14.8
# Thu, 01 Oct 2026 22:48:37 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Thu, 01 Oct 2026 22:52:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 01 Oct 2026 22:52:44 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 01 Oct 2026 22:52:44 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:be8cfd1727475429a144fc14813e5db0db07b474a5a4272ce6eb850ef422663e`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3814769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa6cb700cfc47dcecf259b7c37f91cc3b699e9c2ef15cd9ac0d391a9ce489bd`  
		Last Modified: Thu, 01 Oct 2026 22:53:00 GMT  
		Size: 419.5 KB (419490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b61e34e24e7311e0c4b485337662e73b0682badec3581cf8a88f99dbb7b767b`  
		Last Modified: Thu, 01 Oct 2026 22:53:01 GMT  
		Size: 16.8 MB (16849904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68e7853b0587fca496deccfdfa6593c5c8ed0b55566c53397413608072eda1d`  
		Last Modified: Thu, 01 Oct 2026 22:53:00 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:alpine3.23` - unknown; unknown

```console
$ docker pull python@sha256:88b0e73d2fb54fc6d70fd456bbf35d209271e98e5457e15d2468d78096960df9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.3 KB (634298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3aa0130fee506cb2c1692bf228cd419bfbe8699694dfec231632b5112ffbfb13`

```dockerfile
```

-	Layers:
	-	`sha256:e4cef684ef07e732dc9335ddc11d4fb7931e565c224371d688813df1895abfae`  
		Last Modified: Thu, 01 Oct 2026 22:53:00 GMT  
		Size: 612.8 KB (612784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88dafd0540538ece504c5478da6454d89d0f5984d94c24d590076492eccf7dce`  
		Last Modified: Thu, 01 Oct 2026 22:53:00 GMT  
		Size: 21.5 KB (21514 bytes)  
		MIME: application/vnd.in-toto+json

### `python:alpine3.23` - linux; riscv64

```console
$ docker pull python@sha256:a603c2850358c4896563961a1c3ec95f0e48325df4147d00e19aa15395870381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20509933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1d1b9babe1e0691888182e8c185d789a1b780469daa3e9cc0869fab5bc66dc7`
-	Default Command: `["python3"]`

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
ENV PYTHON_VERSION=3.15.0
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Wed, 14 Oct 2026 12:06:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 14 Oct 2026 12:06:08 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 14 Oct 2026 12:06:08 GMT
CMD ["python3"]
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
	-	`sha256:58f94f9124dca414b4c44708e1aab819d6ec8302382b14a6936ff78850d19b4a`  
		Last Modified: Wed, 14 Oct 2026 12:07:00 GMT  
		Size: 16.5 MB (16516593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09347c9bf275495003953ef8efe760571afd37fdcbb65131c8b9c6c3a1b08fc`  
		Last Modified: Wed, 14 Oct 2026 12:06:58 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:alpine3.23` - unknown; unknown

```console
$ docker pull python@sha256:4e45dc50dfd3d8acff0ed01f48a68b1f3dfd4c67e26023d34ccf1f4dbc6cb7f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **634.3 KB (634295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:972460ef0f962bafac904705ea3bfc70e7e2f7f7c8df753946be216692872c2d`

```dockerfile
```

-	Layers:
	-	`sha256:13b2ca40b12162c9055f013fbf696f561b8726403e93de02425792e33ab5b2b4`  
		Last Modified: Wed, 14 Oct 2026 12:06:58 GMT  
		Size: 612.8 KB (612780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aff80be2e000b7a31c0706d002f8dc356e74801bb42fd0b816ff4ccb617ce334`  
		Last Modified: Wed, 14 Oct 2026 12:06:57 GMT  
		Size: 21.5 KB (21515 bytes)  
		MIME: application/vnd.in-toto+json

### `python:alpine3.23` - linux; s390x

```console
$ docker pull python@sha256:d3930088909467fb5cd9fd0272c9273288536cea53d5f55d409b99e2f20e13ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22512599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab9fd4bfac8e11463bcc1c4a39c80a75dcaf4db82aed411a2babb03de306e65b`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:23 GMT
ADD alpine-minirootfs-3.23.6-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:23 GMT
CMD ["/bin/sh"]
# Mon, 12 Oct 2026 22:24:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 12 Oct 2026 22:24:58 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 12 Oct 2026 22:24:58 GMT
ENV PYTHON_VERSION=3.15.0
# Mon, 12 Oct 2026 22:24:58 GMT
ENV PYTHON_SHA256=ba4bed1ba346b916890b76d9e320451420aa69f6408997d33c66482eeae3d575
# Fri, 16 Oct 2026 22:34:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Fri, 16 Oct 2026 22:34:44 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Fri, 16 Oct 2026 22:34:44 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:4387077d70188f8428b97ed5df25698ad5aa9b8967d00a98ebb627a3e08ae986`  
		Last Modified: Thu, 17 Sep 2026 21:38:32 GMT  
		Size: 3.7 MB (3713255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186f2d9140fb9e6636f984480095c7230ca48cdd31fc3f946806ceb881e4c847`  
		Last Modified: Mon, 12 Oct 2026 22:32:11 GMT  
		Size: 417.4 KB (417429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef24f010c90ca2f2a10f54da84c562253b7b826b3bd3590042eea6ba9f2fd29`  
		Last Modified: Fri, 16 Oct 2026 22:34:55 GMT  
		Size: 18.4 MB (18381666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97b27d9ea9a9156ec61521654011ecbd67dfce6d92b7318ec80a7166d90050e4`  
		Last Modified: Fri, 16 Oct 2026 22:34:54 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `python:alpine3.23` - unknown; unknown

```console
$ docker pull python@sha256:6a473377e9e934c69aa96e1b61dad357d88f7f2f04283650f7d38b0f66b91b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.5 KB (641541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be5b35be4492d1ca9165880648eac05b6aec84abcb00c276651b6b24c72ea71`

```dockerfile
```

-	Layers:
	-	`sha256:0a64dea8eec7d004d212bfbb100f64c21e3556327b5e5277af2f34526e8ad8c1`  
		Last Modified: Fri, 16 Oct 2026 22:34:55 GMT  
		Size: 620.0 KB (619990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b6009dffd4dd8e868591a636b0f74a28a4850ee5575a13b606921f6e3124216a`  
		Last Modified: Fri, 16 Oct 2026 22:34:54 GMT  
		Size: 21.6 KB (21551 bytes)  
		MIME: application/vnd.in-toto+json
