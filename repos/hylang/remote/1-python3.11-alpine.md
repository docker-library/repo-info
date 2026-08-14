## `hylang:1-python3.11-alpine`

```console
$ docker pull hylang@sha256:af60841538eb778ed02583e82ccbc0739f926921cdf58b72af1345b3cb1100ce
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

### `hylang:1-python3.11-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:42c540660a6b29e8ccebb51df6d5cc500a7ce4504bd7565b5fa1ef28e927e68d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27245185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d17e3159ea3f548f9b487c0e7f0b01a7076f1c9a6d2c2547b59bc27f1ae83e`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:44 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:34:44 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:34:44 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 13 Aug 2026 19:34:44 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 13 Aug 2026 19:34:44 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 13 Aug 2026 19:44:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 19:44:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 19:44:35 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:12:06 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:12:06 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:12:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:12:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0021712cb493a0e6a23e7793de77e942d10e7e3aba2c215389755dff3e1f08f0`  
		Last Modified: Thu, 13 Aug 2026 19:39:49 GMT  
		Size: 408.1 KB (408091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b04807213722e8ce7cf6b799f969df279894cf4098ebde6f044ff9b2a7662434`  
		Last Modified: Thu, 13 Aug 2026 19:44:42 GMT  
		Size: 16.1 MB (16128783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1db2c3adf0a3b90db0bf80b29b69574d094438f750faa237caf175cce784e3e`  
		Last Modified: Thu, 13 Aug 2026 19:44:41 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87c733f20872493c715ae563a1babe1c09d9848de36055c81fe77852749b710`  
		Last Modified: Thu, 13 Aug 2026 20:12:12 GMT  
		Size: 6.9 MB (6861671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:2f28bbca63fa12a839504d8916a707156ec167e4165414a92ba15298ff90c045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.9 KB (692919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef111b828ce9f544ad593cf10597c61179ebe3e7224640c86136d9c436e738a`

```dockerfile
```

-	Layers:
	-	`sha256:10dc167331a3f8b1610bc4d3ce5e40c43fdfcec9616d16bcd5cf87283d97485e`  
		Last Modified: Thu, 13 Aug 2026 20:12:12 GMT  
		Size: 683.5 KB (683512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e63163bc11057f32c866e9dd6e8bcfdcb8c223dd20a14b06dbba0d716d3d9a8`  
		Last Modified: Thu, 13 Aug 2026 20:12:12 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:a702776d1cb5c858d65af3756b4a21811b4dfc3d983d3ac651f611bc130087e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.5 MB (26509771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bfe661a2c5348c740ae3178f0d275c6951d9bc9baeb9bfc72283d3af99468dd`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:48:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:48:54 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:48:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:48:54 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 13 Aug 2026 19:48:54 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 13 Aug 2026 19:48:54 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 13 Aug 2026 19:55:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 19:55:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 19:55:35 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:23:14 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:23:14 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:23:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:23:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a0b5c8416803f2ebdc909267d6dcdf3f0ff346bd574ba9185a32e72835ab232`  
		Last Modified: Thu, 13 Aug 2026 19:55:40 GMT  
		Size: 409.9 KB (409937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2fdcaa4eab032e617b9acb8c12f3990b14a90dd54666d15156b76bf122dc90`  
		Last Modified: Thu, 13 Aug 2026 19:55:40 GMT  
		Size: 15.7 MB (15684418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054e5216705c7ae43d814d16e2703a3b4378212633d22765ae5d699da8a654a0`  
		Last Modified: Thu, 13 Aug 2026 19:55:40 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348622caf3838269721ef502f860ff17130fc144a401de289a94709b53b72f9e`  
		Last Modified: Thu, 13 Aug 2026 20:23:18 GMT  
		Size: 6.9 MB (6861716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:31e4ba29c5028b940148ec41863c4dcdb8e5ed010b725d026e200079513b6b4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fdeaae097b16aa79336e1bac458cbfc9ee222ae800cfdb987dc94ec25ba57ec`

```dockerfile
```

-	Layers:
	-	`sha256:20c43b616a54175f0979dc0540c3f9aac15fcdeee7858349aa814184bfb800d8`  
		Last Modified: Thu, 13 Aug 2026 20:23:18 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:14ae8cb91521fe0f18d7003fd799b96802213a93a0a830340356e8967d1f0d93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25798296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f849eed2494a5ad213c593252f42db2466c82731c450b7ae2b919257397bdc`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:58:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:58:16 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:58:16 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:58:16 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 13 Aug 2026 19:58:16 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 13 Aug 2026 19:58:16 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 13 Aug 2026 20:12:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 20:12:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 20:12:42 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:36:07 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:36:07 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:36:07 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:36:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c89cca872e1c815cf2f75bcdbed6bdf673c93a31e00c37e99dbb83b214a174`  
		Last Modified: Thu, 13 Aug 2026 20:05:34 GMT  
		Size: 408.5 KB (408517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d78cb057aba821a78df7a828d031c9478bad780f999401a7c8c7eeef0213237e`  
		Last Modified: Thu, 13 Aug 2026 20:12:49 GMT  
		Size: 15.3 MB (15267233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a863f9d6bbfc8ee076a4ec9c2e7bc01e0504af2559cc562aaa193421bcf7597e`  
		Last Modified: Thu, 13 Aug 2026 20:12:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aebe8cf83ae4a632af17be3721e79ba52e0c8751cf65667e75b1314a6a89788`  
		Last Modified: Thu, 13 Aug 2026 20:36:13 GMT  
		Size: 6.9 MB (6861684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:1438b503c25b7b977be25aeec4ec346f85f6f40e28f14e8c3e6a8441dd879c9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **695.4 KB (695439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a27531ddace5004a926f80e40ef81a55bf962bcbe23e0438889095a025b73b53`

```dockerfile
```

-	Layers:
	-	`sha256:43a6b909604354a35b5bb6b0a988b5273e0725fc2407bfe7dc149e3e74e346e9`  
		Last Modified: Thu, 13 Aug 2026 20:36:13 GMT  
		Size: 685.9 KB (685920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e37e535a07cc23acef74a3b814bf59b07a3603599193e3c5905a16a26131600`  
		Last Modified: Thu, 13 Aug 2026 20:36:13 GMT  
		Size: 9.5 KB (9519 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:1742c04cf44aeae3a4f640751c0d50648bc902502b50219dd42e4ac3613c1920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27753825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647ce06d165f9fc01e1ab59015abf6a3038ad32effe7da0567f0b861d6817213`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:34:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:34:47 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:34:47 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:34:47 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 13 Aug 2026 19:34:47 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 13 Aug 2026 19:34:47 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 13 Aug 2026 19:48:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 19:48:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 19:48:35 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:12:03 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:12:03 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:12:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:12:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b92e13fa8603c9c753df3644d99e360e0639aa4a1b2600e3a159e60491c2815`  
		Last Modified: Thu, 13 Aug 2026 19:41:38 GMT  
		Size: 411.8 KB (411757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7981f773afd2cc7922fd11e851c02a44657e09176af213d84992258d7695eff4`  
		Last Modified: Thu, 13 Aug 2026 19:48:42 GMT  
		Size: 16.3 MB (16297154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b777d690440a666517674268c6c001d11d873162d0ea0d55f6fa8be19fd3be`  
		Last Modified: Thu, 13 Aug 2026 19:48:42 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd340f13347c37fe337ab41ebee4fa51f28e0f7d59dd65ae49dce6a226cad8a`  
		Last Modified: Thu, 13 Aug 2026 20:12:09 GMT  
		Size: 6.9 MB (6861630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:9b32b4f5ea435d4b4bcf534423faabf927be31434bc81a9708c69b00da876b7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.5 KB (692525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38784ecc0b372c3c94fb4e51af0f374ce63a267194500c692ae95048fef21e32`

```dockerfile
```

-	Layers:
	-	`sha256:35cf38b7f524dec6f72db9f7cafd394c8a1417a3dcd405fc4f93fda3f5c5286c`  
		Last Modified: Thu, 13 Aug 2026 20:12:09 GMT  
		Size: 683.0 KB (682966 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a4c595cd901c43f374ebb2c2991fc05b0698ceec4bcb499ea31ab3a56c05ac6`  
		Last Modified: Thu, 13 Aug 2026 20:12:09 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; 386

```console
$ docker pull hylang@sha256:33c3b7cbcd9792bfbd08aa7e018ba49969eae111357050459b7429ae5e798e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27270085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef440be31f5dde06eaf5dea4a4fc51130d32ab3877428b1baba4c3306f4d1862`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 19:41:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 19:41:21 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 19:41:21 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 19:41:21 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 13 Aug 2026 19:41:21 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 13 Aug 2026 19:41:21 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 13 Aug 2026 19:46:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 19:46:11 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 19:46:11 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 20:15:35 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 20:15:35 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 20:15:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 20:15:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb84eafdba18b59c628b0fc7a2a6bc53d9579c38df3d134eee457dfc94f872e5`  
		Last Modified: Thu, 13 Aug 2026 19:46:17 GMT  
		Size: 408.9 KB (408860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e82d742a74f2975ed1d713712b0fcc9987c5df890eadc92d72dc017521ede34a`  
		Last Modified: Thu, 13 Aug 2026 19:46:18 GMT  
		Size: 16.3 MB (16329042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766d3adaf9fc650701e90614ca8b10b6ec9be769733908e6c163440140cb0c37`  
		Last Modified: Thu, 13 Aug 2026 19:46:17 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a61a2d718ab6b4e8105ac0afbfffa930c9d76a43423ae59accf4f4ad91bf0ab`  
		Last Modified: Thu, 13 Aug 2026 20:15:42 GMT  
		Size: 6.9 MB (6861791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:065afa26ccbe95d6bc378dec7d52e9d469da79c67de4441660f8f7202d93d096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.8 KB (692822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2da826c3280a3dbac5c24b58fd74d7a51134d32c1fc703723bd825b2b3823647`

```dockerfile
```

-	Layers:
	-	`sha256:86d097c55f41fcab3208b5b839dc1c8dc96e66e5544fd16f2ed178f720011031`  
		Last Modified: Thu, 13 Aug 2026 20:15:42 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb602ae21f2da9d8b7659ec9cc5e7831bce6c553355db914e05f4a9d11a09e77`  
		Last Modified: Thu, 13 Aug 2026 20:15:42 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:0c40f6eb9f431bcb611b69f5b02a618918cc7e41692cef98b4b858af88c2a5ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.0 MB (28021230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf0acc98a355baf4212e08afc06787ac308189cc452b8930b7a47909f44175e2`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 20:47:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:47:50 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 20:47:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 20:47:50 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 13 Aug 2026 20:47:50 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 13 Aug 2026 20:47:50 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 13 Aug 2026 21:46:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 21:46:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 21:46:52 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 22:39:23 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 22:39:23 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 22:39:23 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 22:39:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc822856974336a5f9491969b7a7b7f29b5e58f2d639615dbbca8b14649ecf0`  
		Last Modified: Thu, 13 Aug 2026 20:58:30 GMT  
		Size: 412.3 KB (412294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c179ebbab07be983767a97f93460fd47413a3e3f143d0fa6768efd9cc53901b`  
		Last Modified: Thu, 13 Aug 2026 21:47:06 GMT  
		Size: 16.9 MB (16933404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e3b1c38edefd09b25e404e3b219f5c85f17b02c8a73e0d7afb2fc4dd1cc1bf`  
		Last Modified: Thu, 13 Aug 2026 21:47:06 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba3566b00d0349ff7a25cbbc6169675239eb9698c57edfcd39850acf66ddb08e`  
		Last Modified: Thu, 13 Aug 2026 22:39:33 GMT  
		Size: 6.9 MB (6861881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:e40faa843633466c6cf1f564313f0fb878105b1b14a8c78219e7a0364a1b882c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.4 KB (692394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8094427cae426e9e829da0f815eea2329138fb2580c98de4528adc5756cf7a`

```dockerfile
```

-	Layers:
	-	`sha256:ff8defcced92b0f9f038d6e4572bbc429fc022b73b99567b04267efcaa385543`  
		Last Modified: Thu, 13 Aug 2026 22:39:33 GMT  
		Size: 682.9 KB (682919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d4fa5b6583897b26dd4c522bb2b846796bfe12d909e137408da03a6ef1a4597`  
		Last Modified: Thu, 13 Aug 2026 22:39:32 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:e55d2bafd4fd929d9adbfa49fd3e2986a54161a66ca529298a9505ee4f997f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26810936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:932551185d659fb4ae8d45143694eeebba77a1e7c71d5d657d587da66df7cc03`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Tue, 07 Jul 2026 20:23:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 07 Jul 2026 20:23:33 GMT
ENV LANG=C.UTF-8
# Tue, 07 Jul 2026 20:23:33 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 07 Jul 2026 20:23:33 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 07 Jul 2026 20:23:33 GMT
ENV PYTHON_VERSION=3.11.15
# Tue, 07 Jul 2026 20:23:33 GMT
ENV PYTHON_SHA256=272179ddd9a2e41a0fc8e42e33dfbdca0b3711aa5abf372d3f2d51543d09b625
# Tue, 07 Jul 2026 20:55:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 07 Jul 2026 20:55:18 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 07 Jul 2026 20:55:18 GMT
CMD ["python3"]
# Wed, 12 Aug 2026 23:38:23 GMT
ENV HY_VERSION=1.3.1
# Wed, 12 Aug 2026 23:38:23 GMT
ENV HYRULE_VERSION=1.1.0
# Wed, 12 Aug 2026 23:38:23 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Wed, 12 Aug 2026 23:38:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bc5af8c96d298637dcbce686b463835872f8f46466e6c8e74a9fbf7bfe7adc`  
		Last Modified: Tue, 07 Jul 2026 20:56:08 GMT  
		Size: 409.4 KB (409427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedeb49fbe2aa80266a051343c96e0a5ba89f7fdfaa0de8be94404aa75c71df8`  
		Last Modified: Tue, 07 Jul 2026 20:56:11 GMT  
		Size: 16.0 MB (15975621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd16e7d982b714facb4f27427d9e1eaf22454bd26d7c61a29bc5875185be914`  
		Last Modified: Tue, 07 Jul 2026 20:56:08 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604c34cbe77bff4649d010b964074c2c2d25e83453dfe2d5536ffc8300e9deba`  
		Last Modified: Wed, 12 Aug 2026 23:39:06 GMT  
		Size: 6.9 MB (6851280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:4740dfa692b4758f07e3fddf5f191f62dbffea82002cc2a53d808bdc879a8517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.4 KB (692389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0129a2c7abce41cd0681858a8e9587fbae28c11f6cc736516ba3b5207855c390`

```dockerfile
```

-	Layers:
	-	`sha256:c8fa72d391f1aec1f3ae14798c21bc83f4d709c49b7acd763d50ed59d90e84aa`  
		Last Modified: Wed, 12 Aug 2026 23:39:06 GMT  
		Size: 682.9 KB (682915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6159c17c29ae2ed5c526db9cef7c523c84406bf364301ab60cfbcc2b279fbae8`  
		Last Modified: Wed, 12 Aug 2026 23:39:05 GMT  
		Size: 9.5 KB (9474 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:1a27e956940ac564406820040c366cb1ff146980fd22c34cec19787e0d784c0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27546068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa1053974e1b6edfb2c76ca5e909cf3dd1ab1bb91da44edd86275b0b4f45ab1`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 13 Aug 2026 20:22:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 13 Aug 2026 20:22:23 GMT
ENV LANG=C.UTF-8
# Thu, 13 Aug 2026 20:22:23 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 13 Aug 2026 20:22:23 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 13 Aug 2026 20:22:23 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 13 Aug 2026 20:22:23 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 13 Aug 2026 20:32:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 13 Aug 2026 20:32:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 13 Aug 2026 20:32:28 GMT
CMD ["python3"]
# Thu, 13 Aug 2026 21:17:01 GMT
ENV HY_VERSION=1.3.1
# Thu, 13 Aug 2026 21:17:01 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 13 Aug 2026 21:17:01 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 13 Aug 2026 21:17:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c46fe3f081ed7434d98062e83ea5174357a45ff20bc1e684968ce515b6a1d574`  
		Last Modified: Thu, 13 Aug 2026 20:32:52 GMT  
		Size: 409.5 KB (409532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a47bc3bb63e8772cf2eef0965f64af78111c2e0a91fdb677f65b5de47f9f792`  
		Last Modified: Thu, 13 Aug 2026 20:32:54 GMT  
		Size: 16.6 MB (16565231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f457815fcc3dae3a0350033d1cfa1a5723dd2539e9ff4a0e84b33c77008a793c`  
		Last Modified: Thu, 13 Aug 2026 20:32:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b66e055e1399ba0c55d0eee1c4f318ead42bc607860e6317b3003987670e27d`  
		Last Modified: Thu, 13 Aug 2026 21:17:45 GMT  
		Size: 6.9 MB (6861737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:cad7d5d2a41445d2b36b825db14eae0f09282f417702199728709d29e2e40213
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 KB (692268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d0f53ed9e10ea08b035b15a055a43c49f2e1bc8e376545a9cc1d32846502231`

```dockerfile
```

-	Layers:
	-	`sha256:4eb362c3166804bc489ab7132acc534d411c8375a15e9a7d6c0a614f0e2ff353`  
		Last Modified: Thu, 13 Aug 2026 21:17:43 GMT  
		Size: 682.9 KB (682861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43b81cb182654969fcae69427da7e6d1bd69ac648a0d8b0fc14be19ade592286`  
		Last Modified: Thu, 13 Aug 2026 21:17:43 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json
