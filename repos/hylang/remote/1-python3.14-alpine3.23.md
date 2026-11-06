## `hylang:1-python3.14-alpine3.23`

```console
$ docker pull hylang@sha256:df95721c8fb7b9d3ff05cb8396630ae8b58cd409069c420fc6f76c9461dd9106
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

### `hylang:1-python3.14-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:7f8c570c48c5c469c40cb72b76eddfcf9647d4fdf91ec2e8e59b3c884fe8e474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23522064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e8da7676c8d691596b64350d9031f86bb61ceac90b1fff40433d19b754166f`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:25:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:25:35 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:25:35 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:25:35 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 19:25:35 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 19:28:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:28:19 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:28:19 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:31:46 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:31:46 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:31:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:31:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94268b050f528a7cc6e721097f2bb2a2a6d0c8b0c3d1620c5f6c5a3e4beaec36`  
		Last Modified: Thu, 05 Nov 2026 19:28:26 GMT  
		Size: 412.0 KB (411999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80685f97c84df9b8c0c8e519a2455ed0704fa7c6f59a38934d51152623a6bc7b`  
		Last Modified: Thu, 05 Nov 2026 19:28:26 GMT  
		Size: 13.6 MB (13576642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aab2672a4605197e3abd9e699c2fe48ec0c63aaebcc51e29d77abf3e10e7495`  
		Last Modified: Thu, 05 Nov 2026 19:28:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e4649d2f009c28451ba03e9e4847d2252ac12144b86c2fed63a8a331ef9d43`  
		Last Modified: Thu, 05 Nov 2026 20:31:52 GMT  
		Size: 5.7 MB (5680585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:714f5978df3338222ab1fac4b708d0bd8772f5630bccf4ebc636a74dc05318d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c306f656afd77daf2fb8ae8710e596ffb685350ab793ea0e41b67f0b8b5157a`

```dockerfile
```

-	Layers:
	-	`sha256:4ac29113f58018e8d7bff92edd81b81bab443c941888dad3fe359bb47b608e54`  
		Last Modified: Thu, 05 Nov 2026 20:31:52 GMT  
		Size: 619.1 KB (619105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72a0b99dc750065b4894510f50d7a94aaddba843d237a9cf8025e5a06fad77c0`  
		Last Modified: Thu, 05 Nov 2026 20:31:52 GMT  
		Size: 8.1 KB (8052 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:965f7cede6d51c541dfe005a47ccd0e6c8cbe6cb65afd502d0aeba2b46fa39bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22839965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e69d9d0ea720626fdf1002433290778ee17627f4d8964314b73191c8179bc20e`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 18:51:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 18:58:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:58:24 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:58:24 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 19:43:58 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 19:43:58 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 19:43:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 19:43:58 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4e82852b2b3196ae2d95c3130f41c35a52e65773bc47d3f8cf7a2f9d1cf0d9`  
		Last Modified: Thu, 05 Nov 2026 18:58:29 GMT  
		Size: 413.7 KB (413715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8489dff239d24417b72cb54f51392eb0c67e0a95ad8c27640b311e94cfaf20b`  
		Last Modified: Thu, 05 Nov 2026 18:58:30 GMT  
		Size: 13.2 MB (13187129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e49799b27455e02f1ddddb21ebf30c0bdb5f857d1c46b33130c587349eb7a57`  
		Last Modified: Thu, 05 Nov 2026 18:58:29 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411c60bf24a686addea66553426b01c002f41d986856d2e5045eb736fe2fd5d9`  
		Last Modified: Thu, 05 Nov 2026 19:44:03 GMT  
		Size: 5.7 MB (5680624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:883ca6aa686f6099718f54c0a0f8a4223013697b164966b4c25a940e1f5cf89d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3221b00e151c6c55d10b1ccc83d5f1a971fe2b6f671ff7d326897bba813499`

```dockerfile
```

-	Layers:
	-	`sha256:6639bab65807a71cfaf47c5ce34c1c33c15765771d5934d5ba6018c2fe22902c`  
		Last Modified: Thu, 05 Nov 2026 19:44:02 GMT  
		Size: 7.9 KB (7917 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:1052f31e4f647d5242dd0b39c3a4fbdfb65d8401dde2d72278fed31fff7f834f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22135793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a950ac072766d6885b08bbc6d3ec67198cc5eac9b0a3e3b9369bd6e10862d4be`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:51:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:51:50 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:51:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:51:50 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 18:51:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 18:58:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:58:31 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:58:31 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 19:55:02 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 19:55:02 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 19:55:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 19:55:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89b1b794a22fe9d022461bb81ce17d1e5e3d9fd656352759c80afe6876f8a85e`  
		Last Modified: Thu, 05 Nov 2026 18:58:37 GMT  
		Size: 412.4 KB (412370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e88ab60beeffd905d08a2a14c8fd5b17b4ea8d29d2147c4f1c6caa8ba37f03b`  
		Last Modified: Thu, 05 Nov 2026 18:58:38 GMT  
		Size: 12.8 MB (12775741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff66c6d1e9eb61b55c8346f11f5a2ff0efc205d0c53b143bac21b004b797320`  
		Last Modified: Thu, 05 Nov 2026 18:58:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:919836874621a2fcb05050139a6048aa6596b74a31cfbcc84e58b5169c23f8cc`  
		Last Modified: Thu, 05 Nov 2026 19:55:08 GMT  
		Size: 5.7 MB (5680607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:62fbcde094a3a0efe4694b5ebfbd20e5e72ef0c712571be66c239835274ca36f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.6 KB (629613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f96ef63502c5c3b61ec0e503e8d86962c4fbe6022433640e7f2c87ef6637ca`

```dockerfile
```

-	Layers:
	-	`sha256:65d21180a4145172945eb90fd610dd7f5825575727b95d1dfe2846a6ddda5a92`  
		Last Modified: Thu, 05 Nov 2026 19:55:08 GMT  
		Size: 621.5 KB (621481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c740c85a11e34c5353b846ba9dc64d8020a8e4e050b14ff948c7905b5a0dafb`  
		Last Modified: Thu, 05 Nov 2026 19:55:08 GMT  
		Size: 8.1 KB (8132 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:cbd9fef48d0716c38aa90c485bf6bf31cdc83c0b3329a9eaa2e87ee2b31fa806
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23948134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f20cb4eb09c7d6e04846f503a8c5442a4a591c7f91e8ba045694052cc01f5022`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:22:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:22:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:22:02 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:22:02 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 19:22:02 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 19:24:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:24:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:24:39 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 21:38:30 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 21:38:30 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 21:38:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 21:38:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60800654403211e2b567dd263247ce828efd7e5b091b05605573af2c0fd2cd5b`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 415.6 KB (415578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff33bb9b7f98c7c13843ca0abe81c27c9ab7d79d6fea177fe68e4a1adf40983`  
		Last Modified: Thu, 05 Nov 2026 19:24:47 GMT  
		Size: 13.7 MB (13661442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979b710030513ed1c5d371e246cf96876ec2c50744adc49785f230cb60465df0`  
		Last Modified: Thu, 05 Nov 2026 19:24:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c061380f15950d82ee5b3019746d1e7b0c1111a272c3ddf24327493e4ffd5a26`  
		Last Modified: Thu, 05 Nov 2026 21:38:36 GMT  
		Size: 5.7 MB (5680646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:fc349e9c3a9d98b94f09983d14b4d9f924c08c12cc7b4ccf80acd180aa6e5e22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.7 KB (626665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb9635b0ef894e75736fe51bde0fd3943e74a12cf47f3fd8aeda2333ce3eac0`

```dockerfile
```

-	Layers:
	-	`sha256:31eea248db7642f7502b92f3f9703f9f468af262d48a266043fb5bd5a84782ea`  
		Last Modified: Thu, 05 Nov 2026 21:38:36 GMT  
		Size: 618.5 KB (618511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb4bfa714e7e447a82fc9022b5665ffce1746bb55d590734cacfbb537c15e09c`  
		Last Modified: Thu, 05 Nov 2026 21:38:36 GMT  
		Size: 8.2 KB (8154 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:a71d476d5aa7bd924e40914b4b23ab50ee0c371bcc2c0292938b038b3d55f8bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23599266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da3cc67738546f26b32e58010436657d780cb8b52dc8360801d11aeba215c13f`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:33:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:33:02 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:33:02 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:33:02 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 18:33:02 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 18:35:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:35:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:35:39 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 18:54:04 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 18:54:04 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 18:54:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 18:54:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284c0c72805454c07dee60addb50761ca0eb4159acb54cd7a12c53dd04933364`  
		Last Modified: Thu, 05 Nov 2026 18:35:50 GMT  
		Size: 412.8 KB (412806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2acc0afd508186f262bdb4d4314c0ddf8e4a8f696ce9f9b2101ce2b5dfe409`  
		Last Modified: Thu, 05 Nov 2026 18:35:55 GMT  
		Size: 13.8 MB (13827077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9312e5802ed8b68c0b6c0df6f4db73ab8de7760c525022e36533f369aafd871d`  
		Last Modified: Thu, 05 Nov 2026 18:35:46 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f07d90fb8ebbc15ce24721d0fc3433baef52976786a59d572ac9ef86e76bac`  
		Last Modified: Thu, 05 Nov 2026 18:54:10 GMT  
		Size: 5.7 MB (5680553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:0c398a934fbd4329030046d0f767d87d6d35e8305d9007ea658f6b0c9ea19c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:555ba66dbc0d95d414688df1d3e7d7a4c4edd96d33dca7833f19c539d441cc70`

```dockerfile
```

-	Layers:
	-	`sha256:973b9bd8bd768ce61010033cd5b672d3027bb34f12e66d56a9bcf373d068f033`  
		Last Modified: Thu, 05 Nov 2026 18:54:09 GMT  
		Size: 619.1 KB (619080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:153e3f787119cca7e5acc3bc524ade10342f9a70db3fb2f596c3c03f5d892999`  
		Last Modified: Thu, 05 Nov 2026 18:54:09 GMT  
		Size: 8.0 KB (8019 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:914f1a52188dd1042231119111f99933e61e270b6aa7410aa474c3e66560cee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24362802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279ba49a24c8b0f1f239b6e577b22fa43208b66048933e1e39aca5702459653f`
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
ENV PYTHON_VERSION=3.14.10
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Tue, 27 Oct 2026 01:34:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 27 Oct 2026 01:34:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 27 Oct 2026 01:34:47 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 07:48:00 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 07:48:00 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 07:48:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 07:48:00 GMT
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
	-	`sha256:7178ae28ad0be33962da5780dd1dad5bdcc2fa31d9b02e8f7fc0c47f24a60b4f`  
		Last Modified: Tue, 27 Oct 2026 01:35:04 GMT  
		Size: 14.4 MB (14447123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d2afbce6fd5038162f07f2e89b301ceabcf9fc1ebdcc34033b91af70400de73`  
		Last Modified: Tue, 27 Oct 2026 01:35:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a450773b43420b4248ed1f34ba252426547dd6a3d8cd254f888b3138cb9a2995`  
		Last Modified: Tue, 27 Oct 2026 07:48:11 GMT  
		Size: 5.7 MB (5680983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:39957b2a3377d8436ce059b1c434bc89519e4b44e006f7a8fcada36016d8ed4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add5beaacc720419a385aa06858631c00cbce0ca801d7651fded39c9936cd857`

```dockerfile
```

-	Layers:
	-	`sha256:5b88c789169ee96c10f59af05331dde2b91378a196e4aaddf47c6dc8c790756b`  
		Last Modified: Tue, 27 Oct 2026 07:48:11 GMT  
		Size: 618.5 KB (618488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66bc42e859ff96b4ea4f34d77392fa7adccf051b6c5d313aff895661922701d3`  
		Last Modified: Tue, 27 Oct 2026 07:48:11 GMT  
		Size: 8.1 KB (8096 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:d90889ea14bc580db0f669b8aaf0ef288beac90cd169a7a0aa8b8212f0403cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23385053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd8552d4e6e945a10771f3045534b0b8e51a53fd4fae1229284a4fc562daf470`
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
ENV PYTHON_VERSION=3.14.10
# Thu, 29 Oct 2026 12:14:46 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 29 Oct 2026 16:10:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 29 Oct 2026 16:10:19 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 29 Oct 2026 16:10:19 GMT
CMD ["python3"]
# Mon, 02 Nov 2026 21:05:47 GMT
ENV HY_VERSION=1.3.1
# Mon, 02 Nov 2026 21:05:47 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 02 Nov 2026 21:05:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 02 Nov 2026 21:05:47 GMT
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
	-	`sha256:9590d409c5850e57c0dfb901c568a9f726d4cb0bac2ceec4d35f5c243005462c`  
		Last Modified: Thu, 29 Oct 2026 16:11:07 GMT  
		Size: 13.7 MB (13711359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40d69ae422872989252649dc3995728c35019edcf7b7880e18957e5fdccae07a`  
		Last Modified: Thu, 29 Oct 2026 16:11:05 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adba15ad70b1e461e9f16b021d57874f334bed66842dd7a525eadc9820977d83`  
		Last Modified: Mon, 02 Nov 2026 21:06:28 GMT  
		Size: 5.7 MB (5681277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:19161bcdb6293332d96674ef8b3b1104bfc957e08ac4faf712e64a07523c52e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.6 KB (626580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09bff0af7fac39903e849ac5db7c999942baa894cfb76acd2a80e4d673a2b145`

```dockerfile
```

-	Layers:
	-	`sha256:ff086f7bba79d52d59ec518ee0247f9a5b3e173fa6ab4a347076db72b7c628b2`  
		Last Modified: Mon, 02 Nov 2026 21:06:27 GMT  
		Size: 618.5 KB (618484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a217d210e794a815435c021153ca77cbef90415e0cd65576716fd2c6839685dd`  
		Last Modified: Mon, 02 Nov 2026 21:06:27 GMT  
		Size: 8.1 KB (8096 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:38cfe15aba8852fa159b00631790863f33e609c0e1201620d7f01d013edeb8b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23865646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1193950dc45b94b7c06391f4622fc3f5280c8445be32b6411cb4f48e162154`
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
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 20:38:26 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 20:58:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 20:58:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 20:58:28 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 22:07:57 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 22:07:57 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 22:07:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 22:07:57 GMT
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
	-	`sha256:a6f500f1e50e90e8a875677d1889bb44187f741c2074da5ffda8dff586af4ca7`  
		Last Modified: Thu, 05 Nov 2026 20:58:55 GMT  
		Size: 14.1 MB (14052886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d576c401a48c9fd083759d38458ce9aaad58cfc327988123c90220d8174763f1`  
		Last Modified: Thu, 05 Nov 2026 20:58:54 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f25a6bae43e7aacfb966bfaebd801d7062696f8c29f9dad6317608b580ebee`  
		Last Modified: Thu, 05 Nov 2026 22:08:10 GMT  
		Size: 5.7 MB (5680750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:ec097a598a22fbbb707cdc44b683b546ff091ca1a831f05f9659ce2f9447f47f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c369c8b29e1eb6451909607edf6392c18ab306d226a5c1d4bc53ff19a51a93e`

```dockerfile
```

-	Layers:
	-	`sha256:e27ad438b1a353b4705f620e33d69a0ffc596d76d9794b1eb4ece0868b320feb`  
		Last Modified: Thu, 05 Nov 2026 22:08:10 GMT  
		Size: 618.5 KB (618454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b2b46be1459e36e3c187d05185b06b459c7c1189ac8cb11a28fefd52be309810`  
		Last Modified: Thu, 05 Nov 2026 22:08:10 GMT  
		Size: 8.1 KB (8051 bytes)  
		MIME: application/vnd.in-toto+json
