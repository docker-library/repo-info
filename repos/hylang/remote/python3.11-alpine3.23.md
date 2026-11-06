## `hylang:python3.11-alpine3.23`

```console
$ docker pull hylang@sha256:c3460762aa5d437a6f330134cecc1021c22c4f18760710bddf561f0d1b9631ef
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

### `hylang:python3.11-alpine3.23` - linux; amd64

```console
$ docker pull hylang@sha256:cb2b3725ed009a9d300353a04946f53e1a0ef9e6926dc1ac4870523e3f27ea6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27333392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9343ba4e28dacd057922822e453c95e126fa0026d7e47ee425436193e3ccbed8`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:28:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:28:09 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:28:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:28:09 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 19:28:09 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 19:28:09 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 19:32:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:32:51 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:32:51 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:32:17 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:32:17 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:32:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:32:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4d59357238a1abbc7c22489a822be068efe85011ada13fe80ca3c6a283f968`  
		Last Modified: Thu, 05 Nov 2026 19:32:58 GMT  
		Size: 412.0 KB (412004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a67f3bdcb871856cdd6f2434f6129babf2066bc0c1104e7ac6f0864ce890c10`  
		Last Modified: Thu, 05 Nov 2026 19:32:58 GMT  
		Size: 16.1 MB (16135093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b36ef349058d4880ca99faf10b9909a9f3afbf3395de70329fa060692077b624`  
		Last Modified: Thu, 05 Nov 2026 19:32:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0adac6130cfc94e32b8692ad3a1f6f6982c6a06f296d98af8109b28bab59656`  
		Last Modified: Thu, 05 Nov 2026 20:32:23 GMT  
		Size: 6.9 MB (6933457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:526d00bf8f1c007e8781c6077b0bfc955be2f60288f57a558c19c25f10429a8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.8 KB (689801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8f19e24a8c5c4c0f9f29116bb052f92cb08ade20ae31290ebc543230ebe15dd`

```dockerfile
```

-	Layers:
	-	`sha256:72ae0fadad65680998327081751bc1be914335770e961a947525d2e495c5692c`  
		Last Modified: Thu, 05 Nov 2026 20:32:23 GMT  
		Size: 681.7 KB (681698 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b27e64058e78e497eaeb854f9bff0f02095a8f4adb61d68a16f3112f0c72e58`  
		Last Modified: Thu, 05 Nov 2026 20:32:23 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:deb9036d0e52e6a7397cecffc9aff05048c161a4986409687b0f8323fde6ed0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26597309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73bddf9a00633ef7394c83cb7eb3b269660939483aa198f7a0be1f42bfb94490`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:06:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:06:21 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:06:21 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:06:21 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 19:06:21 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 19:06:21 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 19:13:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:13:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:13:17 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:19:10 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:19:10 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:19:10 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:19:10 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d1cc7bdec5932247917137a70453efe0c425fb5a6cb5ef18a58e621ac4b98e`  
		Last Modified: Thu, 05 Nov 2026 19:13:22 GMT  
		Size: 413.7 KB (413715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c82b6dd11d39a35163ea499e3a4ba8fdcdba40edb8fbcf2dac0f9f3d59ec3ee`  
		Last Modified: Thu, 05 Nov 2026 19:13:23 GMT  
		Size: 15.7 MB (15691610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc128f098687213b6dfbd387c87a2ba4adb47eef05f25f7b3bc3bb96a016673`  
		Last Modified: Thu, 05 Nov 2026 19:13:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fc9d32a612921545f0a811f47e4f5959b6d478801b941bdd061af813894a08`  
		Last Modified: Thu, 05 Nov 2026 20:19:14 GMT  
		Size: 6.9 MB (6933486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:69354072be0f0783e4bc6417e58f694a3343ac141c4ac180e47546554e9c9df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4b3dcd8425412bd87ad404d98aa2cd7bc430f28a6978a48a60282eab436d5b`

```dockerfile
```

-	Layers:
	-	`sha256:22d132c62ed001a7c60f5b4a46b6d9057d8f79737f96f405d86226fcba52e09d`  
		Last Modified: Thu, 05 Nov 2026 20:19:14 GMT  
		Size: 8.0 KB (7968 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:37fe6150b4aa7f50959a49da14ac6542badcc754b61d234255ef6a6af1fd3761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25888413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33837447184e936b744d26693869a979652f3bd67f18825b54e3b0a96b7f9ec3`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:05:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:05:43 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:05:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:05:43 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 19:05:43 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 19:05:43 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 19:12:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:12:37 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:12:37 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:23:21 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:23:21 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:23:21 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:23:21 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207e60029e1b558f2bf5aae23125f7fc88c50a9b07b98204bb8f178486c0af74`  
		Last Modified: Thu, 05 Nov 2026 19:12:44 GMT  
		Size: 412.4 KB (412385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80105a11d265ed4c72e6fa8ada02dbdbee878a9384efc340a647889e8e7de301`  
		Last Modified: Thu, 05 Nov 2026 19:12:45 GMT  
		Size: 15.3 MB (15275404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4ce4c62ffd8e8f9d268f92301b2d6fc038b19230754dd63bdcbf6b9b55317c`  
		Last Modified: Thu, 05 Nov 2026 19:12:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:362cbdce2aa7f19a3c59c09f38285dc54d22f55daf376ab6c3193b9a0d533db7`  
		Last Modified: Thu, 05 Nov 2026 20:23:27 GMT  
		Size: 6.9 MB (6933547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:bb6941a1770379fda38a29083923bcdda7fb5b6cf4edb9aab7877942bd3b9e59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 KB (692256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a284d5c63ee7551e52b23623956224c695a0cdf11212bf8764681cc5fd4df0`

```dockerfile
```

-	Layers:
	-	`sha256:3c7639795f81d18ef45e35874124a8a034d2cfb976e534cdde4c384544e9ffda`  
		Last Modified: Thu, 05 Nov 2026 20:23:27 GMT  
		Size: 684.1 KB (684074 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26f7e415f93c26d7f95a2f775757e84fe8dcbc2301cc961fe36ee1b248d5633c`  
		Last Modified: Thu, 05 Nov 2026 20:23:27 GMT  
		Size: 8.2 KB (8182 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:f716988dfb202b76c15e11033ac1476852fcaabce57feefdb0fa7f83b46eb49e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27844987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7865519cc23ae9a54d355a6053e3d8d69e6f71dccd9565adb79e7187f104f58e`
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
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 19:22:02 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 19:22:02 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 19:31:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:31:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:31:28 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 21:38:57 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 21:38:57 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 21:38:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 21:38:57 GMT
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
	-	`sha256:2c81bb6bad0da7b6f685a1845107b9949fe8d62abbaf6db5e99ed2edb0a43d4d`  
		Last Modified: Thu, 05 Nov 2026 19:31:36 GMT  
		Size: 16.3 MB (16305388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beb48ce8a6549e50ca0eb3f3210cd2b8b34306c44bafc7f035d7abf02c64bcd6`  
		Last Modified: Thu, 05 Nov 2026 19:31:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39206987e112df0672d81f213e4288e0ad54dec69f11ff17885ffe8fb0315c2`  
		Last Modified: Thu, 05 Nov 2026 21:39:04 GMT  
		Size: 6.9 MB (6933552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:557ae81281cf0b751de086d856d88737d2ce799f4a84508f70087974fdae898a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.3 KB (689310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbdce0c799a8c8c9fbc3706cbbea3ae9d18446cf6b32bac65b798967122b1c75`

```dockerfile
```

-	Layers:
	-	`sha256:e783fda453a918f1b3fd57442c00566122682da60ef559c7715e8f97c7e1d181`  
		Last Modified: Thu, 05 Nov 2026 21:39:03 GMT  
		Size: 681.1 KB (681104 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2e9d2a9f0f69c21d3c358eaebd5eb4d659de7cf416258d3f617f5e5ad24308f`  
		Last Modified: Thu, 05 Nov 2026 21:39:03 GMT  
		Size: 8.2 KB (8206 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:d241cf4c3bb0c7c9330d0b17392d3d2be18a81b62ce45ce7602845133830c15a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27365551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c95bebb0809fa6a221f647d0c87f31184a829bea1c85a6ccb78c47033a5cef48`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:35:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:35:37 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:35:37 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:35:37 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 18:35:37 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 18:35:37 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 18:40:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:40:39 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:40:39 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 18:54:26 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 18:54:26 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 18:54:26 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 18:54:26 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:588eafde28de296a4a66571122ce11a8cbccbf6d47a57d581913f41d4652c877`  
		Last Modified: Thu, 05 Nov 2026 18:40:46 GMT  
		Size: 412.8 KB (412799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670425f68d9d366dac96ac2f9e33a0ca62e62d044b85820cfeea185dd49a0ba2`  
		Last Modified: Thu, 05 Nov 2026 18:40:46 GMT  
		Size: 16.3 MB (16340519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe6c46bc84c75b5c58435fedc1a0b368e60209e7799a4f1bc9b7d8fef4ebcd4`  
		Last Modified: Thu, 05 Nov 2026 18:40:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72d8d643ec8e1c4bdacca9a71e345a034f06bd1abc7fa2a41805bcadbf02366`  
		Last Modified: Thu, 05 Nov 2026 18:54:32 GMT  
		Size: 6.9 MB (6933406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:1de6ca47660968ad810571b9565401d81795ee5d9163a9e5bde41d307c437a5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.7 KB (689744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71d3e2af53afd1a186c635f2ff09dc789ed80025b4bbc1b33d3fec0f76d37eb9`

```dockerfile
```

-	Layers:
	-	`sha256:3a5556a901832fde0bb9300b6789fba5d83ac4b9cdece389b64f3efa7ff945e5`  
		Last Modified: Thu, 05 Nov 2026 18:54:31 GMT  
		Size: 681.7 KB (681673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c4f340eaff157d14af1957be60a65190bc18043f63a5bcd4630adbbe05003ee`  
		Last Modified: Thu, 05 Nov 2026 18:54:32 GMT  
		Size: 8.1 KB (8071 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:55330baeebb38d6959f3f4b0b4f4f85df62342a7ab310b42228cdabcb7e34ca3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28107083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb9435ca26d102b9c954783f90744c76939040640dd01ed4e005ba0eb31407d4`
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
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 22 Oct 2026 14:19:35 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Tue, 27 Oct 2026 05:02:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 27 Oct 2026 05:02:41 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 27 Oct 2026 05:02:41 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 19:05:46 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 19:05:46 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 19:05:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 19:05:46 GMT
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
	-	`sha256:97d1473b6074c4bb18faabf56fa845ef0db042870ff51db50bb494e912913ada`  
		Last Modified: Tue, 27 Oct 2026 05:02:54 GMT  
		Size: 16.9 MB (16938781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:270c577de669973f2eeb3f0b016fcb85576468a416a666df164d6b0cb2dbc07f`  
		Last Modified: Tue, 27 Oct 2026 05:02:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:becdb2f4e97d14cf9d7f9d8f056f6acd7db6d8dd66953010121444520684c27c`  
		Last Modified: Tue, 27 Oct 2026 19:05:58 GMT  
		Size: 6.9 MB (6933608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:c90c27dcf5ac52ab9c8b07382241efda5446d03f4d8521139319b02dae19039d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.2 KB (689228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d289344b6e321470083098567f77a3f82bbe636e2d7bdb8eafe7c61929396ddc`

```dockerfile
```

-	Layers:
	-	`sha256:fb29e176dc99f39844690857a38425bc88ba17bfd0a64214f7fb1e0df1c85b64`  
		Last Modified: Tue, 27 Oct 2026 19:05:58 GMT  
		Size: 681.1 KB (681081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce1498b231fc34e151fa0a53bf69632280044d648115dbccc800faa6ad6faf82`  
		Last Modified: Tue, 27 Oct 2026 19:05:58 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:76735b7824a0ebc7a27bc9b22a05f02b9a76190ca1d4f14d053f4cdf323162f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26949912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84ed4672e59a69a30014320a3c7fbce4b31441043d1ea7dc503d1de0de31d8af`
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
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 29 Oct 2026 12:14:46 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 29 Oct 2026 12:14:46 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 29 Oct 2026 20:05:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 29 Oct 2026 20:05:36 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 29 Oct 2026 20:05:36 GMT
CMD ["python3"]
# Mon, 02 Nov 2026 21:30:22 GMT
ENV HY_VERSION=1.3.1
# Mon, 02 Nov 2026 21:30:22 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 02 Nov 2026 21:30:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 02 Nov 2026 21:30:22 GMT
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
	-	`sha256:d1a09518285f11009ca8d742f25e0c67792dcf59ebe97ac1c67a62b60f97e67f`  
		Last Modified: Thu, 29 Oct 2026 20:06:30 GMT  
		Size: 16.0 MB (16023192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ce5984ae9ba17a38f5683fa11301a306c7b0a29c685b83f4e385c46065aecd`  
		Last Modified: Thu, 29 Oct 2026 20:06:27 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7b3890df01105f11f8d6cbab8e9911524edb555ca12905feb259babca8a9b1f`  
		Last Modified: Mon, 02 Nov 2026 21:31:07 GMT  
		Size: 6.9 MB (6934304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:a723d7ec4c3bfef3c67df063dac5e1c6ff1516e51823ab6a779145bf1123b9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.2 KB (689223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4441e333050d57ab83a21419ef1a098a36e359758eace4e0e3135487790eecc9`

```dockerfile
```

-	Layers:
	-	`sha256:b19750f847b8bf7d01a1cee92516dd3aca9ed0194d0a7da89bdc23e3c68d6557`  
		Last Modified: Mon, 02 Nov 2026 21:31:06 GMT  
		Size: 681.1 KB (681077 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:620171d41e84b5b9d05d22979be97b66c05cc3c605ab6e54b990ba6927bc5976`  
		Last Modified: Mon, 02 Nov 2026 21:31:06 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:c33a150f79e2b533ab0bbabf0ea926c6d9080a6b2b3fadfd36157ff54a6c8ee7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27637243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73d89a3265ea94f777bf2afde3acea41048ae84bb86b676b5b96eca06958f36`
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
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 20:38:26 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 20:38:26 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 21:13:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 21:13:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 21:13:07 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 22:38:39 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 22:38:39 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 22:38:39 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 22:38:39 GMT
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
	-	`sha256:d94e5538273f9b0b99903e3c3a8998d5ea05c9e1ac2e16743f7d8df4cb4a67d6`  
		Last Modified: Thu, 05 Nov 2026 21:13:20 GMT  
		Size: 16.6 MB (16571749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d1402f11033d1c7127c886745a2d97dd733e9f5c7739348119b49dc2ad8dda`  
		Last Modified: Thu, 05 Nov 2026 21:13:20 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b667e513c4dbf08da67d4ea8e879f4212809a311bae2f5b7836f6b473c33efa`  
		Last Modified: Thu, 05 Nov 2026 22:38:55 GMT  
		Size: 6.9 MB (6933484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:d60a671c90014e03f4f008aa9e6c014159836ee777cd5a1ad03cdf9f6be15228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.1 KB (689150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91f95569393ede3bbf767501500382e3ff7f706193e45cba605fb2090b245fd6`

```dockerfile
```

-	Layers:
	-	`sha256:ec0ff199a283914c0878eeea051afbec9699449233f777e266b1beac8a4a6876`  
		Last Modified: Thu, 05 Nov 2026 22:38:55 GMT  
		Size: 681.0 KB (681047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:577a5e4fd058323cd37614efb7c7a579c0d501539a3c25d6efb49baf6ca06754`  
		Last Modified: Thu, 05 Nov 2026 22:38:55 GMT  
		Size: 8.1 KB (8103 bytes)  
		MIME: application/vnd.in-toto+json
