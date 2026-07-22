## `hylang:python3.15-rc-alpine3.23`

```console
$ docker pull hylang@sha256:b4bffe516d282c492e15ac580af99765df950aa7f5f10cde17aa3301ba6c9145
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
$ docker pull hylang@sha256:11b1e16f2de273a5853221511551f2b3cd086729d679b4eb57d11d9d2a4c9744
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24178810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144760391e3608473e5a054b655944cb7868fb89689e9d0f2e7509acc8e0bb76`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:32:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:32:36 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:32:36 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:32:36 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:35:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:35:20 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:35:20 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:11:09 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:11:09 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:11:09 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:11:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9495dca3cbc8d0b7a3eb5fa02705c5a7e63a652ca1b8405325c655f4e91a61ec`  
		Last Modified: Mon, 20 Jul 2026 22:35:27 GMT  
		Size: 408.1 KB (408098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c300a8d482685f9ccaf889c8b139a031798436edadd3c08a19fce21fbe9d3fbc`  
		Last Modified: Mon, 20 Jul 2026 22:35:27 GMT  
		Size: 14.1 MB (14079439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaae1ee4ebcf78eab9bf64b9a57688a49e92c90ffb20964a291cc4472a7f57bd`  
		Last Modified: Mon, 20 Jul 2026 22:35:27 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b22eebf5bcecf035dcb63611960640c5e4eb26ec5716c4a5e20ec58d17d7797`  
		Last Modified: Mon, 20 Jul 2026 23:11:15 GMT  
		Size: 5.8 MB (5846605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:027fbf58207d2a4c9e0a5405871c64bb2f61ebc5cebbc35a954d946683c908a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.6 KB (613643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a1355060eedd03339cd7c42b6c82368122787ba3e3e1f07978201661799c208`

```dockerfile
```

-	Layers:
	-	`sha256:df5151b592fbdf308a03f7822880aae9f375cb20bd29c52ea22cdda55e8c8449`  
		Last Modified: Mon, 20 Jul 2026 23:11:14 GMT  
		Size: 605.6 KB (605568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2609154216b773b169362a8c98e43b4254e8d653961fa8d93320e75ca2c2786`  
		Last Modified: Mon, 20 Jul 2026 23:11:14 GMT  
		Size: 8.1 KB (8075 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:364b769bc15d54c3de552388bbb75bf00e213dc8e11774bf1d40c3d157a9e9e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24589920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adca71080494f4029ca4d570d04323eb6b9e220feecd143465ae2a5ca9e3b777`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:31:59 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:31:59 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:31:59 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:31:59 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:34:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:34:47 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:34:47 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:10:59 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:10:59 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:10:59 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:10:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0042c8aa3007fc6186fcd3299096b182c21d458281ee52b817c034c8d51f10`  
		Last Modified: Mon, 20 Jul 2026 22:34:54 GMT  
		Size: 411.7 KB (411735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8102aa2eb33d342fdcf27b3eeff7e58c37677a94ddebded3e4e88c5c5af0723a`  
		Last Modified: Mon, 20 Jul 2026 22:34:54 GMT  
		Size: 14.1 MB (14149339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9177a2531b01cf39c1813e4961cb06d76c114a5239fba646f1d182ad734df9`  
		Last Modified: Mon, 20 Jul 2026 22:34:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09320d787e131e73c9c8f360e0dc17259e62ed3be7c320ae37c5aee8c15b8cd3`  
		Last Modified: Mon, 20 Jul 2026 23:11:05 GMT  
		Size: 5.8 MB (5846740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:370b5a4d44ef37d16344963c1ec720f9199141e9eb50451c8a9408fa1d6e2449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.2 KB (613153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f77607b7f57a64d0d5ab6a408fefd7aa32a47db92bc17dd00d654ff558f532e`

```dockerfile
```

-	Layers:
	-	`sha256:fedf6bdca9c9fa76f8c5c6a3969c4552b74cce1f1b26c1d31e3a6fa702790c08`  
		Last Modified: Mon, 20 Jul 2026 23:11:05 GMT  
		Size: 605.0 KB (604974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3c4c55f93e399d2c46b176284feaf492415b3276d352befb86996c784a8a47`  
		Last Modified: Mon, 20 Jul 2026 23:11:05 GMT  
		Size: 8.2 KB (8179 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:365bf43da4478fc8099a8c9fa7263343aec3f127567730900c9f80d5b2a51b75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.0 MB (24014041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcb95a6b3981fa90dc7f7fe9142aa711ee289e15648ac9aa03c963074dbad91e`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 02:55:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 02:55:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 22 Jul 2026 02:55:50 GMT
ENV PYTHON_VERSION=3.15.0b4
# Wed, 22 Jul 2026 02:55:50 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Wed, 22 Jul 2026 03:39:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Wed, 22 Jul 2026 03:39:27 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 22 Jul 2026 03:39:27 GMT
CMD ["python3"]
# Wed, 22 Jul 2026 13:33:10 GMT
ENV HY_VERSION=1.3.0
# Wed, 22 Jul 2026 13:33:10 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 22 Jul 2026 13:33:10 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 22 Jul 2026 13:33:10 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7c8fd52767ea1f749623feefdcda65c2073c4e4a6c8bd5e5dd6f75d6415609`  
		Last Modified: Wed, 22 Jul 2026 03:40:14 GMT  
		Size: 408.6 KB (408628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cce1abac87f98bdb0b76fe8a50c168985c65859bee54e13e7af141e324462d2`  
		Last Modified: Wed, 22 Jul 2026 03:40:16 GMT  
		Size: 14.2 MB (14184238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17abdba58932f5de940f3b69eaf2dcecd0aa3c29534aadd8acdf5043dcd29d17`  
		Last Modified: Wed, 22 Jul 2026 03:40:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6de8fb3fac42a8fa3ebd792df87f10151a9f02eb9a889849635531d14d744fe`  
		Last Modified: Wed, 22 Jul 2026 13:33:49 GMT  
		Size: 5.8 MB (5847687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:8b905f23a4e31b02369b7478311ae84a9262ea5b6dbd5e92c1fbeb01a5de8d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.1 KB (613066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a95826975146ae115c154f99949b01496392b555a4f17d908db8f7944d23776e`

```dockerfile
```

-	Layers:
	-	`sha256:9fd8cba40d350840266f6c6b62d3cb735a08cb650c45ee3f919508d22b5f58d4`  
		Last Modified: Wed, 22 Jul 2026 13:33:48 GMT  
		Size: 604.9 KB (604947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85e1d5439ea718f00c367a356cae56ae452c496e77e2fa3a4361c26ec169d730`  
		Last Modified: Wed, 22 Jul 2026 13:33:48 GMT  
		Size: 8.1 KB (8119 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:963dd7934c8d023f62f124deebf2e30a981315ce1afb37753127b399e1b53785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24526401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc808a43f8ba04c169b406a4de72b8687c1b2c66b7e2433b6109ea1cd6620c7`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Mon, 20 Jul 2026 22:49:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 20 Jul 2026 22:49:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 20 Jul 2026 22:49:23 GMT
ENV PYTHON_VERSION=3.15.0b4
# Mon, 20 Jul 2026 22:49:23 GMT
ENV PYTHON_SHA256=93efb9c88d7b6633368e7f7b8f8db6e98988f7f761c09b77849447262841ce3a
# Mon, 20 Jul 2026 22:55:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 20 Jul 2026 22:55:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 20 Jul 2026 22:55:45 GMT
CMD ["python3"]
# Mon, 20 Jul 2026 23:09:53 GMT
ENV HY_VERSION=1.3.0
# Mon, 20 Jul 2026 23:09:53 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 20 Jul 2026 23:09:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 20 Jul 2026 23:09:53 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0afd00fecaaf3e93049f28c6984a88199b5f165ae4042835f88fa220438a316c`  
		Last Modified: Mon, 20 Jul 2026 22:55:58 GMT  
		Size: 409.7 KB (409688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e56d0b6eab26c1da75868d430ac1c141e9c42de6be46cfb1f2e3b1d3d97cb7e`  
		Last Modified: Mon, 20 Jul 2026 22:55:58 GMT  
		Size: 14.6 MB (14562627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63076280665a1de825c1a4ab073eeddf5531e60ddc73c13b7c7f533490ce63ee`  
		Last Modified: Mon, 20 Jul 2026 22:55:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920bc1bb52577312515bc9ec3369bd12e1016af791fe35495494091aea253c05`  
		Last Modified: Mon, 20 Jul 2026 23:10:02 GMT  
		Size: 5.8 MB (5846590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:7d2516293f9c54caa807077d89eb40531c02af3be30a062f3c758fa0874704be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.0 KB (612992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:111e70015c4e2839f471d24084340545f99e3d699b12c56707e571cf9de0751e`

```dockerfile
```

-	Layers:
	-	`sha256:602bfe778e29bb711031a95f30f149eac9402f839f27d1299b9f7c95ab39ac21`  
		Last Modified: Mon, 20 Jul 2026 23:10:02 GMT  
		Size: 604.9 KB (604917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea54d6004af4fff5ad939730ac8c6fc7409661f0de71a1f724d4d6619c83ed45`  
		Last Modified: Mon, 20 Jul 2026 23:10:02 GMT  
		Size: 8.1 KB (8075 bytes)  
		MIME: application/vnd.in-toto+json
