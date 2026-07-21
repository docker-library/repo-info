## `hylang:1-python3.15-rc-alpine3.24`

```console
$ docker pull hylang@sha256:a87e53e2a43a648241dc66b62834615b4ceb04b06b39afc0b40e9933e5ecd439
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

### `hylang:1-python3.15-rc-alpine3.24` - linux; amd64

```console
$ docker pull hylang@sha256:d7f78f078b9aba0619da26dd986a063038b0a2e26d43b495fd94918a46d3bf21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24200845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9020fde47968a4ef61e75b7b0b806c513e1c24988cccca90d3aa2efa62c80846`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:32:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:32:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:32:23 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:32:23 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:35:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:35:06 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:35:06 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:11:35 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:11:35 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:11:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:11:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d0cedfebe4e5d23e555706a1efc0f90a07ba95ddf8f8647f96ba9f6e1d062d`  
		Last Modified: Mon, 20 Jul 2026 22:35:13 GMT  
		Size: 408.1 KB (408092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab96f092d01238035b965bf4da1e7b3f9dcaf5ec4b278c29bcaa9e332a53213e`  
		Last Modified: Mon, 20 Jul 2026 22:35:13 GMT  
		Size: 14.1 MB (14099510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6332d4b2655835bcf202bf0c50551fe1557fd684e4c8d6d5beb60a3591179b9`  
		Last Modified: Mon, 20 Jul 2026 22:35:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b026982f0617e30c9224a538f3c3f1fade581482e9916c11b8dbec68bc0aab`  
		Last Modified: Mon, 20 Jul 2026 23:11:40 GMT  
		Size: 5.8 MB (5846604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:48327877c0e0c5e12b8b71983c2c2e6655d5391b1aea41076d62a50d21e67683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.3 KB (616261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301aa257737a23205dded693a09ea87921eb8117d7da695c629569f4e395fef8`

```dockerfile
```

-	Layers:
	-	`sha256:5a75f69afce9599f27daa249d70b4de2fc235c89459dfd98c11fef8e09d2da3c`  
		Last Modified: Mon, 20 Jul 2026 23:11:40 GMT  
		Size: 606.9 KB (606858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:708279dfc886cb592b6ea6f732bcfa133fec7b0cf64cd2db421229c8bed0d7f5`  
		Last Modified: Mon, 20 Jul 2026 23:11:40 GMT  
		Size: 9.4 KB (9403 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:4f292f964a9451289677a4d2fea9ce8bd782182e9b294185efed579ccb28b48c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24611221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ced3e75447488a2f39dd5237b3f8bac38166cc9ff3f8165301cc92d0b63fe36`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:32:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:32:00 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:32:00 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:32:00 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:34:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:34:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:34:45 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:11:21 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:11:21 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:11:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:11:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69deebaafbcb96e9142caf6e233e3b2088d9bf61a2c71fb901149f57bb88fd46`  
		Last Modified: Mon, 20 Jul 2026 22:34:52 GMT  
		Size: 411.7 KB (411741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9dbfb8aa6182a79f1b1964529d38713f48ecd09e49ee00ad4769f97a1d24d34`  
		Last Modified: Mon, 20 Jul 2026 22:34:53 GMT  
		Size: 14.2 MB (14169543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e82d04f47751a8989bb1a87571a3c038b396e617925ba13ca9ba14ee896316`  
		Last Modified: Mon, 20 Jul 2026 22:34:52 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851186277c4ae627e2180f324cf6fe32ee0f8faec7764183bd0950314812d26c`  
		Last Modified: Mon, 20 Jul 2026 23:11:27 GMT  
		Size: 5.8 MB (5846650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:c5c905820764c4b23ff4f9e7f8c0b56c1e36b70453d8b0d5d5806466f460ede8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.9 KB (615867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de85244dac062c1e087805238e87950f2d82bbd9733df6825d421f63a4006106`

```dockerfile
```

-	Layers:
	-	`sha256:5c06027dee8060ecdc8564fe8f5059b78b83e4eda6940fd0d7bd49a04161bb8b`  
		Last Modified: Mon, 20 Jul 2026 23:11:27 GMT  
		Size: 606.3 KB (606312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9733dd2784a71544133653fa40a6567de80c9c64e65faaca9ccb63cc6a66b68b`  
		Last Modified: Mon, 20 Jul 2026 23:11:27 GMT  
		Size: 9.6 KB (9555 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.24` - linux; riscv64

```console
$ docker pull hylang@sha256:0ae2ad955698f41050ebb1df1af269788b580acde9926a5332a55d29aa5e70e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24012361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3c5d446c63b0024afca694fa02f2c0c734c7ae6be4bc339481d1cdcd6e999b1`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Thu, 18 Jun 2026 07:41:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 18 Jun 2026 07:41:18 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 18 Jun 2026 07:41:18 GMT
ENV PYTHON_VERSION=3.15.0b3
# Thu, 18 Jun 2026 07:41:18 GMT
ENV PYTHON_SHA256=6a935ae234a67e6549894373b0cfeb8361182d03b21442328ae9598ab7422127
# Sun, 28 Jun 2026 18:11:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sun, 28 Jun 2026 18:11:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 28 Jun 2026 18:11:29 GMT
CMD ["python3"]
# Mon, 29 Jun 2026 11:20:36 GMT
ENV HY_VERSION=1.3.0
# Mon, 29 Jun 2026 11:20:36 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 29 Jun 2026 11:20:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 29 Jun 2026 11:20:36 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719f07c5695780a29e6e3100cb79cefaf3d7c807b13c5be3e805b5e8709f33a8`  
		Last Modified: Thu, 18 Jun 2026 08:26:19 GMT  
		Size: 409.4 KB (409412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0ddca30fc7f62f2087664b9dccdd892e8155bd00e19b0d6a76ae1f93b832c03`  
		Last Modified: Sun, 28 Jun 2026 18:12:16 GMT  
		Size: 14.2 MB (14182485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529a578c39253bd8720038c103d4d2a51a49bb13a8d994ac1ce20f95bc4b6aee`  
		Last Modified: Sun, 28 Jun 2026 18:12:14 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea4e33f6e52614c42bcde26d9ac54041e2894da56a5d213ef26549b3c90d63c`  
		Last Modified: Mon, 29 Jun 2026 11:21:16 GMT  
		Size: 5.8 MB (5845856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:36834c5fc66d3fc924f0a29ac3f7b719c9a2f6733c22ca25548fd3735150b9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.7 KB (615731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:069724942b15ad054a9c063a23d20ebd2cc11fb609e14ec3f76b245ce617d6df`

```dockerfile
```

-	Layers:
	-	`sha256:1dc56c45845376585102f21f76de5afdb4cdf204ae1a6c7d48b84101fa60f37f`  
		Last Modified: Mon, 29 Jun 2026 11:21:14 GMT  
		Size: 606.3 KB (606261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97446c2cdb838f763255dceec67b62d156a418de465a8516091033c4a076efa6`  
		Last Modified: Mon, 29 Jun 2026 11:21:14 GMT  
		Size: 9.5 KB (9470 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.24` - linux; s390x

```console
$ docker pull hylang@sha256:69c0392a2658f201a81500e2dddd0a22ef2f74d4488a7c200f02ac0cc0087016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24541642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb1f79c0eb0c1eeee0ac758d29b30cea577354c473d8c81be5a8eece91417f47`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:47:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:47:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:47:33 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:47:33 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:52:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:52:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:52:45 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:09:48 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:09:48 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:09:48 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:09:48 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f14ab86a79785afc8d2016a72b99ce993d473cba4575499d01e3a646446fd352`  
		Last Modified: Mon, 20 Jul 2026 22:53:13 GMT  
		Size: 409.5 KB (409508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc0bae4338d80565031a8a743b3a0f2cc870edd503c726d62a7f398a5c479d3d`  
		Last Modified: Mon, 20 Jul 2026 22:53:16 GMT  
		Size: 14.6 MB (14575984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b768ce03736e851c404c1fa578586f73e9444f78c53ecd60263d2a662707a54`  
		Last Modified: Mon, 20 Jul 2026 22:53:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e824d2101fa1e527de0a00ecde6fa02108acb1c77cf2cb2d0fea9aa7ba0c78`  
		Last Modified: Mon, 20 Jul 2026 23:09:58 GMT  
		Size: 5.8 MB (5846583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.24` - unknown; unknown

```console
$ docker pull hylang@sha256:1edfa921d4e35f78d7565f35c5882c643b1623eeea4225bf5936dc7a6c930fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **615.6 KB (615609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18577bf5fbf331a2a5d45c2567ddef6351ab0990a8e999533586d292d2f964e9`

```dockerfile
```

-	Layers:
	-	`sha256:dd987e957446fcc75f2364013fa0d3036d3f706533a122b4dd62200fef2eeee4`  
		Last Modified: Mon, 20 Jul 2026 23:09:58 GMT  
		Size: 606.2 KB (606207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd6b7c770df3a5f7af674ad3c43c5a9fc1c59d9d95fd7aface9af1661b75660b`  
		Last Modified: Mon, 20 Jul 2026 23:09:58 GMT  
		Size: 9.4 KB (9402 bytes)  
		MIME: application/vnd.in-toto+json
