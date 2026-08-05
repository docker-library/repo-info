## `hylang:python3.15-rc-alpine3.23`

```console
$ docker pull hylang@sha256:5ecec9193c576b7fc47ba6e7c5a2b507bb188367fb91a00f2e202624c02cd3c3
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
$ docker pull hylang@sha256:9fd94dc36794288338bb401c786f2539b8afb65f5572b7355d3878769c4d6973
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24211024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d087cc80c060548d445e63becfda6aabcc4375cffcb0aad584c5ed123f80311b`
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
# Wed, 05 Aug 2026 15:57:17 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:57:17 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 15:57:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 15:57:17 GMT
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
	-	`sha256:6ae5ccf99edc8adc15c139b5a99238ee66b3fabcf6a67b44bb210385fa53eb30`  
		Last Modified: Wed, 05 Aug 2026 15:57:23 GMT  
		Size: 5.9 MB (5878819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:39c3b29dfbb1a17613c9d74eff0fcd6ad0beaa25c346f88e5329067a4d9f6321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.6 KB (613643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6852bed73b9109739884c6841c7a6211d898aa783f0b5b0ffa1a00d278e71e13`

```dockerfile
```

-	Layers:
	-	`sha256:eec1f253ed14e503c6d0dc4009e2ae2d068daa46c017574c5ac8b9bc3628c9e0`  
		Last Modified: Wed, 05 Aug 2026 15:57:23 GMT  
		Size: 605.6 KB (605568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6273bba1d28cac7384913c95eb397a078e849cb1761a3c9beae9cd173f5ed317`  
		Last Modified: Wed, 05 Aug 2026 15:57:23 GMT  
		Size: 8.1 KB (8075 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.15-rc-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:c17e006cc20ea3ffca0e327dd36aec9804d1c9362a0dd126c5aa7b0d1c94ad5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24621949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2faf982017e952e571be534372b0ab39b252ab0e9b764112fc1b374ecaa61ee`
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
# Wed, 05 Aug 2026 15:57:52 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 15:57:52 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 15:57:52 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 15:57:52 GMT
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
	-	`sha256:81387b0d74c7521696bdf0b4a637e727deb38507460866f5318c7ea7e3105066`  
		Last Modified: Wed, 05 Aug 2026 15:57:58 GMT  
		Size: 5.9 MB (5878769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:1cc7aafa9f60f327ca31846e9d54e5a0ee5071e38fb409c2e2e2cb4fbcc01caf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.2 KB (613153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ce2eea34cd6e8007e119bd17623d99566dd939d0338cc4d9cfc5935a3aa2da`

```dockerfile
```

-	Layers:
	-	`sha256:b73fc404ada2bd5620129950bc453940d4f00f25f93a406259ac01c39f02ef61`  
		Last Modified: Wed, 05 Aug 2026 15:57:57 GMT  
		Size: 605.0 KB (604974 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7c5fc022fc6f3493ccf390d488d33804c169fe10a65a25914bd71138caf7bf25`  
		Last Modified: Wed, 05 Aug 2026 15:57:58 GMT  
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
$ docker pull hylang@sha256:4f0d3a75019e24c443608fc8a044336b2bc9ca504518d1cd0465c59940e59c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24558612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b9970cac25bbe9092b11d8c8af0ada51b2e31e2c1e2cce76474ba6fd947488`
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
# Wed, 05 Aug 2026 16:00:19 GMT
ENV HY_VERSION=1.3.1
# Wed, 05 Aug 2026 16:00:19 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 05 Aug 2026 16:00:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 05 Aug 2026 16:00:19 GMT
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
	-	`sha256:32f96aa49fff969871cd6ed0bc5b36a03dd00008b0e792dc7b8373fab84735df`  
		Last Modified: Wed, 05 Aug 2026 16:00:44 GMT  
		Size: 5.9 MB (5878801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.15-rc-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:404788997c9a944a3e03f0278370300e4d52e5a9f2df3e3ba6202064dc38f9c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **613.0 KB (612991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ab78a8a532c92a5a9cc62a9a63e87581205848465a1157055766c9db0892f79`

```dockerfile
```

-	Layers:
	-	`sha256:69bbbad3e536bb543a519ff5dc10b6dc1cf3adccfbf29275dcc2dfec4d52695e`  
		Last Modified: Wed, 05 Aug 2026 16:00:44 GMT  
		Size: 604.9 KB (604917 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e98938fb340ce4832b2154416c76945d1e88be48e98e65147f021074306f4d03`  
		Last Modified: Wed, 05 Aug 2026 16:00:44 GMT  
		Size: 8.1 KB (8074 bytes)  
		MIME: application/vnd.in-toto+json
