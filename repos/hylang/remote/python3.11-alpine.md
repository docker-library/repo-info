## `hylang:python3.11-alpine`

```console
$ docker pull hylang@sha256:61f04e38d868bcef8f1b34d17db2f394e6487a2740544437094eaffc57eec514
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

### `hylang:python3.11-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:a6b9ec6c489b1cd0fdd156e4973c2d9c0ee152777c0ed37b77ce3bf95e92561b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27336383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44f93ff621075e8730cd1ed60d9ae65bd8b461170667dc4a6e88f8916f98d02d`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:25:15 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:25:15 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:25:15 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:25:15 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 19:25:15 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 19:25:15 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 19:32:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:32:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:32:17 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:32:16 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:32:16 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:32:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:32:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3331eff5fe3d769b239af2a40ed2aa245d2efa90bb3ed942ed29029ca68ad1f7`  
		Last Modified: Thu, 05 Nov 2026 19:27:46 GMT  
		Size: 412.0 KB (411978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffce9e6de4b9b2db20249d465ac3e18042e2a1a786147a810b3c8900f45b6f55`  
		Last Modified: Thu, 05 Nov 2026 19:32:25 GMT  
		Size: 16.1 MB (16137042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb077a2a73084024be1e006a43615aa3088ed9f4be5c9f07c8c82e78f4702cb9`  
		Last Modified: Thu, 05 Nov 2026 19:32:24 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b98519d38c8959ec1f87081e18d23aa34e451a13817dc4353af9724773647a`  
		Last Modified: Thu, 05 Nov 2026 20:32:22 GMT  
		Size: 6.9 MB (6933438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:9abf459d8b294578878f7c25193b3cc1486508a9088f1661e323a6221ebfdebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.3 KB (692275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ff24ea8734bec1ba49268b704fd2fb02e361b9905595cfea1dfa23aa3272f98`

```dockerfile
```

-	Layers:
	-	`sha256:be2fd854c93340c871480674f26e1f0c0bb42701f37e8a4f1695220868e955aa`  
		Last Modified: Thu, 05 Nov 2026 20:32:22 GMT  
		Size: 682.9 KB (682868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abfbb927146e919482c29ba4c428ee92cfbbb698089e050c934eb84aeca054c6`  
		Last Modified: Thu, 05 Nov 2026 20:32:22 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:1907aa0e21f7158e2a00ec654c45e016ca075c945178206ce3cfc246fb52cb00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26597509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a26956791778405fab0c05015e4d677c15f434924c1be8be5f572e44a01c047`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:05:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:05:22 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:05:22 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:05:22 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 19:05:22 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 19:05:22 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 19:12:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:12:20 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:12:20 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:18:46 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:18:46 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:18:46 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:18:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe353b5cd67f50370a8367accb8c139f94e801a40e6e0528cf72e2ef299fdfb3`  
		Last Modified: Thu, 05 Nov 2026 19:12:25 GMT  
		Size: 413.7 KB (413714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2a3974d7249e1d1baa04ec2937e33c924c917a736434ad3a0b1f16228f6ba5`  
		Last Modified: Thu, 05 Nov 2026 19:12:26 GMT  
		Size: 15.7 MB (15691581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8647c7b0072d2e97adfeef89651148af1ed663daf43e9cf932dbd716da9cf9b3`  
		Last Modified: Thu, 05 Nov 2026 19:12:25 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79492b7b11146d0f5e393252c331ca557fd19953a3d983a55d62b5199d348e57`  
		Last Modified: Thu, 05 Nov 2026 20:18:50 GMT  
		Size: 6.9 MB (6933564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:e6a3781a1f6ea6cd17bb6d3f8ce68653b7124125945da5a6fa2ac61a2e74df6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 KB (9302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4fb6e7562aafa7d842512807e5ba4c2976e472dfd5eebd57c3889c252f6e67`

```dockerfile
```

-	Layers:
	-	`sha256:bd4cb795daa7f58a01da8031606297e38fd35d76ddbde29765206e05a0716cd2`  
		Last Modified: Thu, 05 Nov 2026 20:18:50 GMT  
		Size: 9.3 KB (9302 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:9bbff7575a216d358d47d7fa947918c1559d96c229498fd07bf1d90b17dadbc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25890426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0c277fb74337012387a9cd2c0f05a7e10df507054304b7f77404dc26708df0`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:04:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 19:04:26 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:04:26 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 19:04:26 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 19:04:26 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 19:04:26 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 19:11:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:11:34 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:11:34 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 20:23:19 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 20:23:19 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 20:23:19 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 20:23:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e66022295efff38295b66083df46941ef4b7c66d2c90eb6bfd646b427433fd30`  
		Last Modified: Thu, 05 Nov 2026 19:11:41 GMT  
		Size: 412.4 KB (412377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33694fe8a88c544795427e82ccb19144a266622200fd140c26be7700a2216ade`  
		Last Modified: Thu, 05 Nov 2026 19:11:42 GMT  
		Size: 15.3 MB (15276549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75aed7aa5b8fec8d16cc7e016c01efbd773205f28fdf336d5615443e65c251c7`  
		Last Modified: Thu, 05 Nov 2026 19:11:41 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ca2a639b53405413dfe6381f19a01c22b25212696e1a21574b3c282620112c`  
		Last Modified: Thu, 05 Nov 2026 20:23:25 GMT  
		Size: 6.9 MB (6933518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:e0876b2679bf20e285f1f9d011d8ed1dc0abc4f645f0a4ef9ea1d2ffd3a9ce73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.8 KB (694795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c85d74306d6a09b70dbef6dd92ea41d23e945aa65d6156bd4f4d2bc289dcc66`

```dockerfile
```

-	Layers:
	-	`sha256:a70f5d341b399611ef1e4ffbce6de914e9ed3c72889e7a6d05b8e44038b5d7f2`  
		Last Modified: Thu, 05 Nov 2026 20:23:25 GMT  
		Size: 685.3 KB (685276 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2e2e314a8ed7b70c95d4a18e277f85d4922ae3e52a25307a64ead1e385d6d45`  
		Last Modified: Thu, 05 Nov 2026 20:23:25 GMT  
		Size: 9.5 KB (9519 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:d7720f22f9003f97d18f66a0828e58b4151988ea388368f43e156e90678259a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27848081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18bee9fbfb5022d5f3b47a566bfc6ccbf30f841ddeef07a9ff0f8f81297351d`
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
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 19:21:50 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 19:21:50 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 19:31:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 19:31:42 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 19:31:42 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 21:38:53 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 21:38:53 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 21:38:53 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 21:38:53 GMT
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
	-	`sha256:c5e19b133b4a0e306658e368b0a3508d50e5cea7b243be961a0d5a06d27fb4f1`  
		Last Modified: Thu, 05 Nov 2026 19:31:49 GMT  
		Size: 16.3 MB (16308176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b52fca883a2d011b52dc4c338fa3cd0329cb07e9b192b4cd1f05c397375c9c9`  
		Last Modified: Thu, 05 Nov 2026 19:31:48 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dee81b520f173789ef949f1433bb4ca236578677374675dc5c93aba5ea54268`  
		Last Modified: Thu, 05 Nov 2026 21:39:00 GMT  
		Size: 6.9 MB (6933513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:b172f2d198cb00a094f33b8720d3b7c457da46b86c716d3246742bea7ef47397
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.9 KB (691881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a57773ae436f1e569422f52bef926d0d2ce163a00a1287eb83b3baa26ff46338`

```dockerfile
```

-	Layers:
	-	`sha256:cd6c60da1c5c0c90d7befcbfb77ca582e9734cc9d6f357b2c27f78c419271670`  
		Last Modified: Thu, 05 Nov 2026 21:38:59 GMT  
		Size: 682.3 KB (682322 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8490d717c08d317832431d76874ad536f7402aa86babe388a34dd61cd6ec4da`  
		Last Modified: Thu, 05 Nov 2026 21:38:59 GMT  
		Size: 9.6 KB (9559 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine` - linux; 386

```console
$ docker pull hylang@sha256:2dd42ff5cb8ecc44999e04e3dd0cdebc65b76b1cc24b53486f71a66f5e7e6577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.4 MB (27369928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699512b0046a9255fce8fe484a905695981dcde14c25e7109969fde81d848d2a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:35:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 18:35:31 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 18:35:31 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 18:35:31 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 18:35:31 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 18:35:31 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 18:40:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 18:40:14 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 18:40:14 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 18:54:24 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 18:54:24 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 18:54:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 18:54:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3f463c85d345a4c8480e9a157f586bc60a395d3435f43b29812362c88f60f4`  
		Last Modified: Thu, 05 Nov 2026 18:40:21 GMT  
		Size: 412.8 KB (412776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf26fe6f95cbc4871fa87d4ce50961113eba1b4efb82202a1ad7316811cd805f`  
		Last Modified: Thu, 05 Nov 2026 18:40:21 GMT  
		Size: 16.3 MB (16343065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6abda2ea6032511fa7d1bbd7e976a7c0dd7fe2df31d9f5846e1466ccc70711d`  
		Last Modified: Thu, 05 Nov 2026 18:40:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4204b55275f925aaaaeba3738747722f116bb06e3707e0eb7f019853cb1014a2`  
		Last Modified: Thu, 05 Nov 2026 18:54:30 GMT  
		Size: 6.9 MB (6933477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:37bcc85e5e267a641fd261ff304d96f242864854dd7a1dbb2c97d8f98a5c9726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **692.2 KB (692178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6db403f8ab80e3cb4023ef18fb267c93901025d7a68397a9a31fdc5997a1572`

```dockerfile
```

-	Layers:
	-	`sha256:aafc89491efb1b3e873e52b64034e4128fe6539e8273cb4370bd293221126c3e`  
		Last Modified: Thu, 05 Nov 2026 18:54:30 GMT  
		Size: 682.8 KB (682823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97abf90ab4ed346168dada4f44b16cb1d8f7911536b1b5a9e35457c0057ae5c5`  
		Last Modified: Thu, 05 Nov 2026 18:54:30 GMT  
		Size: 9.4 KB (9355 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:ce6efd76685b914f989d244ae9c467c7db1d3893afba4f7fd1fbc862a8998e21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.1 MB (28110243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109b106c6b0a9937cd577a53d9b5583cc3fdc58e48fcd1a124b80e97e8c5a473`
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
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 22 Oct 2026 14:19:32 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 22 Oct 2026 14:19:32 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Tue, 27 Oct 2026 04:52:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 27 Oct 2026 04:52:15 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 27 Oct 2026 04:52:15 GMT
CMD ["python3"]
# Tue, 27 Oct 2026 19:04:49 GMT
ENV HY_VERSION=1.3.1
# Tue, 27 Oct 2026 19:04:49 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 27 Oct 2026 19:04:49 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 27 Oct 2026 19:04:49 GMT
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
	-	`sha256:d5f399ce176d25da85ded1edddd03bf17be08ab2011cdfd7dfe30e29a400c3a7`  
		Last Modified: Tue, 27 Oct 2026 04:52:29 GMT  
		Size: 16.9 MB (16939475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:107e3318c5bfba2b3817ea4bed47c869de889fb89fd7893eb5caaa517bee96a5`  
		Last Modified: Tue, 27 Oct 2026 04:52:28 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2378d32002486bbc6919ed28cf426497bfad425d0b695e07f6ba228b1b54245a`  
		Last Modified: Tue, 27 Oct 2026 19:05:08 GMT  
		Size: 6.9 MB (6933646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:a23f64f5494996ade3daac42a42c4e83c33695e889b6c5d047f6ff7150807f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.8 KB (691750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fce71c1e401d9aadcdd046942c0d7765de8ac6dd6e4cc2ccad393220337ba3c7`

```dockerfile
```

-	Layers:
	-	`sha256:d45d86114fa085aee979940919cfc9b5c5c045e271d0b7b3733af37964bfff9d`  
		Last Modified: Tue, 27 Oct 2026 19:05:07 GMT  
		Size: 682.3 KB (682275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90f236dce466925bac70760c2e7f4358b53f27b89fbaaf51d1aa4a8fc9d6b687`  
		Last Modified: Tue, 27 Oct 2026 19:05:07 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine` - linux; riscv64

```console
$ docker pull hylang@sha256:e6d9aa26f42ac8be8cfcb9b392d67b4b524134421d0faafdb754dd9c045e410b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (26951271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d24a01902110d6288591bb185195ab7d203f60f96d30ba3975f78969089e6f2`
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
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 29 Oct 2026 11:30:43 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 29 Oct 2026 11:30:43 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 29 Oct 2026 19:29:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 29 Oct 2026 19:29:31 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 29 Oct 2026 19:29:31 GMT
CMD ["python3"]
# Mon, 02 Nov 2026 21:26:37 GMT
ENV HY_VERSION=1.3.1
# Mon, 02 Nov 2026 21:26:37 GMT
ENV HYRULE_VERSION=1.1.0
# Mon, 02 Nov 2026 21:26:37 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Mon, 02 Nov 2026 21:26:37 GMT
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
	-	`sha256:fa7091f6704a2b59ea28ed5edf5152b4984313a47d9174310df568810aee9138`  
		Last Modified: Thu, 29 Oct 2026 19:30:26 GMT  
		Size: 16.0 MB (16023449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80bdaae92756036af27654947d26f547d1098c4fdac4fdedfa8dc940fa67e9b`  
		Last Modified: Thu, 29 Oct 2026 19:30:24 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17db75216446d602128a373201032ca7d4a6b1a6b67225b1c4560d09067e3100`  
		Last Modified: Mon, 02 Nov 2026 21:27:22 GMT  
		Size: 6.9 MB (6934359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:6b20c548bd83de3c80c9c365e25a65d9cd12bc640fccc86c0433b92908224a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.7 KB (691746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:358bd8915cbfd57c5d992f4cdcb6b8daa7368a65d9f89f7ee886d2dd9d897de4`

```dockerfile
```

-	Layers:
	-	`sha256:785679d4e408dc6a5355ee1d99f7d26804d32653792793396e0591e63762b0a7`  
		Last Modified: Mon, 02 Nov 2026 21:27:21 GMT  
		Size: 682.3 KB (682271 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eb65839e8e61cf995ab45a5c781180771a95cf45522c0cd47d6019b4e457bd0`  
		Last Modified: Mon, 02 Nov 2026 21:27:21 GMT  
		Size: 9.5 KB (9475 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:3bc3b1049a4c033dd4ccfe8abeb8d5de37159c92458a187392c5e8fe26ec29d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.6 MB (27639656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa555836719ecf0bd9862a0ad5fbea890c042edaa7fde0b562702ceab7b9faff`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:56:29 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 20:56:29 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 20:56:29 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 05 Nov 2026 20:56:29 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 05 Nov 2026 20:56:29 GMT
ENV PYTHON_VERSION=3.11.18
# Thu, 05 Nov 2026 20:56:29 GMT
ENV PYTHON_SHA256=9120e0a653868f6e3698d36cdd99e5a58903ec9469e448f21d98f7b16d8fa290
# Thu, 05 Nov 2026 21:13:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 21:13:20 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 21:13:20 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 22:38:41 GMT
ENV HY_VERSION=1.3.1
# Thu, 05 Nov 2026 22:38:41 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 05 Nov 2026 22:38:41 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 05 Nov 2026 22:38:41 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f388fc9d9046734d9ebf90a5f77bed75061cf6666d484cc7c19180484d0d43d`  
		Last Modified: Thu, 05 Nov 2026 21:05:58 GMT  
		Size: 413.4 KB (413406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae8aa546c8d129b16d8f285554304262a54b7d7724d2a25723c4edc77a4feabd`  
		Last Modified: Thu, 05 Nov 2026 21:13:38 GMT  
		Size: 16.6 MB (16571776 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fb41f6470a11cc965d9e5e5892d1832e030dadcbc731fec3c925514dbf9dca5`  
		Last Modified: Thu, 05 Nov 2026 21:13:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a518a5510add804c5e3d69d13f34e0ff2f402f12bb59e2a85056c7f469e93ee`  
		Last Modified: Thu, 05 Nov 2026 22:38:56 GMT  
		Size: 6.9 MB (6933555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine` - unknown; unknown

```console
$ docker pull hylang@sha256:7665f3263442ae15ef16f2867df04e9be923172b40556ae199c0fe3d29cec831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.6 KB (691624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84b53561b6bec759be3ff33a13ef8cac196fac35f7890e99269871e63174e3ad`

```dockerfile
```

-	Layers:
	-	`sha256:0ea965eefecbf66ef0df57cb9921536681383cecc313e5669004b0902b377e65`  
		Last Modified: Thu, 05 Nov 2026 22:38:55 GMT  
		Size: 682.2 KB (682217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15463d9f21ef157cdb779b66d72b5b633cfd86cef8bda9290f785adf63188389`  
		Last Modified: Thu, 05 Nov 2026 22:38:55 GMT  
		Size: 9.4 KB (9407 bytes)  
		MIME: application/vnd.in-toto+json
