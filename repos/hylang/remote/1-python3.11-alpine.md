## `hylang:1-python3.11-alpine`

```console
$ docker pull hylang@sha256:3388c247c2866be7bd1d7d0d1210deb634f26a914a8ac83485fa299c70b4bc68
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
$ docker pull hylang@sha256:d539d3092f4ebc8a1addc43b52ba07284975895a0cf0512c8af6b8a26f1c3266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27257411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f18fb353c7aeb2659432e27ced0f3c6a374a97dd1d6e8c98b60c62f95d6eda3`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:47:55 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:47:55 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:47:55 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 21:47:55 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 17 Sep 2026 21:47:55 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 17 Sep 2026 21:52:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:52:07 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:52:07 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:45 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:45 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b226658ca7e7b4b587d1eea888881b5814ab16a2d4cf1fec417bdf3d594d6c`  
		Last Modified: Thu, 17 Sep 2026 21:52:13 GMT  
		Size: 416.3 KB (416274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae7c48d633663fcf34b6a82fec36ddd8d300b8d23c3eda25da656dce585c162`  
		Last Modified: Thu, 17 Sep 2026 21:52:14 GMT  
		Size: 16.1 MB (16129590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a185933c9c2e754703464d50491c39f3080824ff360d151720af5de5fa96c71`  
		Last Modified: Thu, 17 Sep 2026 21:52:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:364df718fb3ea341588ad59b21e24a0c712e277ec18e6d1679f3edc6fcb5a03e`  
		Last Modified: Thu, 17 Sep 2026 22:35:51 GMT  
		Size: 6.9 MB (6861562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:5f191a0ef39ecf1dad75846e2539c2ae15f830d5789881964b33d5ae15a4db24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.2 KB (694212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94546ccfddcab4bed19b1c3e5ca89b4aae9869402d81babe50ba7a517f21134`

```dockerfile
```

-	Layers:
	-	`sha256:a627569ad8512a21aa112b0bd9a80663d75378f1ed72d8c14019ab49c0f1f532`  
		Last Modified: Thu, 17 Sep 2026 22:35:50 GMT  
		Size: 684.8 KB (684805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dff496146a58c7589dcd718f6c94b0ae7cd68023d30cc3879a56dc5a603e8b16`  
		Last Modified: Thu, 17 Sep 2026 22:35:50 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:34db938e924f625243f0e2f76f5b67d97f76e3bad67778cdea01ef9ed099aa33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.5 MB (26518087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd6f431980505575e00abef813377299703569ba0e85affa80fcecfdb411a54`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:06:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:06:54 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:06:54 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:06:54 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 22:06:54 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 17 Sep 2026 22:06:54 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 17 Sep 2026 22:14:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:14:12 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:14:12 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:49:42 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:49:42 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:49:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:49:42 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2686a8633002467fc33a6722c809cd91b5d7482ff87307e8b2ba47a3a26f4173`  
		Last Modified: Thu, 17 Sep 2026 22:14:17 GMT  
		Size: 417.5 KB (417520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b92359d5109d89541def081ba9a29ac95a5a5b4e0ea35d7ec77c9b5a26b59b`  
		Last Modified: Thu, 17 Sep 2026 22:14:17 GMT  
		Size: 15.7 MB (15683531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14de1ff98f7ddf1e1a88c9acc69e88cf871c9b8578eeb74417ece1728f18b57c`  
		Last Modified: Thu, 17 Sep 2026 22:14:17 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a03e6d80eea05b2446481102ef28ff74610727e39eb023555473e479478fbcf`  
		Last Modified: Thu, 17 Sep 2026 22:49:47 GMT  
		Size: 6.9 MB (6861674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:777c0238731c837914f6fbd4f9955a9f193708dc473f7719c6a74c35f7b35e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d53eb297cf7763e0098d8185668453d58efbf2c279daf5b1f95f1497bc5389`

```dockerfile
```

-	Layers:
	-	`sha256:f27c703c30291eebde02a51e6885d670fff12c038de445b52fd4c27bdd565013`  
		Last Modified: Thu, 17 Sep 2026 22:49:46 GMT  
		Size: 9.3 KB (9304 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:1d3721d218b368b047ab59de3ecab88f0a7e98fc4e367865bf3fcb6d374fd574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25812527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:389ff4b7377e8ef7eb29b17b6a7574942dea11ae6b329f11e2649974767829e5`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:08:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:08:41 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:08:41 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:08:41 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 22:08:41 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 17 Sep 2026 22:08:41 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 17 Sep 2026 22:15:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:15:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:15:42 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 23:25:12 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 23:25:12 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 23:25:12 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 23:25:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1d5ed7e0b457889b2b3d415a15631fc63bb6888eae6ef720ca836e07ce4d56`  
		Last Modified: Thu, 17 Sep 2026 22:15:49 GMT  
		Size: 416.4 KB (416393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64ebcd56bf2b25242a46a6877a3ec44f0e7bdbc49d6aaa281d0895c4fb28254`  
		Last Modified: Thu, 17 Sep 2026 22:15:49 GMT  
		Size: 15.3 MB (15268963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee64db5980af9f00caf7723960df2910f8d818ace180aa2ce24e9ce1f57e0e19`  
		Last Modified: Thu, 17 Sep 2026 22:15:49 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47998d7445392ffc541c4f806e3205180dae68c090a53c155ab01dd9571570f`  
		Last Modified: Thu, 17 Sep 2026 23:25:18 GMT  
		Size: 6.9 MB (6861720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:0c94bedf55611901122abe480adbd5289852ba4687eb265fccbdfc6faf0853f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **696.7 KB (696732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8828fea21519bd804c2bd83fd0c17a60f3d7d39a9b1d8c2de98731d5216c82`

```dockerfile
```

-	Layers:
	-	`sha256:212c36644eeb0c4299235b66f86da3963a9aa7686358437d6cf1c99c13ddd209`  
		Last Modified: Thu, 17 Sep 2026 23:25:18 GMT  
		Size: 687.2 KB (687213 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:385dfbbcd9bf77d2175266446043024f56ad3dcac775f2c61a972952adef4fec`  
		Last Modified: Thu, 17 Sep 2026 23:25:18 GMT  
		Size: 9.5 KB (9519 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:112b5fc2c7d5930938b3c64de1b41157fa7216b9498a2666fada2c514c1b5d1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27771173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68ef167993c329ddf3e176970cdccb0b10272916cd33f0894c829036fdd7a75`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:51:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:51:43 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:51:43 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:51:43 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 21:51:43 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 17 Sep 2026 21:51:43 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 17 Sep 2026 22:05:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:05:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:05:38 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 23:00:03 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 23:00:03 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 23:00:03 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 23:00:03 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8000482fc84a1406d5a86573d75f8795aa5e11ec684112f12d29b04e13503267`  
		Last Modified: Thu, 17 Sep 2026 21:58:38 GMT  
		Size: 419.1 KB (419099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e65a7dde8243a31b7ec67c746f3c19374408a5a98e31cae82abd1a50ea27fe`  
		Last Modified: Thu, 17 Sep 2026 22:05:46 GMT  
		Size: 16.3 MB (16302558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45aa581538407f65d6c5cbfa7273edf2266032c35ae9e103d88a5d04fc8983e2`  
		Last Modified: Thu, 17 Sep 2026 22:05:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec17cc569c0753c02717182b516c64bcc4de841f07b9af352956a6cb7ebe984d`  
		Last Modified: Thu, 17 Sep 2026 23:00:11 GMT  
		Size: 6.9 MB (6861610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:de9ba5f5efe94d5a874d07324a6b8a0500a16bfe5d4c66527e3b341615c28430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **693.8 KB (693818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608eae138c67915f00971e3d1c8fc7d588073783dc27ce5909e03bee69f8079b`

```dockerfile
```

-	Layers:
	-	`sha256:3f829a0d44cbf1b8eee04aa8507c9d67204cafd4d6d7c223f99d00013c4ac0e5`  
		Last Modified: Thu, 17 Sep 2026 23:00:10 GMT  
		Size: 684.3 KB (684259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb590647b22748836154c9cc8907486ee414b41520e807463e412ff1554536e1`  
		Last Modified: Thu, 17 Sep 2026 23:00:10 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; 386

```console
$ docker pull hylang@sha256:49d09b946cf761b6fee22693d198c796ecffc3a8ad57b07a60d631c50b7e9b7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29657887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60cd0e03e689e859dfb7f4dd3ff2309b46de8be0f03c1d127eb84e15d6d4204`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:49:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:49:06 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 23:49:06 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:49:06 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 31 Aug 2026 23:49:06 GMT
ENV PYTHON_VERSION=3.11.16
# Mon, 31 Aug 2026 23:49:06 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Mon, 31 Aug 2026 23:54:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:54:30 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:54:30 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:16:01 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:16:01 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:16:01 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:16:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28df2626364f197f5ee9e1487a29dc0dfd4dad71e93ff8586645a6efca785a12`  
		Last Modified: Mon, 31 Aug 2026 23:54:37 GMT  
		Size: 408.9 KB (408874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae946b7683d225d51f719b7fd7bb1f5d8af49659216b8d4e949885ad53e928d`  
		Last Modified: Mon, 31 Aug 2026 23:54:38 GMT  
		Size: 18.7 MB (18717111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40dab04ffef10e79e4bdb5031606377d68a49bac08c65e3f12eabfdb8575a010`  
		Last Modified: Mon, 31 Aug 2026 23:54:37 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654400160410219ed61f2bd198ca5f2d2d3531d053ef7762a316e2a5432d6e32`  
		Last Modified: Tue, 01 Sep 2026 00:16:07 GMT  
		Size: 6.9 MB (6861512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:513c5e687cd9778611acb38b5dc7af14dbf638ca1cef8a6a245158684c1847c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.8 KB (692822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1341a39ea5ea16e9a9bb7135cad6bc478ef537bfdd13b9192b9529ede570384`

```dockerfile
```

-	Layers:
	-	`sha256:0a7c89bdb570346d659e02c7be80824e305115e3569ea401e1d18cf62fc5988a`  
		Last Modified: Tue, 01 Sep 2026 00:16:07 GMT  
		Size: 683.5 KB (683467 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:182d1a9f92061dcfec6f0b6e91d12e5a0904f607fd78c33dab7923207ea39abb`  
		Last Modified: Tue, 01 Sep 2026 00:16:06 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:57ddf9ca8f721e5329dbdeea6809bf59e2799f8aaa448cff3d6a688bfa7153d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30467386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:338a8362e55cc4bb4d36d4ab3487340fcaffccbfdef002931d3eef06c457d727`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 02:17:41 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 02:17:41 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 02:17:41 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 01 Sep 2026 02:17:41 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 01 Sep 2026 02:56:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 02:56:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 02:56:52 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 04:17:34 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 04:17:34 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 04:17:34 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 04:17:34 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d210b05295b23111ad9ac4c37543979cb7952539eaddcd7e73cc1dec195411ed`  
		Last Modified: Tue, 01 Sep 2026 02:28:05 GMT  
		Size: 412.3 KB (412285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248724d854467d7e1fe887a454cc66635341247a5ec5560123a89eab2b711f15`  
		Last Modified: Tue, 01 Sep 2026 02:57:04 GMT  
		Size: 19.4 MB (19379597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985274e65b3e20d8373f4ed449089625061e52da4bd7f3de20aadb9bc68d982f`  
		Last Modified: Tue, 01 Sep 2026 02:57:04 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fcfbd69e4c1fa74701df82eca796dc8a504f8c9ad5e14c36f9d23cd7556531`  
		Last Modified: Tue, 01 Sep 2026 04:17:46 GMT  
		Size: 6.9 MB (6861854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:46ec47325a4253c7fac8959e8b8517f92671dcf89f77930a8cb39c96ddc3f404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.4 KB (692394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33fb931331001df65c2c0176c63abafac9d7acee485cf0317a01ae29de1a8a8c`

```dockerfile
```

-	Layers:
	-	`sha256:699719e21570eed3a3e2376a83c4375bfa6c2116563f86eedd471d4a98e5543b`  
		Last Modified: Tue, 01 Sep 2026 04:17:45 GMT  
		Size: 682.9 KB (682919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:000c0d04700925a0e5ea7ae52d1cad729b5d1354bf5964280e6d86ed40a2da41`  
		Last Modified: Tue, 01 Sep 2026 04:17:45 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:606e09d1219b6a459d152c33f7f2f9259317825ee977f44dfcf21ab288f88dd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29098129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a2bd0d7a43fd361760f6ed646dde8ee13e5b2a2d33aa19aec477eb90fbc8c53`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 02:10:17 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 02:10:17 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 02 Sep 2026 02:10:17 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PYTHON_VERSION=3.11.16
# Wed, 02 Sep 2026 02:10:17 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Wed, 02 Sep 2026 05:14:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Wed, 02 Sep 2026 05:14:55 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 02 Sep 2026 05:14:55 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:52:14 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:52:14 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:52:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:52:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914bf5a089621f8461f56dd92da4a1b1112c22e5f67444d0523cf7db398b8407`  
		Last Modified: Wed, 02 Sep 2026 02:45:23 GMT  
		Size: 408.6 KB (408648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ba548821f6dde4f186e3a9b56de9373bbf736465e0240feb0ee99f684198da`  
		Last Modified: Wed, 02 Sep 2026 05:15:50 GMT  
		Size: 18.3 MB (18252224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abe37eab228fb5dd47a792a9f36ec51b87b210ca23bc424f52a3302a6c97f06`  
		Last Modified: Wed, 02 Sep 2026 05:15:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c1ca15f8f5c5bdb1798080a896120dad5acbce11cdd6fa14220cfe0e59bc46`  
		Last Modified: Thu, 03 Sep 2026 04:52:58 GMT  
		Size: 6.9 MB (6862648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:86e82d7736a697de8a51d01996874da58ff8eab9bfd6eae9c5055d5fcd7c6cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.4 KB (692390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edda6593b441f7a68eb1134788817bb4ed38302c13e13306b17e460e56904276`

```dockerfile
```

-	Layers:
	-	`sha256:c3f6a225689d4585ea56e06c27a9e9d194526c097fc424380132d2815b9c3c51`  
		Last Modified: Thu, 03 Sep 2026 04:52:57 GMT  
		Size: 682.9 KB (682915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0d272650cef20c38a9af4f3fc7b15708dc4800f535b9141df20854bb97e90e9`  
		Last Modified: Thu, 03 Sep 2026 04:52:57 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:1-python3.11-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:0d6c360faf424d5aa4681dd77a7238d094b3d5827ca4cb1a521e682ec8c9ca9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29895198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16242885a0416da0bb6a79756687441b663ebe5a3a8d651935d297a8d8f19cb5`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:02:04 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 00:02:04 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:02:04 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 01 Sep 2026 00:02:04 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 01 Sep 2026 00:19:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:19:03 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:19:03 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 01:24:30 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 01:24:30 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 01:24:30 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 01:24:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d2b70cacdcf2536a432722326a83028457208f6d13529c1243a87f3f1fcf1b4`  
		Last Modified: Tue, 01 Sep 2026 00:10:29 GMT  
		Size: 409.5 KB (409498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8c07fd9da6a7681f9038104ef130a55e79fe6fcb2967d0ecc030582ede6ef6`  
		Last Modified: Tue, 01 Sep 2026 00:19:21 GMT  
		Size: 18.9 MB (18914307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898e0d2cd0a51c15eaa76dcf0c029bf415115ac6dc2140b9d5d9ad6d1bd3188c`  
		Last Modified: Tue, 01 Sep 2026 00:19:20 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c21694938ff0775f10b6c8db2232c6308ab33b9f5b33dad68505ec7ce79dca7`  
		Last Modified: Tue, 01 Sep 2026 01:24:40 GMT  
		Size: 6.9 MB (6861823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:1-python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:e0c72757424434511a147fde5b52ca0cfbe94f14dc28c5388f6b89ef31dd7ced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 KB (692268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:991e6b58c5f6be230ec3dfb1cf36998c68626f3f9a6b556974c34c0dcb632807`

```dockerfile
```

-	Layers:
	-	`sha256:5d02fb7a68975219dbeaa0f95c133f55e063ddeccf12538e73d37e97bb80648b`  
		Last Modified: Tue, 01 Sep 2026 01:24:40 GMT  
		Size: 682.9 KB (682861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cfc0c2a4bc614caee950538d2918ec778f02ec53ec924baa55262af2a91a63ac`  
		Last Modified: Tue, 01 Sep 2026 01:24:40 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json
