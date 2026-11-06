## `hylang:python3.14-alpine3.24`

```console
$ docker pull hylang@sha256:f7e9706bae452545d8273dfb0a28064068b61190482b414a7a3cfb81c6bf31b7
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

### `hylang:python3.14-alpine3.24` - linux; amd64

```console
$ docker pull hylang@sha256:31117ac3bdf7678c72db6c94b88f2ba198f2b74655b648c69e9caab4f9c4ecab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23526733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b0ebc492ffb773df29efdc02ea116969f09de02aa77246c9fad21d21d13466e`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:25:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:25:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:25:26 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:25:26 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 19:25:26 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 19:28:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:28:05 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:28:05 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:31:43 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:31:43 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:31:43 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:31:43 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f156d17328c6499d12383769c39c5de3ec2b8706bd81bb977f27cfe9aa0c30`  
		Last Modified: Thu, 05 Nov 2026 19:28:12 GMT  
		Size: 412.0 KB (411990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddab54470924185bca4fbf91b4991764cc716d44e363c60a4e3876db764f15d3`  
		Last Modified: Thu, 05 Nov 2026 19:28:12 GMT  
		Size: 13.6 MB (13580204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6898526789b2690410db36a9609f51f6f36aceb6b77facb4aa13ff1039416523`  
		Last Modified: Thu, 05 Nov 2026 19:28:11 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83b3a6e73a8d80fc1db57d4c0b3fda75c90c597d75b8d5a21403056b8e9f98b`  
		Last Modified: Thu, 05 Nov 2026 20:31:50 GMT  
		Size: 5.7 MB (5680614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:54938a661d8f96426ed6cf3ff546d48e269ad38c0b9024bcb6d8d382b3282b90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.7 KB (629727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f199cca869735b8d81bbd063bf8a7fc7c8d93b6e8093402545e341dbc8733833`

```dockerfile
```

-	Layers:
	-	`sha256:27275ccdab237284f20278373f3c677c07d0ab7052c7e37f32f74c584b15d549`  
		Last Modified: Thu, 05 Nov 2026 20:31:50 GMT  
		Size: 620.4 KB (620371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:187835489f7037d9973326c72ae8c878b4a53525138887c78f610f3b07dc1f26`  
		Last Modified: Thu, 05 Nov 2026 20:31:50 GMT  
		Size: 9.4 KB (9356 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine3.24` - linux; arm variant v6

```console
$ docker pull hylang@sha256:8f862ecf441a30b9f62722f5db3cacbc2b879fc1f899c919ce01062b7a0e8edf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22845333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125a445cc0fabfe95e07c595d1250a5c8838398582c82178adaaf9f7064796b7`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:53:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:53:20 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:53:20 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:53:20 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 18:53:20 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 18:56:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:56:09 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:56:09 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 19:43:17 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 19:43:17 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 19:43:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 19:43:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4797a80ad95abc9eed567a585abf2e4a5b8f9b565b51ee2cb063aa70ddb275`  
		Last Modified: Thu, 05 Nov 2026 18:56:14 GMT  
		Size: 413.7 KB (413712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7334cf1156dab327cf79c4342b2e2d2218fdd07cf6356b5c161c6cc7a1466dd1`  
		Last Modified: Thu, 05 Nov 2026 18:56:14 GMT  
		Size: 13.2 MB (13192378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eee3dfdace6222cfd1bfdd03a390dd626ae834a1ba183bb8940e4e68a39dc1d`  
		Last Modified: Thu, 05 Nov 2026 18:56:14 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2628948e7d12f88bc7f9b40b7ac2b48e7c883c9be5dd03c896be6747ae343bb3`  
		Last Modified: Thu, 05 Nov 2026 19:43:22 GMT  
		Size: 5.7 MB (5680593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:3ee1c5dd86884ae5f962c1702f145a5fb278013afd6c1c6c6313f0122652cc4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d9627af61a170f0352f4d72d2419adeff380b969407d1b98ea4727e7cf3776`

```dockerfile
```

-	Layers:
	-	`sha256:73ace1ddaedb4dc7913d2e1af20cd6a27ff272e0988306c3d5280219bcb137bb`  
		Last Modified: Thu, 05 Nov 2026 19:43:21 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine3.24` - linux; arm variant v7

```console
$ docker pull hylang@sha256:bd53071b81d5b46fac181e25c02e1c8b17938c067c2f3ecf5b050b0dd5754c90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22146575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a642ebc235374667f792b737c48f03f16eab3437334ce3ac98e08252eb2b6ed`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:54:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:54:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:54:02 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:54:02 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 18:54:02 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 18:56:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:56:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:56:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 19:54:57 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 19:54:57 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 19:54:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 19:54:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105784b70e7299cc8f503a69f6621c0b354354e51f028fbc5d56d3220d057bc7`  
		Last Modified: Thu, 05 Nov 2026 18:56:58 GMT  
		Size: 412.4 KB (412384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb9d00dab5cb6a79ffd6193e5f542d01cf6cc3b5c0b67af50eb6b07449cb5ef3`  
		Last Modified: Thu, 05 Nov 2026 18:56:59 GMT  
		Size: 12.8 MB (12785658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da6ff3e4107418584b9156e8469d812884f9ff3c9f1dbcb3d4b79ff7ce798d0`  
		Last Modified: Thu, 05 Nov 2026 18:56:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e792506b70c6a73f8f6afcddde13c8cc2da0da737ae395d901fb5f1e74c49b13`  
		Last Modified: Thu, 05 Nov 2026 19:55:03 GMT  
		Size: 5.7 MB (5680551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:5f4bd9751013247a5f100664d62398716c089d92b79a00d999601e325d74adb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **632.2 KB (632247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09595774ecd933baee762b974153c24191aa9d19eed15d553ab81fb2819e1261`

```dockerfile
```

-	Layers:
	-	`sha256:87de52546a0103495fe2495bb55ba47ee4c29d2f440d4cd6615b5c3f96387a05`  
		Last Modified: Thu, 05 Nov 2026 19:55:03 GMT  
		Size: 622.8 KB (622779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec0d7e923ecac3bcd446ff77ec8fa862aa133066aa8bfa5de1f102f3345e50f4`  
		Last Modified: Thu, 05 Nov 2026 19:55:03 GMT  
		Size: 9.5 KB (9468 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:f4e11b44448ef0f4ef4040f943b64827fbf48fa1bb13c18c2403804dd203d8e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23948521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f657fbad685e68407649f736c73c5864573f249de091c5ebacf4fc55f7839b87`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:21:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:21:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:21:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:21:50 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 19:21:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 19:24:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:24:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:24:34 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 21:38:27 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 21:38:27 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 21:38:27 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 21:38:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f886017a72a598b8c5bc682c8f8d4bb3ffffeee958e04d20604c20b5c92960`  
		Last Modified: Thu, 05 Nov 2026 19:24:40 GMT  
		Size: 415.5 KB (415548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40028eda5c69f532302c054f13641e4de30523a134b33de828648f90eac93411`  
		Last Modified: Thu, 05 Nov 2026 19:24:41 GMT  
		Size: 13.7 MB (13661367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e89a7e13cc0496ed5e5004a75a95aa279417f5ef513f6471761d6c6a433f28`  
		Last Modified: Thu, 05 Nov 2026 19:24:40 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f4870e8fc7b9c32bad93ac3fd9d8a8738271ca1516de27679bbeb811e9bd188`  
		Last Modified: Thu, 05 Nov 2026 21:38:33 GMT  
		Size: 5.7 MB (5680762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:cd07bdd382ff02d7af6b7967054300a199a7f601d14a92024bc92949ffb23db6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.3 KB (629333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46bece626bd470ac56b415e836cd7dc86a3f496803bb8047f5e2b6f4737ffbf3`

```dockerfile
```

-	Layers:
	-	`sha256:494a8f3982f56c002eb3bd387f3f91c1d8cbca02f26b59a2bdfdb5516b555d92`  
		Last Modified: Thu, 05 Nov 2026 21:38:33 GMT  
		Size: 619.8 KB (619825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bb5528c9d10ded5a8ceaae8e03c6a5cb9072bfa82a82bbdf6391e3b99f7527c`  
		Last Modified: Thu, 05 Nov 2026 21:38:33 GMT  
		Size: 9.5 KB (9508 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine3.24` - linux; 386

```console
$ docker pull hylang@sha256:463fbf16f7743848df5f47e621e5347fdcea172bd17cf3a6800bd0ec6b4e13ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23608640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2299a2efbca398e5fd093bd8bca73649587d24b33b2f1e71ca4050f99a352f4e`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:32:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:32:05 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:32:05 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:32:05 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 18:32:05 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 18:35:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:35:50 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:35:50 GMT
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
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da03ce2ba9d440024ac7120f17b781e54e9d62e573fb266c3a8a0f4af9ac0951`  
		Last Modified: Thu, 05 Nov 2026 18:35:56 GMT  
		Size: 412.8 KB (412790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c3aaf288defd18d138ba402f342f49ec511b45688b566727b9946ccdd03c8e`  
		Last Modified: Thu, 05 Nov 2026 18:35:56 GMT  
		Size: 13.8 MB (13834593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc526fd332a60166cb796ce9a90e6bd7fc7d2f56202db0d413e1d2aebec2ba1f`  
		Last Modified: Thu, 05 Nov 2026 18:35:56 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e598569cde991d89509ec73d88129b7e3afe37520fc45a53711b3f27373f9d6`  
		Last Modified: Thu, 05 Nov 2026 18:54:07 GMT  
		Size: 5.7 MB (5680644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:8072d08941a6110757ee7ddf090ca25635c42dddcb094b877365250edc19ba76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.6 KB (629630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db49ce88638c99ce07d74f63d70c8b56c3b94400007e59f30202d14bc95d7e6e`

```dockerfile
```

-	Layers:
	-	`sha256:5ad1397f0d9eadd96ee9a2bacf7e8239c1e3a2319dd4a975e5b43d288423eb35`  
		Last Modified: Thu, 05 Nov 2026 18:54:07 GMT  
		Size: 620.3 KB (620326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b47777963657f0e48e339a5e7c9bba63dbf8ef5deb9f9f357d57c30b718d6d1d`  
		Last Modified: Thu, 05 Nov 2026 18:54:07 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine3.24` - linux; ppc64le

```console
$ docker pull hylang@sha256:cb0f099c3a8a334e9bb8e09e149302a25c728f944f22fb145c759dba4d0b9c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24368149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:480f43a254eeac2bda2ca2bd0b41d026c47bb299ee5e2971c921d5938ed52240`
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
ENV PYTHON_VERSION=3.14.10
# Thu, 22 Oct 2026 14:19:32 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Tue, 27 Oct 2026 01:30:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 27 Oct 2026 01:30:12 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 27 Oct 2026 01:30:12 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 07:47:57 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 07:47:57 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 07:47:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 07:47:57 GMT
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
	-	`sha256:fd7d64908fde87e42104ea07433ac0fff43262450db831effb70a9673ee5f905`  
		Last Modified: Tue, 27 Oct 2026 01:30:30 GMT  
		Size: 14.5 MB (14450045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:420277ce798eec26580efd83a816badec174d74d933369cc8fb00ead610cc7c0`  
		Last Modified: Tue, 27 Oct 2026 01:30:29 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f481f74cb7749ef3fb2fc522783068fc63c66aef848b9fdcdfe688ff869e386a`  
		Last Modified: Tue, 27 Oct 2026 07:48:08 GMT  
		Size: 5.7 MB (5680983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:ac706a24e34774f6e0ec97fe6c5e2c7e03b60e3958248047f62183e9c3b65674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.2 KB (629201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16436e598a764e68a6dfda1ecbdc1bca8cef43208fedc8ec34cf8b5d0ff49e45`

```dockerfile
```

-	Layers:
	-	`sha256:59dcf6e6d2670f32fa81f4401242fe3f6d30cb752c6721270a13a935125268a5`  
		Last Modified: Tue, 27 Oct 2026 07:48:07 GMT  
		Size: 619.8 KB (619778 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d9530bed0c72da10328528c8c9675d1da400ad361a94c363d47f84b722391c5`  
		Last Modified: Tue, 27 Oct 2026 07:48:07 GMT  
		Size: 9.4 KB (9423 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine3.24` - linux; riscv64

```console
$ docker pull hylang@sha256:5854e7b6ed5534779119c6100c2b04faabd73c7ec82c941b753a7110b386e31a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23388634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e07bc8ae41a84e3a510af038cc1d9d20359f471cfdb00fca963bcb121cd15273`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Thu, 29 Oct 2026 11:30:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 11:30:43 GMT
ENV LANG=C.UTF-8
# Thu, 29 Oct 2026 11:30:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 29 Oct 2026 11:30:43 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 29 Oct 2026 11:30:43 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 29 Oct 2026 15:22:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 29 Oct 2026 15:23:00 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 29 Oct 2026 15:23:00 GMT
CMD ["python3"]
# Mon, 02 Nov 2026 21:01:33 GMT
ENV HY_VERSION=1.3.1
# Mon, 02 Nov 2026 21:01:33 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 02 Nov 2026 21:01:33 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 02 Nov 2026 21:01:33 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45977293da9e04daa9d9d75b423a28245c6e96213903706a9c24ae616dfb5f3`  
		Last Modified: Thu, 29 Oct 2026 12:13:56 GMT  
		Size: 412.6 KB (412567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994785242f578ac93a462bf10fe67240ac0668b7f0014aa625a456fa3a85bc0b`  
		Last Modified: Thu, 29 Oct 2026 15:23:49 GMT  
		Size: 13.7 MB (13713821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16aa9ebf101aa27945f36494679d89067ad9490afaa4b6614f4dd8da505156a8`  
		Last Modified: Thu, 29 Oct 2026 15:23:46 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1b8a89d7965bfb1ef8f34ed10b9f51b018501dc6a7ca0d1bd69b8acc34ded3`  
		Last Modified: Mon, 02 Nov 2026 21:02:19 GMT  
		Size: 5.7 MB (5681350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:7a3ef73754b05250e19781205e53172722140e7418525bfcf363bb97214ab952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.2 KB (629198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccb20570d35e27f4b07ee8a90dde71763097c94c50e6643e0c73287a57c91791`

```dockerfile
```

-	Layers:
	-	`sha256:682b1f6160c342f5b3ed475902dad5f74dca77ae3a9c62d39a3e0877ebcac856`  
		Last Modified: Mon, 02 Nov 2026 21:02:14 GMT  
		Size: 619.8 KB (619774 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cb0638ad8e4d57de7bc2fb82c51435029740899832e3cb552c51aa1656d5dad`  
		Last Modified: Mon, 02 Nov 2026 21:02:14 GMT  
		Size: 9.4 KB (9424 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.14-alpine3.24` - linux; s390x

```console
$ docker pull hylang@sha256:4761b2b01508b38374063b7fdba03d22d99b91e53630bb8c97f76e731e315840
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23867133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6ce239df1d92ee9a311333c98084ff736a05b803f482717b0da836ccd1702a9`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:37:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:37:40 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:37:40 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 20:37:40 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 20:37:40 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 20:57:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 20:57:16 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 20:57:16 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 22:07:56 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 22:07:56 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 22:07:56 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 22:07:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52001488bcdfd21d989dddb8e11097ac62ed9ccfd1938dbc5085855729adbe81`  
		Last Modified: Thu, 05 Nov 2026 20:44:14 GMT  
		Size: 413.4 KB (413383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6392cfcb545eb85b78d54619ff38ce8b50915856339e87729fafcfc46d954a9`  
		Last Modified: Thu, 05 Nov 2026 20:57:57 GMT  
		Size: 14.1 MB (14052057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cd721005ca12348ec47b8745e1ee0096893900bd07f212c8b990bdc8d66f12`  
		Last Modified: Thu, 05 Nov 2026 20:57:51 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cffecd3d3efc61b12484c5fe9f53ca2f316cae7b65577e9936f3aae3a5ebfb0`  
		Last Modified: Thu, 05 Nov 2026 22:08:11 GMT  
		Size: 5.7 MB (5680774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.14-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:1b324e57fb1634ab3258c8837cc727c071a29453641177f0cef96d639b1727f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.1 KB (629076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19948c320d9fe06f981ba61255e4238dc3fe367edad4e2f974d70fcb66e3b97`

```dockerfile
```

-	Layers:
	-	`sha256:8ebf6387fa47febd6595f6e576cdba50a440e270570107f51f55db8d03d68e7f`  
		Last Modified: Thu, 05 Nov 2026 22:08:10 GMT  
		Size: 619.7 KB (619720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5843c507f55f7bef603c8a8959f6e72746773fe285064e106dd5cc436147d1f5`  
		Last Modified: Thu, 05 Nov 2026 22:08:10 GMT  
		Size: 9.4 KB (9356 bytes)  
		MIME: application/vnd.in-toto+json
