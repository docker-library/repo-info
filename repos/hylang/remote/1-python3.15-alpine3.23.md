## `hylang:1-python3.15-alpine3.23`

```console
$ docker pull hylang@sha256:7792ca24df543f8c0c545ce3a9d65aa219f1de544bd08c7eb870ff4f7a8660ff
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

### `hylang:1-python3.15-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:eb52d93e3b7e8216d1f87daf4728ad2a85eb2691f0b9c5d025cfbf36ee004c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25391864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81c0b37654745b4aeee1e9d1cdc0755f09d10c14a7c2c2887b8e91ec9e98489`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:25:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:25:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:25:26 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:25:26 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 19:25:26 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 19:28:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:28:01 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:28:01 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:31:26 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:31:26 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:31:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:31:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c8dcdcf5025c10052691bcf5933fd58991faa59022f5a5e80aa3b30c977182`  
		Last Modified: Thu, 05 Nov 2026 19:28:08 GMT  
		Size: 412.0 KB (411997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825727faa651bb9b1d4106c6d8607f8a326a1056e994acebf8f7f6bc10af4a68`  
		Last Modified: Thu, 05 Nov 2026 19:28:08 GMT  
		Size: 15.4 MB (15403274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32daba8c73f7e5ad3bc712f0d27539462e9cdd592a76728e2dbf92a69ca6ec1`  
		Last Modified: Thu, 05 Nov 2026 19:28:08 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41486a7cdf239acde1fd5cc88fcba4cb380a397f764bf5f13c6e3b03fe888b45`  
		Last Modified: Thu, 05 Nov 2026 20:31:31 GMT  
		Size: 5.7 MB (5723754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:3ad64e966a754cd83d7a854c554b8e41c86a940003aa1bbed711827dfe8fcee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.9 KB (636890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90d7f70fd09a0d2e16aa231504b7c6bfd32ffa6c5151003349248df2b75d74c9`

```dockerfile
```

-	Layers:
	-	`sha256:0708b0cc37d0d663da73abc72b4c4972b5c554c7ddc62e0027796bb08857952c`  
		Last Modified: Thu, 05 Nov 2026 20:31:31 GMT  
		Size: 627.6 KB (627591 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4b25b25b9282b28ae8bd73ae7858c102d426184836439bf942c4358019b7f01`  
		Last Modified: Thu, 05 Nov 2026 20:31:31 GMT  
		Size: 9.3 KB (9299 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:15617758a3592eabc8d46d278f61a13bfa7dd00278dd5cf4f573942ebba528f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24534541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:864f567ef387caf8ed32df6bdafd4fbce0e30ca35b200168c05246ca19f5e867`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:52:54 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:52:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:52:54 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 18:52:54 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 18:55:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:55:44 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:55:44 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 19:42:51 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 19:42:51 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 19:42:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 19:42:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166e22b13e45b1a5b6ab47afae3bfe632d325b031ad259a9dba78a10df7ea5ff`  
		Last Modified: Thu, 05 Nov 2026 18:55:49 GMT  
		Size: 413.7 KB (413732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40388abd33d371a1e12a7cc9a15f07a6115385dadf57b62ae3d3f6840512aef7`  
		Last Modified: Thu, 05 Nov 2026 18:55:49 GMT  
		Size: 14.8 MB (14838809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba67a98d8481ebddf60fc6937076d3860f87223c479e9c658fe8096a4bae565f`  
		Last Modified: Thu, 05 Nov 2026 18:55:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72098cabcd0161e434f3eb2b761d912a4d77e9e8a8d454afbb2e365b929ccf0`  
		Last Modified: Thu, 05 Nov 2026 19:42:56 GMT  
		Size: 5.7 MB (5723502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:63c77b31e0d7a8e0e1e3cbfee4376637bcd11d924689bbb21f215cd075986329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 KB (9195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ed04017408fc1885a8b2a6a91646b890e0908c0d50997e01ca16cd44643fc9`

```dockerfile
```

-	Layers:
	-	`sha256:e83d2c96607a966486799831937463e4e04650183e5425402cb240a6ada3e06c`  
		Last Modified: Thu, 05 Nov 2026 19:42:56 GMT  
		Size: 9.2 KB (9195 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:60cb70abde1b8b8194a3cabaf6ec0ca8305cfa3658e47374584ebbfe6f2fbff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24004029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b659f7319fbbf4ec4228c409a307e927e37fc560cc8a62dc79c90a5fda76c9d`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:52:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:52:59 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:52:59 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:52:59 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 18:52:59 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 18:55:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:55:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:55:53 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 19:54:55 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 19:54:55 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 19:54:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 19:54:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31016948869a1c6d169c91072e4903171620273880593b6f30c8940626770b7c`  
		Last Modified: Thu, 05 Nov 2026 18:56:00 GMT  
		Size: 412.4 KB (412378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9e094aceefd5ba67f6e39947390579424de9ce6930316e96d439b3b4f0ac65c`  
		Last Modified: Thu, 05 Nov 2026 18:56:00 GMT  
		Size: 14.6 MB (14601057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9930e873cf5a81d503affef616bf0680f9985fa25111aeaf64c98cbb0063ddf0`  
		Last Modified: Thu, 05 Nov 2026 18:56:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486e0aa801c6b96ed9f50a62aa9ba1f65fe54f99e54ed395e297714dc8385124`  
		Last Modified: Thu, 05 Nov 2026 19:55:00 GMT  
		Size: 5.7 MB (5723517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:3b002a8c689ce0f615d47baadda9e8f2605dcb22590212cbb510c76921c844a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.4 KB (636420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cbc053f30a0846a14ff9625b9cc6497aba228e270b8bab5e055ebec78fddd68`

```dockerfile
```

-	Layers:
	-	`sha256:0f5d5e3b4a7bb93a6c314494a5c354f4398b0baf76c232b04d4f2acc227b2b76`  
		Last Modified: Thu, 05 Nov 2026 19:55:00 GMT  
		Size: 627.0 KB (627009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de4170540ec2a8de584a24db64776a6cd969b2fea07837ef04b08ab590cd9cb3`  
		Last Modified: Thu, 05 Nov 2026 19:55:00 GMT  
		Size: 9.4 KB (9411 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:48e8b1a54206b95c44c02ee1abe022c976be6679913355d90492b1c4240adb5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25743920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46a4a6d29fba5e53db07e085428ce351f6a4b1512374028f802d4243adef5de3`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:20:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:20:53 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:20:53 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:20:53 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 19:20:53 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 19:23:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:23:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:23:42 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 21:38:04 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 21:38:04 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 21:38:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 21:38:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:783f238f83b32ad74022d82b4ab92f42042a48126461e167ebcf3fd4cc0d1380`  
		Last Modified: Thu, 05 Nov 2026 19:23:49 GMT  
		Size: 415.6 KB (415567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe47eb05108af4342639de11f922869c1cd41a9fd5d718e3ac6ca029db285a8`  
		Last Modified: Thu, 05 Nov 2026 19:23:49 GMT  
		Size: 15.4 MB (15414238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:298ee86d0aa3fdaefa245baaa201cf76399b81b3413176d8cd165da8363e5e77`  
		Last Modified: Thu, 05 Nov 2026 19:23:49 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a663536f5e856f6fc8acda2349492873354027d208315be5e26d7555fa20d70`  
		Last Modified: Thu, 05 Nov 2026 21:38:10 GMT  
		Size: 5.7 MB (5723646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:7c5923f1ef94d7262e7985bb4a0d39d0f5b0a767e8e85072686b0a9acd74b748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.5 KB (636496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c0a827d12131e7a1bd605e3401a8e174e6860d349208daa894761251be91d7`

```dockerfile
```

-	Layers:
	-	`sha256:d6d95426acc550598d3aac33d76ab156648ffec175d18c5f47009c5c9c230365`  
		Last Modified: Thu, 05 Nov 2026 21:38:10 GMT  
		Size: 627.0 KB (627045 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25faa4fe409bbcb537db4c0369279eb47abdc572fe8f9c1f0b9bc92fb73e396f`  
		Last Modified: Thu, 05 Nov 2026 21:38:10 GMT  
		Size: 9.5 KB (9451 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:d0cee5d633a5c9b1f2c34a06c05ebe076e5b0e15d23f66ba921ed299b79eb550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.3 MB (25295153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edbf5d236a95b4e039b51b98e5e943b9e6a25d6d34f2ae8bcb309c0bbe734fcf`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:32:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:32:32 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:32:32 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:32:32 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 18:32:32 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 18:35:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:35:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:35:37 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 18:54:01 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 18:54:01 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 18:54:01 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 18:54:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c085fb9fa4f689486d418cdbf757f435f2a4bb9d607308d4f082cd02ec628b08`  
		Last Modified: Thu, 05 Nov 2026 18:35:44 GMT  
		Size: 412.8 KB (412770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5747abadc7ba4e7df3ea3050580290370fa4da7fb4894155d8290b4ea6bddef`  
		Last Modified: Thu, 05 Nov 2026 18:35:44 GMT  
		Size: 15.5 MB (15479832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbbdcde6c472403fef54e72df6d982402f46b88698e46cbca98a1a71a6c0dd4`  
		Last Modified: Thu, 05 Nov 2026 18:35:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8df37983b4b90e3928ae7ca1596f79b9199b41dc4218f6e235bdfa11a77891f`  
		Last Modified: Thu, 05 Nov 2026 18:54:07 GMT  
		Size: 5.7 MB (5723722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:aba282a7ee6389d34143ad61dafe75e3bb62996e5d28ecd8386386684122df29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.8 KB (636793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643c172fa865b6981f7c739a0268a2ef5d48bd38451ad7707f3c035e0f95e7d2`

```dockerfile
```

-	Layers:
	-	`sha256:caf35faac8d8f61988d8fd1eefe123188ac72a9056747fffb1f89691c392e5e7`  
		Last Modified: Thu, 05 Nov 2026 18:54:07 GMT  
		Size: 627.5 KB (627546 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa3d12a2297342f4e8cc501b3921085cb57d501e15e97b443339aacd33b946ad`  
		Last Modified: Thu, 05 Nov 2026 18:54:07 GMT  
		Size: 9.2 KB (9247 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:bcbfac7e9f6fc39e7dc94a8af5a45d1ff23240f040c519def7fac71d7b748203
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.3 MB (26278604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c192b06dffccffbcd00c16fe28d0c2c315535ab35ea4cc2e184d0df90d7ef5d`
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
ENV PYTHON_VERSION=3.15.2
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Tue, 27 Oct 2026 00:21:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 27 Oct 2026 00:21:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 27 Oct 2026 00:21:53 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 07:46:12 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 07:46:12 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 07:46:12 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 07:46:12 GMT
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
	-	`sha256:e200f4905830300f7fb7dbd209b66ef082f89569adace1d4708cd104da76f4a7`  
		Last Modified: Tue, 27 Oct 2026 00:22:12 GMT  
		Size: 16.3 MB (16319894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64a7937d6e79a535af3047f449a1da5297d0df3ccb0247d0410a1e43bf1618c`  
		Last Modified: Tue, 27 Oct 2026 00:22:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef2ddb528045917a844b1f37ee47bdf3c5adb4b618111d537d5817d09ec755d2`  
		Last Modified: Tue, 27 Oct 2026 07:46:30 GMT  
		Size: 5.7 MB (5724014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:6ce95ab89041c6fa718623bce07988cc14f0adcbcf5ebb4ed7f786e3c53213b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.4 KB (636365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c44f22a6f6134795be5ad8d76ac268120d3bbde7e5ab43edbf54806d38441a82`

```dockerfile
```

-	Layers:
	-	`sha256:b897ff8b035de4e8a4115f05774e518dfd0857d00f82cc06d976e936a0067cd6`  
		Last Modified: Tue, 27 Oct 2026 07:46:30 GMT  
		Size: 627.0 KB (626998 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf78dafd3ffcdefda46b0667986263fb813ce839ceae2401aeac009e4fdccef8`  
		Last Modified: Tue, 27 Oct 2026 07:46:29 GMT  
		Size: 9.4 KB (9367 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:7d4ca8bf172f72a8df656360145df584a7e310aa40c86da627d32afee5dd627e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.2 MB (25213797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:132afa604e50f774dd715663ef19c8edc6110053d0680a2e0de27999b430beea`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 12:14:46 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 12:14:46 GMT
ENV LANG=C.UTF-8
# Thu, 29 Oct 2026 12:14:46 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 29 Oct 2026 12:14:46 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 29 Oct 2026 12:14:46 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 29 Oct 2026 14:36:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 29 Oct 2026 14:36:08 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 29 Oct 2026 14:36:08 GMT
CMD ["python3"]
# Mon, 02 Nov 2026 20:57:07 GMT
ENV HY_VERSION=1.3.1
# Mon, 02 Nov 2026 20:57:07 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 02 Nov 2026 20:57:07 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 02 Nov 2026 20:57:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e877a6737eda53c232ebf9aef50aa267d4fbe4e1be81285a25567dc23237b8`  
		Last Modified: Thu, 29 Oct 2026 12:58:41 GMT  
		Size: 412.6 KB (412555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc63d29c3e8d63a038b8a286f8bf856f62f4ac01962cd504a5d00f568c2acd5e`  
		Last Modified: Thu, 29 Oct 2026 14:37:01 GMT  
		Size: 15.5 MB (15496876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081699b363ae17a56462bcec8f57bcde35bd06eb0124a99dccf99fd9327b5a38`  
		Last Modified: Thu, 29 Oct 2026 14:36:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7af8a13a63bc72b5a3142b34342ee29b3cf29ee3aaead0a40b591dbd6fc4c66`  
		Last Modified: Mon, 02 Nov 2026 20:57:49 GMT  
		Size: 5.7 MB (5724505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:86cea9e4a15fcb046a530ba934b2b8e4d906000ba2c24800b7144c66c5943fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.4 KB (636361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bee39ef8e0776d6e55a23847719d45090117ae326866fc75a282499b53ffb4e`

```dockerfile
```

-	Layers:
	-	`sha256:81a5f28161e86d40e22419493f471c7c93476690616bf1e785d3039e6c0d1d5d`  
		Last Modified: Mon, 02 Nov 2026 20:57:48 GMT  
		Size: 627.0 KB (626994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c4b3977b50d1bedb874868442e77be686694a6b75f08b3f983089488e3650d1`  
		Last Modified: Mon, 02 Nov 2026 20:57:48 GMT  
		Size: 9.4 KB (9367 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:2c504452689f212ea7f3a09da4fcbccbb26181f43bd7956650af7b035d53ca44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25878916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf7631a559cc0778c0fab5bb2202e2f722c64578840c7ec44b43844f7ca4015`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:38:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:38:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:38:26 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 20:38:26 GMT
ENV PYTHON_VERSION=3.15.2
# Thu, 05 Nov 2026 20:38:26 GMT
ENV PYTHON_SHA256=8b5536d280142ecf6cdfe15d12a21ba1c65e300bbf7b28a8d0cdb849575797de
# Thu, 05 Nov 2026 20:51:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		mpdecimal-dev 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 20:51:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 20:51:42 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 22:07:37 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 22:07:37 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 22:07:37 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 22:07:37 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa368c2c63d0afd9966760c4c9784a9a305db545a6f0ba8b89751fd2ee9f05b0`  
		Last Modified: Thu, 05 Nov 2026 20:44:38 GMT  
		Size: 413.4 KB (413413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a42fa02dd8358ca8c2fe81caa770e538647d59eeb305bd6b0013138f8b64694`  
		Last Modified: Thu, 05 Nov 2026 20:51:57 GMT  
		Size: 16.0 MB (16023193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5467725a68a612d0e9c552a7d4d7dffbd82805b21c8223e5c3edb51d6ba10ac`  
		Last Modified: Thu, 05 Nov 2026 20:51:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5508064b36b05ebdf6bb0535bc867a83cfb5e5fce835af6b61a3bc206a8eb6`  
		Last Modified: Thu, 05 Nov 2026 22:07:48 GMT  
		Size: 5.7 MB (5723714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:0a4a45e94393de9ef2aea225c033a7f362968e8c08665ef7d319459960b57ef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.2 KB (636239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03557e250d960e1a5e11c0a3a421e3c7f665ef0235a3fb9fbf02dc07ca4514f`

```dockerfile
```

-	Layers:
	-	`sha256:4bfa2730c2c50202b4892e2aa30b3973f29baf0b22dbf3fc103d27cc2395d5c1`  
		Last Modified: Thu, 05 Nov 2026 22:07:48 GMT  
		Size: 626.9 KB (626940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0796e8c97978ac6a521f92b53254cf311195e47e38284121fc1a29b4e0c090cd`  
		Last Modified: Thu, 05 Nov 2026 22:07:48 GMT  
		Size: 9.3 KB (9299 bytes)  
		MIME: application/vnd.in-toto+json
