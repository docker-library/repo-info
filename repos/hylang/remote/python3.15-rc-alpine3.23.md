## `hylang:python3.15-rc-alpine3.23`

```console
$ docker pull hylang@sha256:d0d0719818aaf8f2232ae1af5ade7e2de9443dc692d0d79b61ba1ed00ee640cb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `hylang:python3.15-rc-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:0022ed5f2608a22035a381ac7304dbd9dba4bcd18fd7ae0acebe0bef4cccc6b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26668953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9354cad94639ecd99120f5cfbff9f1c2dbf654cf73e99765169ea6fff1ac62c`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:59:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:59:37 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:59:37 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:59:37 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Tue, 01 Sep 2026 00:01:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:01:57 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:01:57 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:18:36 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:18:36 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:18:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:18:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e87640fb392a43eee379f26484b6399bbb898c7da582c70a83c6c2f191ddeb0c`  
		Last Modified: Tue, 01 Sep 2026 00:02:04 GMT  
		Size: 408.1 KB (408096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c872d6bb934c8eeafd7ec0a69399b93075a4fd65b0fc0f8859b94b6e27939123`  
		Last Modified: Tue, 01 Sep 2026 00:02:04 GMT  
		Size: 16.7 MB (16675327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca660b3140a119fdc589376eafbe22459c70b5cd9eeb68cb3d703059df7b574c`  
		Last Modified: Tue, 01 Sep 2026 00:02:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03dfd104d58de688c7786229727735e380d24db57d4f1fd128a2e8d5b058591a`  
		Last Modified: Tue, 01 Sep 2026 00:18:41 GMT  
		Size: 5.7 MB (5740861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:1ddf009091ffba1a53104e92aa9a8cab35a683ef0329f153715633b17ffe1369
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.8 KB (627843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7c4687f2696bd5a8a5f899c48eca9ffaec4db2312cf2b42b62961e759befd5`

```dockerfile
```

-	Layers:
	-	`sha256:120dcbb44902b9ef0d8d58ecc5779f65ee79d3dbd2b54ad823dcb529b30b423d`  
		Last Modified: Tue, 01 Sep 2026 00:18:41 GMT  
		Size: 619.8 KB (619767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e74a516e131aeafbf5eb545d325407942a7203f6bb44e019a6a9ff796d3e940`  
		Last Modified: Tue, 01 Sep 2026 00:18:41 GMT  
		Size: 8.1 KB (8076 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:7867e14e23e8004c0bcb8cefcef0fed14f8fa2a1aba4678a174795694a959e53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27386580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2d4550bd5ec2e3fefe8775f681bf0fd021cca429da35d0455729c21992d996`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:36:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:36:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:36:04 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:36:04 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:38:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:38:49 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:38:49 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:12:41 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:12:41 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:12:41 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:12:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02bee3ffb0a64012881cdeccd47fd4d026f83aa7f6ac71abc2470141651f319`  
		Last Modified: Mon, 31 Aug 2026 23:38:55 GMT  
		Size: 411.8 KB (411761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa203259f5d47763de334842b7284281f42b1dfbd9cc1061d6c6500f0292f0c`  
		Last Modified: Mon, 31 Aug 2026 23:38:56 GMT  
		Size: 17.1 MB (17051847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1595dd675eb835d2230e5719289947aad7d9d94d793766729bc73bfe84e281`  
		Last Modified: Mon, 31 Aug 2026 23:38:55 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35bdec4a4e9d9cbbe2e5c45b4f637e9b0f5dc4d9f7d0d356745de661fb10e8a`  
		Last Modified: Tue, 01 Sep 2026 00:12:48 GMT  
		Size: 5.7 MB (5740866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:2148cefd34fb649537bbc19e21503913ddb0e49beea805ac8246f3bae12bc361
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.4 KB (627353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebadd14d356950bacbadbf7da1ce5c82bbe89a0f0299a88ba8d4911b4a240a23`

```dockerfile
```

-	Layers:
	-	`sha256:dfb33b149b2255d8706b65b1fd06cf4d7c2b1f9b8f666af8f1d462de97c90d8d`  
		Last Modified: Tue, 01 Sep 2026 00:12:47 GMT  
		Size: 619.2 KB (619173 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b69575e842e049b82d1b20e02d5edc34242969b2334ef3ccb5f21d5fa82afded`  
		Last Modified: Tue, 01 Sep 2026 00:12:47 GMT  
		Size: 8.2 KB (8180 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:263548b3fa2c4365714537e587244fe2de8560624a0c11bd0540450a1f894de9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23911499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a412506cc1bf149b62f29a889e693f8dd82f9dc19db4f2134f8014600182a97`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 10 Aug 2026 23:10:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Aug 2026 23:10:48 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 10 Aug 2026 23:10:48 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 10 Aug 2026 23:10:48 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Wed, 12 Aug 2026 15:04:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 12 Aug 2026 15:04:26 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 12 Aug 2026 15:04:26 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 06:22:25 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 06:22:25 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 06:22:25 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 06:22:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8cca5e3dcbc70a1373062eeacd9b15ab4bddc3660cb9c1fa68caf53a5dc20c`  
		Last Modified: Mon, 10 Aug 2026 23:50:09 GMT  
		Size: 408.6 KB (408635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b16140089cb937bfba37113d76f30a9215e8d425721704b14bdb2650b06d5012`  
		Last Modified: Wed, 12 Aug 2026 15:05:16 GMT  
		Size: 14.2 MB (14187381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5834e6b41e25b3db8b1ca5ba56efea20b16115e3b894fbead10cf6e5d3b94a69`  
		Last Modified: Wed, 12 Aug 2026 15:05:13 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319e7f1f8a6a815fbcc230ab1cb2d9795f8599b8aa11964678ce79fcb3f9ceea`  
		Last Modified: Thu, 13 Aug 2026 06:23:04 GMT  
		Size: 5.7 MB (5741993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:cb932feb220dd31e25839be5bc92b1fea475d080e64451dbec1bea0f036ff356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20401e93971870b08de65278b3bb2d60da9b92e9db43c8886058498b6aec10a2`

```dockerfile
```

-	Layers:
	-	`sha256:3cb519b3092c8935549aa77c60be53cf6b6a7fb6b95357cbebabad7eaaea1e47`  
		Last Modified: Thu, 13 Aug 2026 06:23:03 GMT  
		Size: 619.1 KB (619146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0026791989e7794314480182e1d7c47f208daae7da8926e1767768d07ca0299`  
		Last Modified: Thu, 13 Aug 2026 06:23:03 GMT  
		Size: 8.1 KB (8118 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:e07a0d830e30476cd65227122d9101dbd194858dac73d9509a3da8b4925a4343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26791069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aadcf8c858a815a87db842f37a877b99f14775a9c67f0df9ea993e5f1841c90b`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:37:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:37:59 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:37:59 GMT
ENV PYTHON_VERSION=3.15.0rc1
# Mon, 31 Aug 2026 23:37:59 GMT
ENV PYTHON_SHA256=f84dad680ab2147417d2739355c2678f0f9acffe4ae8ef77895de1454b384b07
# Mon, 31 Aug 2026 23:42:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:42:36 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:42:36 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:29:59 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:29:59 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:29:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:29:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c43869b0eb994bbfa5c196ba59d15323b0278b0864d9175693719b587432d9e`  
		Last Modified: Mon, 31 Aug 2026 23:42:56 GMT  
		Size: 409.5 KB (409526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b717b5ff6a54ad9a855437dbba6485a76771e7c272e3f38476ce8227196ef8`  
		Last Modified: Mon, 31 Aug 2026 23:42:57 GMT  
		Size: 16.9 MB (16932834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaf3a8d63dac02d0f961aa421569386bdf5f147136c24ab1ead23e8c905af9a2`  
		Last Modified: Mon, 31 Aug 2026 23:42:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09967207006aa361ded462196c7a12cbdf79c32ccce443b0bba6eeed2d93a589`  
		Last Modified: Tue, 01 Sep 2026 00:30:48 GMT  
		Size: 5.7 MB (5741211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:423ade7d010965123daf85be90b7fd2e7ff934a7cfbfd7a239c6f1b17fb8288a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81c1ac1a87100950f86bcd190a33714588c50cc363efa0666a48fc0e5f4be8d1`

```dockerfile
```

-	Layers:
	-	`sha256:5208bd261918d1a7d7e78b6bc36c486e91c2a311a178e17df11490c14688738f`  
		Last Modified: Tue, 01 Sep 2026 00:30:46 GMT  
		Size: 619.1 KB (619116 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6de5ec941b27e67a7080be777bd356feb3203257cf8c05a09e20081ea3996fdc`  
		Last Modified: Tue, 01 Sep 2026 00:30:46 GMT  
		Size: 8.1 KB (8072 bytes)  
		MIME: application/vnd.in-toto+json
