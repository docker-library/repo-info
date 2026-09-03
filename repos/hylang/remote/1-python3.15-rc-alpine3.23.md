## `hylang:1-python3.15-rc-alpine3.23`

```console
$ docker pull hylang@sha256:d80a543bb7528355cd9f02dcd92af28b598e7fae322d6710892f95646d737bf9
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

### `hylang:1-python3.15-rc-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:92e68b4f01c7e5111dfd608e61a5729efe7b19efac6a38aa51b1e5c8e0cfd4ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26694860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051602104d889c2704bf2e1afbcdf33e56314b80b9d6f3e852d53514bc87a8a4`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 22:45:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:45:51 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 22:45:51 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:45:51 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:48:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:48:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:48:30 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:07:10 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:07:10 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:07:10 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:07:10 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89a59cda9458fd70f3bd11a3610027fba31c9a56487c59ff178d6193e3f2d45`  
		Last Modified: Tue, 01 Sep 2026 22:48:36 GMT  
		Size: 408.1 KB (408093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a28264d3a186367e378abc11739bf4dc1e8c0f0b87fbd6ac76637b391dc92c`  
		Last Modified: Tue, 01 Sep 2026 22:48:37 GMT  
		Size: 16.7 MB (16679206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7ef0d4b966c769f0d20e79e4bcf55516f972a243f97e4ac12a45295c1dd057c`  
		Last Modified: Tue, 01 Sep 2026 22:48:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228eb812e637221cda5981b6ecc4e5f9a08a4ecf4d417c982264e14ff3eaf92f`  
		Last Modified: Tue, 01 Sep 2026 23:07:15 GMT  
		Size: 5.8 MB (5762893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:c681c7d0fb225b87023699d8c733e0cb87b3ed55b432a15cdd25aa7e62126b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.9 KB (627850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7923c0e66e4e56f2609dc96c08fed1b92155b4ff0525e5927b1f3f67c66f6b`

```dockerfile
```

-	Layers:
	-	`sha256:3493142729b572caae9a7d7a0d13a9d88c6742620a8014921a2d877dca1aacba`  
		Last Modified: Tue, 01 Sep 2026 23:07:15 GMT  
		Size: 619.8 KB (619775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:82d2acde68d517869d0a78eb0afdfd6d04768ada9f77b40c1ecc90acfd12932e`  
		Last Modified: Tue, 01 Sep 2026 23:07:15 GMT  
		Size: 8.1 KB (8075 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:b4affc0559271fafcbedc665fde9f1b0d3fb15d9b1abe5e925752e0831e78260
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27408415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:929e98d8e66d7a77a2d72102ba35b4333672c32433f5ab85d698b19229843c58`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 22:45:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 22:45:10 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 22:45:10 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 22:45:10 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:47:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:47:53 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:47:53 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:07:51 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:07:51 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:07:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:07:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe2d0212dfca26cb5cd52f50d0477dbaec2f6bbbe97184332835ab093717f35`  
		Last Modified: Tue, 01 Sep 2026 22:48:01 GMT  
		Size: 411.7 KB (411741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d44356a28eae608ea39cec0361f1ebfbda828c5ac03bf10e2d71816987ac92f`  
		Last Modified: Tue, 01 Sep 2026 22:48:01 GMT  
		Size: 17.1 MB (17051642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58dd169a10ad03c271067e2fa217159d2b3560f65aa97d39046137a0f6f66f16`  
		Last Modified: Tue, 01 Sep 2026 22:48:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e940bf7ff8fb47793426e861f1cde50788cc81b1e8433b5c2f402b289842c67`  
		Last Modified: Tue, 01 Sep 2026 23:07:57 GMT  
		Size: 5.8 MB (5762923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:a915be6a7c4828c0991efd35a495c0c00b9415efad718a9487b440b0ddd5ee03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.4 KB (627361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e7eda8f549223316cbedb24cc6508b1aec84a955d9bb5df8f1a98c93f99b9a`

```dockerfile
```

-	Layers:
	-	`sha256:c27b0d6e1b5ed43656d258a438507e550d32ae0f99764001c137aa6e84e46cd2`  
		Last Modified: Tue, 01 Sep 2026 23:07:56 GMT  
		Size: 619.2 KB (619181 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ebb876ff6feb8d32bf2c747c4398698eec1f32c0a58b81cc700a7d011c3004e`  
		Last Modified: Tue, 01 Sep 2026 23:07:56 GMT  
		Size: 8.2 KB (8180 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:9363d1358a3a397fef9080f304e42a58bf0f669e35802589a68500eca85adc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26193401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ffed2f1f06930ca805ba7e845377d01f302eccdd5a6f02cefb5bf1627ad882c`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 17:53:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 17:53:18 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 17:53:18 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Tue, 01 Sep 2026 17:53:18 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Thu, 03 Sep 2026 00:48:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 03 Sep 2026 00:48:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 03 Sep 2026 00:48:28 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 16:54:49 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 16:54:49 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 16:54:49 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 16:54:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa049b4201f0ffd3b970723931cad56371db03003409ec049ecbeb84b289682e`  
		Last Modified: Tue, 01 Sep 2026 18:36:56 GMT  
		Size: 408.6 KB (408647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b174161ec787147573cc8dadda62109f80143143155e478b6fc2b6768bda73d1`  
		Last Modified: Thu, 03 Sep 2026 00:49:19 GMT  
		Size: 16.4 MB (16447535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb08c905a5a326e1a9833062740afb472741a7a44c7665c04bac6de32ca5a90`  
		Last Modified: Thu, 03 Sep 2026 00:49:16 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4456abee0ea68dcb09b47682ccb5682dcff282695ade02c650a1ac29182d9f8d`  
		Last Modified: Thu, 03 Sep 2026 16:55:29 GMT  
		Size: 5.8 MB (5763729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:a85043fc885346c129a7720fc82a4c9a2f523d937909b9c2a4918aa5881785fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.3 KB (627274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:049e14bd7196abdb5ded78c4523a3d46f1b8fe5d959f419cffb2eb73621aaa52`

```dockerfile
```

-	Layers:
	-	`sha256:d71b5b7da59873eae5f0a4cc53ecb44ab89b33fade5774efa6d2c021a703f41d`  
		Last Modified: Thu, 03 Sep 2026 16:55:28 GMT  
		Size: 619.2 KB (619154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7cfd191137b2933a749238d4b64fc3693e7879f13e25ba952387b6448f1e009`  
		Last Modified: Thu, 03 Sep 2026 16:55:28 GMT  
		Size: 8.1 KB (8120 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.15-rc-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:96f88879814be946d37a83046572a057e0b93a20e0803e6e13d30ea7490231c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26817550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea1d330923cce1812902fb1ede724768a329ee9772b03f638fc70c51d80370f`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:45:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:45:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:45:23 GMT
ENV PYTHON_VERSION=3.15.0rc2
# Mon, 31 Aug 2026 23:45:23 GMT
ENV PYTHON_SHA256=8d93af5eaaaea5adfd41bd786a7ba3f03f2ad1ab57c6a65e0b963deab91d5ad7
# Tue, 01 Sep 2026 22:49:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 22:49:59 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 22:49:59 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 23:09:04 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 23:09:04 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 23:09:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 23:09:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9e98c23dfc68797714cdcca588316ad4f73883cba80a44ee6a491838345435`  
		Last Modified: Mon, 31 Aug 2026 23:51:20 GMT  
		Size: 409.6 KB (409551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c12e68b88c2ee6f19848a7f1ab77d575a587d9312fa4e1435a4ec01aab1950d`  
		Last Modified: Tue, 01 Sep 2026 22:50:12 GMT  
		Size: 16.9 MB (16937609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1a51a9c4d2e01dfd75a0f522967b9e737e1cbf1dd5c5584efa9f126c9e045e`  
		Last Modified: Tue, 01 Sep 2026 22:50:12 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564e6c90fa62953f07f06da9f36d6a65b2dd8dd3ac698918f08ba6ed13939a32`  
		Last Modified: Tue, 01 Sep 2026 23:09:13 GMT  
		Size: 5.8 MB (5762891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:5c39a7a3758b686b563f2a295679283f38a0ed8bcdbbf1dc709a6f44b83156d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a98d02c60f06dbcf65fb402f1cd04c9a4412816adefee938b713507846f96b5`

```dockerfile
```

-	Layers:
	-	`sha256:00b48db1504d60e716d60ab4f50f0bc246d434f8bacec0eff42844ac91965016`  
		Last Modified: Tue, 01 Sep 2026 23:09:13 GMT  
		Size: 619.1 KB (619124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdba78299a5fd971456376bb34c03fb295c8a82088e70b63e3c543a0ebce7436`  
		Last Modified: Tue, 01 Sep 2026 23:09:13 GMT  
		Size: 8.1 KB (8076 bytes)  
		MIME: application/vnd.in-toto+json
