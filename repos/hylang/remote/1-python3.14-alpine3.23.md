## `hylang:1-python3.14-alpine3.23`

```console
$ docker pull hylang@sha256:7b142a11811357b89cdd8269421a249bf1d414663030315315fa2ab4f30e2415
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
$ docker pull hylang@sha256:1d08686c80f4ecab935a10f09e2cfb3b0a976c8c48b4b7ab2c0547a590c1ade2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.5 MB (23521767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c89f7651f6e695f1a771dac90a568e902cc7dd966a48b4fc08df1a6ba2584162`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:38 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:38 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:38 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:38 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:38 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:58 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:58 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:48:00 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:48:00 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:48:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:48:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6716206f6d3b1d6758f1085b148aff9232dc021d729b6b4850db362b4c55e648`  
		Last Modified: Mon, 26 Oct 2026 22:41:04 GMT  
		Size: 412.0 KB (412005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81afc17c738b53ca060861c27878803993fd885eb0de4b6be8ba55d8331fd16a`  
		Last Modified: Mon, 26 Oct 2026 22:41:04 GMT  
		Size: 13.6 MB (13576654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e47259cc3813a98a6d7b1961f2aa06860b8460df8cbc4de0b1eb9e8f85c3885`  
		Last Modified: Mon, 26 Oct 2026 22:41:04 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6ca8281bdfa4d3aae53c3236fc43b2fc4f108dc1c11872f6803bd0207aa883`  
		Last Modified: Mon, 26 Oct 2026 23:48:06 GMT  
		Size: 5.7 MB (5680631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:afbf0df31e936744859485b88121ef7ac72a601780d74f0bd19e742f4fd988b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.2 KB (627157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6bb0fa2f34abc52984acf2a2fbb4e21fe831f54407f836c686be59df5182d6`

```dockerfile
```

-	Layers:
	-	`sha256:1589515d569e749bce8ee6f0f7d12901a56e508aaa4ab008c330d6dc835b3d33`  
		Last Modified: Mon, 26 Oct 2026 23:48:06 GMT  
		Size: 619.1 KB (619105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e608c0071c355b3b11999e0d185238f3cc742db3991a37d7033c83f835ce137b`  
		Last Modified: Mon, 26 Oct 2026 23:48:06 GMT  
		Size: 8.1 KB (8052 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:eb67866c32991a1d2b72b262f0c166f66373afd6a9042af714d9a823f40f436d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.8 MB (22839894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133ad044fe1a6d79f4a7a5b863be8827b12e40e061173e46021d66809eb353d1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:43:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:43:11 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:43:11 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:43:11 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:43:11 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:45:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:45:59 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:45:59 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:35:26 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:35:26 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:35:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:35:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518e31c61936e5635302fce0a3c8be0c2aca8b461dbb281f2755733fd838f091`  
		Last Modified: Mon, 26 Oct 2026 22:46:04 GMT  
		Size: 413.7 KB (413739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc710edf239afe1af03e6df1962d2dd5156c82a1b9361728015ee2143aeecbe`  
		Last Modified: Mon, 26 Oct 2026 22:46:05 GMT  
		Size: 13.2 MB (13187134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3100c319a0049f76dbac7405a95af497a5e215fc0678502354c49d4f25eb5f5`  
		Last Modified: Mon, 26 Oct 2026 22:46:04 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939741082038bf32059c4ddc30fbf6aa5092a49c119533f2f4763fae99715a51`  
		Last Modified: Mon, 26 Oct 2026 23:35:31 GMT  
		Size: 5.7 MB (5680585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:536fab470b18850e93eb828aed6dfaec3ad7552b17bb5cd1a656635b7f4afff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.9 KB (7916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c8d24d0384e7c46e90b78342e36bccfec6028daba39f415bb2ec5973c2a212`

```dockerfile
```

-	Layers:
	-	`sha256:4dd87f63a20ec256dc3b1afa4933b7da744a85213f3d32477e6e9282b4f3f7fe`  
		Last Modified: Mon, 26 Oct 2026 23:35:30 GMT  
		Size: 7.9 KB (7916 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:6bc0fd35da9aa0121144864403a5a711150bc685343a3b7e072c357b64833f7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22136138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc5ae350583b679316d3343772cde5523fbd6a039c312ad8451332193305c077`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 23:03:28 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:03:28 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 23:03:28 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 23:03:28 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 23:03:28 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 23:06:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 23:06:22 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 23:06:22 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:57:40 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:57:40 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:57:40 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:57:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:349d2cc0aaca902a17627cb405a52203d446de0f45c98714141e9c96bf30b94f`  
		Last Modified: Wed, 21 Oct 2026 20:46:48 GMT  
		Size: 3.3 MB (3267040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caf706fb9b24bcf9f9eead194c167465f69da065c18432ac4e86d999bdca295`  
		Last Modified: Mon, 26 Oct 2026 23:06:29 GMT  
		Size: 412.4 KB (412377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857f32ef9c93d3fbe203758a2e2ee8b1133a7f6f7fe5a556c70a627167b4837e`  
		Last Modified: Mon, 26 Oct 2026 23:06:29 GMT  
		Size: 12.8 MB (12775757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4498b1421822fe672de6a6c839707b51dade869fee287b143805185c54bfab25`  
		Last Modified: Mon, 26 Oct 2026 23:06:29 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f807338eb3e8bcb9c2bde986e7535c6d2495fa8163bad92f47f64d6896fc917`  
		Last Modified: Mon, 26 Oct 2026 23:57:46 GMT  
		Size: 5.7 MB (5680714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:bc355536fcdc89c4715f370695149415dc7d6bc808e56a8acf06709ae5def40c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.6 KB (629611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1855089dc6a1b795dd725f4da326b2816197078eb73881ca904469e3a340d463`

```dockerfile
```

-	Layers:
	-	`sha256:ff76ef7c0e877ea568c2a51d0c6c57f2a3bb6fd2f0807670f3ccbaa6ae0ac477`  
		Last Modified: Mon, 26 Oct 2026 23:57:46 GMT  
		Size: 621.5 KB (621481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:292425ffb64f1e144324906f0f20dbe62f3ec7599d52b9a435365b94d16989e3`  
		Last Modified: Mon, 26 Oct 2026 23:57:46 GMT  
		Size: 8.1 KB (8130 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:a75582864f41eed96c6a315a89ae69d9c1da3dc950f64a6c3cd5017db92696de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23947346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a012069ff6e9864484c3933366279258548e2898b0ddf0f8b22cf2db03a06234`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:56 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:56 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:56 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:56 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:32 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:32 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:51:04 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:51:04 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:51:04 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:51:04 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a593d46d926b53ef740a57123763c210aedb46f8e8a24c6075cf7e164b2c772`  
		Last Modified: Mon, 26 Oct 2026 22:42:39 GMT  
		Size: 415.6 KB (415575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cca8539b01b9a31e1e9eb89059e776595802aa64545d2e30cb033387832537`  
		Last Modified: Mon, 26 Oct 2026 22:42:39 GMT  
		Size: 13.7 MB (13661477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c1a210df5be30819eee4da635a5a1f0e17662f56b1e035130ed16d61bdcfe4`  
		Last Modified: Mon, 26 Oct 2026 22:42:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2974100d443e75b16dfc8f117e1ae0e9d79854b6ed0a59d1be0eab623b6233`  
		Last Modified: Mon, 26 Oct 2026 23:51:10 GMT  
		Size: 5.7 MB (5680552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:44dff013c69d9022abbd81100bc7c1b0097bdf5e864a2a02f88e9ee71ec02265
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.7 KB (626667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7bd5481e0a696b05b79d5e1eeda175a0e563f2840ad4911973e3e06259bb595`

```dockerfile
```

-	Layers:
	-	`sha256:3486ba19b00a9c8fa5447b801b84b706c17c34076e714bbf2918f96495a22eb7`  
		Last Modified: Mon, 26 Oct 2026 23:51:09 GMT  
		Size: 618.5 KB (618511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b4b6ec8187540b9d5370daeeff1bc50d43487a492dfd1deb80b5ec0887638eb`  
		Last Modified: Mon, 26 Oct 2026 23:51:09 GMT  
		Size: 8.2 KB (8156 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:3be1f94695e9a9954d3cd599c8640edf9d19ba6e9c40f46934b2b8e624ce53af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.6 MB (23598086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1147bd0aaeee441bbe2c97b97ef5df6184dcb4d6ed3144d32d860a11eb929d5`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:59 GMT
ADD alpine-minirootfs-3.23.7-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:59 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:45:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:45:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:45:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:45:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:48:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:48:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:48:37 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:28:00 GMT
ENV HY_VERSION=1.3.1
# Mon, 26 Oct 2026 23:28:00 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 26 Oct 2026 23:28:00 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 26 Oct 2026 23:28:00 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:77004571e89a18ecf5125b297fa4f230c74939954ae72ec17872f2da29499aaa`  
		Last Modified: Wed, 21 Oct 2026 20:47:05 GMT  
		Size: 3.7 MB (3677307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a6e152258d47cb4ed9ffde99354ddf567452ea81a11fe8e590788a49305d5f`  
		Last Modified: Mon, 26 Oct 2026 22:48:43 GMT  
		Size: 412.8 KB (412811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e21e435c01c6ceb46a0cca68f98f6e22397b5f7275540400fadaf819b0c5aed`  
		Last Modified: Mon, 26 Oct 2026 22:48:43 GMT  
		Size: 13.8 MB (13827073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff74c9904d9c7f3fc7bc9726a30266caae7fec5958d53c38ff751e51fa6d119`  
		Last Modified: Mon, 26 Oct 2026 22:48:43 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1114eb3e5830aeb4b2bb4d324340f95713d55e4c4cd8976bf9ce9a5438715f`  
		Last Modified: Mon, 26 Oct 2026 23:28:06 GMT  
		Size: 5.7 MB (5680644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:702757ab8d92a87d20b58b4335abfca0225110d0947154885ed775c4d9f15a91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **627.1 KB (627099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:263667c3fbc5d0e49e92857158fdc5e8d383ef0215448fe6c3c258f4a4b958f2`

```dockerfile
```

-	Layers:
	-	`sha256:b1aa15d5d4cea511521fb04cbf16748b0fb836b450dcdb098d49d6d926c47eb0`  
		Last Modified: Mon, 26 Oct 2026 23:28:06 GMT  
		Size: 619.1 KB (619080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:afd858f94b9879a0a13a467a5f78ee701ca76ccf571ffe2de02f0cfef6dc238e`  
		Last Modified: Mon, 26 Oct 2026 23:28:06 GMT  
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
$ docker pull hylang@sha256:35c7018c14841dc9a28c787256ac59fe6b6178ebcec0ba59d5e899b41c9c6c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.5 MB (25513182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c4d97387d356a2de9341242322832d5671244afefe05fec04cd26a27e718a83`
-	Default Command: `["hy"]`

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
ENV PYTHON_VERSION=3.14.8
# Sun, 04 Oct 2026 01:38:01 GMT
ENV PYTHON_SHA256=c2215904f02b175596dc49351585104f4bc20341e1c47378b26a2c274360ce73
# Sun, 04 Oct 2026 02:22:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Sun, 04 Oct 2026 02:22:29 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Sun, 04 Oct 2026 02:22:29 GMT
CMD ["python3"]
# Mon, 05 Oct 2026 02:35:12 GMT
ENV HY_VERSION=1.3.1
# Mon, 05 Oct 2026 02:35:12 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 05 Oct 2026 02:35:12 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 05 Oct 2026 02:35:12 GMT
CMD ["hy"]
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
	-	`sha256:bb8257733ff3a91485fcee8f19dc11dfc7ec2fb5f0c3cca4427c21f76748843b`  
		Last Modified: Sun, 04 Oct 2026 02:23:32 GMT  
		Size: 15.9 MB (15902293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21263880a69bbc1b3211364f4afe2c87a3f3d71c2ba4da093f387f0a1e50e208`  
		Last Modified: Sun, 04 Oct 2026 02:23:30 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d1a450a4d4ea8e94642067fa649edf3617093f3674be4e65f9f7caf703ec8b`  
		Last Modified: Mon, 05 Oct 2026 02:36:03 GMT  
		Size: 5.6 MB (5617553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:b4cf07dd9e25b2f00a8e008d72aa90a82dd4df7899a4b071ba9b52486ecea38e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.0 KB (631041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2add3e9a181e7fd71dd7cb3b09cd437cdd7cd7ba86aa2c88fe90d80e6438960`

```dockerfile
```

-	Layers:
	-	`sha256:6bf3783ec469b19350c83bfea0b1976efa7f500e07f86c18f331a792610b0221`  
		Last Modified: Mon, 05 Oct 2026 02:36:03 GMT  
		Size: 621.7 KB (621689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9611ae69c01ce0e676abfd15f9a7d98e88394f40255fded18d61c033cf9781d2`  
		Last Modified: Mon, 05 Oct 2026 02:36:02 GMT  
		Size: 9.4 KB (9352 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.14-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:924bb0a83235348388cf691b9ee322ca258368c80dce44a0e5deef72c5a1949e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23864359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbde33e34702313666aa90328eef3ab7d0aa84663959d818394c760d753b8136`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 21:47:22 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:47:22 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PYTHON_VERSION=3.14.10
# Wed, 21 Oct 2026 21:47:22 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:59:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:59:00 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:59:00 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 00:25:55 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 00:25:55 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 00:25:55 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 00:25:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f462866f0d48d21fd0e3ff1f6a6640c06b072e70712cb43208bcc522bd40dd`  
		Last Modified: Wed, 21 Oct 2026 21:54:50 GMT  
		Size: 413.4 KB (413413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46ffa34d5dd19d95a06523707602feabc33289500934b58e2a613947765bced`  
		Last Modified: Mon, 26 Oct 2026 22:59:13 GMT  
		Size: 14.1 MB (14052987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a03680e51409d7a9b926e24413c9c37b16765336dca70644833c56a52b6bc96`  
		Last Modified: Mon, 26 Oct 2026 22:59:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8808695b5b8ee5a8200fa87fedb5380739240e9c7c4321be3dd40d2b80fb784`  
		Last Modified: Tue, 27 Oct 2026 00:26:05 GMT  
		Size: 5.7 MB (5680591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.14-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:619c76b11e6f61f8b44fbb6d289b02d0fad7fb9edf7898a77fad6c8c273fb853
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **626.5 KB (626504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e28f527aac92f2e6875f920dc04e1a7dffac65f9304b228c45c8dee7d785c3`

```dockerfile
```

-	Layers:
	-	`sha256:84c32d39769500f3ff8153ab84692ba448097d0f3ec75f38d36c252e3007be02`  
		Last Modified: Tue, 27 Oct 2026 00:26:05 GMT  
		Size: 618.5 KB (618454 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4d4e7906c4af29db7cdf7c18c292eaf828b7015a536cd480a626ea402ee4091`  
		Last Modified: Tue, 27 Oct 2026 00:26:05 GMT  
		Size: 8.1 KB (8050 bytes)  
		MIME: application/vnd.in-toto+json
