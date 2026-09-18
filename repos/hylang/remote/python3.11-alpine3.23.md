## `hylang:python3.11-alpine3.23`

```console
$ docker pull hylang@sha256:7b0de9aca9f154b08d60971fbf50cbda548d58c03d482ac3b2566538b3627d97
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
$ docker pull hylang@sha256:8308243a57ac7228012b6d8b87e9bd527a834c8c26b7b820ed9cdab481749259
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.3 MB (27255243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2711fe827d2d33738cf18cd2a8b9bcc85c64414ee91b745ebe12379573da96f6`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:49:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:49:08 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:49:08 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:49:08 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 21:49:08 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 17 Sep 2026 21:49:08 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 17 Sep 2026 21:53:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 21:53:19 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 21:53:19 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:35:47 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:35:47 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:35:47 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:35:47 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0f2bbe7b4a92f674cdc0c9773a5ea46e1ec23048f2186eda696ca0a1d26116`  
		Last Modified: Thu, 17 Sep 2026 21:53:25 GMT  
		Size: 416.3 KB (416270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074f87321a14fe02a01e1461fe84514aa9b91fa67b37ce86266bf9a7516f2d77`  
		Last Modified: Thu, 17 Sep 2026 21:53:26 GMT  
		Size: 16.1 MB (16128640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8adc8b1579769ce537b1749bd783cac2f4241f4a0a3afadd434a0bd9b414fac8`  
		Last Modified: Thu, 17 Sep 2026 21:53:25 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c2864e8f8cb8d0c27a38ad6ab9f3d45d3df07bb17aea44396d9e5f86ccd436`  
		Last Modified: Thu, 17 Sep 2026 22:35:54 GMT  
		Size: 6.9 MB (6861580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:4633f046dc97617f85b54aac082ff1dc419c6c35cac8ed0dc33acf28a2aa56bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.7 KB (691736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b152271837e14c3bfd0ae938f6eb4c775fe1dfc5430bdff85fc18c9ab1cd8af`

```dockerfile
```

-	Layers:
	-	`sha256:672bd347c50b2dfd0e5004f9da558e42d041e056ef6e6788e387f139ed5611ba`  
		Last Modified: Thu, 17 Sep 2026 22:35:54 GMT  
		Size: 683.6 KB (683635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9fe67eb15a3559294fd6f766896a54f672db1736907d41aaf0079b1b18b6ba4`  
		Last Modified: Thu, 17 Sep 2026 22:35:54 GMT  
		Size: 8.1 KB (8101 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm variant v6

```console
$ docker pull hylang@sha256:8310a01ed896781d9719f2f5a98082bb6ddfb3a8eff66fda40cc7f6a2c54a95e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.5 MB (26517549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53597372a9566a4a3a4132b186fa44a809bac83ac78415d19c694d657bd31cca`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:42 GMT
ADD alpine-minirootfs-3.23.6-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:42 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:07:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:07:57 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:07:57 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:07:57 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 22:07:57 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 17 Sep 2026 22:07:57 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 17 Sep 2026 22:14:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:14:54 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:14:54 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 22:49:57 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 22:49:57 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 22:49:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 22:49:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b0cea9f80ea5defd79b131eda614476b4cdbb6b45165432dd3dbf895cf504ccb`  
		Last Modified: Thu, 17 Sep 2026 20:37:45 GMT  
		Size: 3.6 MB (3554926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223be4de511a511da367fbf8a4761c2351ef921374f69480fa6b163e81afd026`  
		Last Modified: Thu, 17 Sep 2026 22:15:00 GMT  
		Size: 417.5 KB (417485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c949498c9538391bad9f6af1eb71c8abfde1710982fc9ef8945b4c5dce94a5`  
		Last Modified: Thu, 17 Sep 2026 22:15:00 GMT  
		Size: 15.7 MB (15683311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68911a2ecc8704b9a4206cc81b252fecf96addddd4089d246038d20ccdf4fbe7`  
		Last Modified: Thu, 17 Sep 2026 22:14:59 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f1cff370feefe011f27bab0d27d293c0c29d01c325a5f07d48e8dd132c7e40`  
		Last Modified: Thu, 17 Sep 2026 22:50:02 GMT  
		Size: 6.9 MB (6861578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:3e7609d41c4940a958793cf4770fe72de27011facc8c141fc486e84c95be2cec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 KB (7967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c766cfecec1a88f878a8e90bed17556f0c827771a198f5d3b7b8cb6327739e7d`

```dockerfile
```

-	Layers:
	-	`sha256:a96afaf4833ed8440aad0811bc12cf243cff4391b998e5ae74149cf413f30cbc`  
		Last Modified: Thu, 17 Sep 2026 22:50:01 GMT  
		Size: 8.0 KB (7967 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm variant v7

```console
$ docker pull hylang@sha256:f514779b482ad17f6cb8fbebdd5fd138ed29108c084ad6f518ab79f753b3cc03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.8 MB (25809102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b31f25b7e264ee7e5ddfb41ada54156e842c997ed8643e034070ccf2afb25fef`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:02 GMT
ADD alpine-minirootfs-3.23.6-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:02 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:13:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 22:13:31 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 22:13:31 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 22:13:31 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 22:13:31 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 17 Sep 2026 22:13:31 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 17 Sep 2026 22:20:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:20:38 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:20:38 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 23:25:14 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 23:25:14 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 23:25:14 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 23:25:14 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f2ac4546f23daefce222f4e05cc66a337ed28b1df07bac959470bc4e25c1218d`  
		Last Modified: Thu, 17 Sep 2026 20:37:08 GMT  
		Size: 3.3 MB (3262913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca358779d95dc008f5e3d3550c6f7a14dc93f5986b2bf51da31a8fbcf8c3f46`  
		Last Modified: Thu, 17 Sep 2026 22:20:45 GMT  
		Size: 416.4 KB (416398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6708e75bdf6effa6850a4f57493b164f627005a20e9a66ce6372efeb02ebbe9`  
		Last Modified: Thu, 17 Sep 2026 22:20:45 GMT  
		Size: 15.3 MB (15267828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2a275e560af85ec90b45fbf77cfcf40f527d5a20d415a807319f61c164b692`  
		Last Modified: Thu, 17 Sep 2026 22:20:44 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af545272aca80ba6ae01cc566a03285a44135e0514d087b11bdffdb3f98ff1bc`  
		Last Modified: Thu, 17 Sep 2026 23:25:20 GMT  
		Size: 6.9 MB (6861714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:f523dfba70ba2c1b1b8d53a8ad38ac108323c2744d455263c8acf804c93ae39a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **694.2 KB (694193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3036c14a5d1745b586847b2103940af5249683faed070c31dff8749bc11cef80`

```dockerfile
```

-	Layers:
	-	`sha256:c5d4817734615ffe7916fb97a669d9b036b37dee45b4dadbbc978d8124a8d01b`  
		Last Modified: Thu, 17 Sep 2026 23:25:19 GMT  
		Size: 686.0 KB (686011 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e6e2eae47da83a79b1dba7d5abb0a8e93df01e781e2e769175b523622a74e50`  
		Last Modified: Thu, 17 Sep 2026 23:25:19 GMT  
		Size: 8.2 KB (8182 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:64ac2c728ef4753a08b76c23ef9bf447f6e9a27869d3f3488d342ba4d74d6792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.8 MB (27766292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d77957124adbcd7dac37e7c4e61c3cb3783d6efe79092dd1665945322e0b8e7b`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:58:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:58:53 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:58:53 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Thu, 17 Sep 2026 21:58:53 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Thu, 17 Sep 2026 21:58:53 GMT
ENV PYTHON_VERSION=3.11.16
# Thu, 17 Sep 2026 21:58:53 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Thu, 17 Sep 2026 22:05:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Thu, 17 Sep 2026 22:05:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 17 Sep 2026 22:05:35 GMT
CMD ["python3"]
# Thu, 17 Sep 2026 23:00:06 GMT
ENV HY_VERSION=1.3.1
# Thu, 17 Sep 2026 23:00:06 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 17 Sep 2026 23:00:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 17 Sep 2026 23:00:06 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80dadf45993ac86acc13fe4f343f5a81959238f20369597c1f03539d61a78af`  
		Last Modified: Thu, 17 Sep 2026 22:05:44 GMT  
		Size: 419.1 KB (419114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d272a389c366d6b8819146516768da528d1c48bc2053adbc8cf8e2d87a9d15bf`  
		Last Modified: Thu, 17 Sep 2026 22:05:43 GMT  
		Size: 16.3 MB (16299144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66b2109d626ba9ddc9bdf99b78f30629cf955dea38d23fef307b4151e751513`  
		Last Modified: Thu, 17 Sep 2026 22:05:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15fa09e7ccab4090a4b594c2995a26a4c7162d49681cb4d37faa39a5cd0b121`  
		Last Modified: Thu, 17 Sep 2026 23:00:13 GMT  
		Size: 6.9 MB (6861729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:ade675fc2ca75fb3892841e885eda237520eca2bd27e0251b1958c8e50fbf7a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.2 KB (691248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bc817c317cb1672ae9a36e81bb5e5cb1f24f5e703018a6b52f0570dd0035bd0`

```dockerfile
```

-	Layers:
	-	`sha256:e6e6e13e6739932d4af411a89692665d7c5ed4f2b1893960f779566afa124a55`  
		Last Modified: Thu, 17 Sep 2026 23:00:13 GMT  
		Size: 683.0 KB (683041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cf1885d3ca9c7fdf798d8976c8585b871957201444ee89659eeba8b00f5272e`  
		Last Modified: Thu, 17 Sep 2026 23:00:12 GMT  
		Size: 8.2 KB (8207 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; 386

```console
$ docker pull hylang@sha256:b1751ad4c848e212c1301fb741cb1a3f9c694b0666b25a79c7f06ddb28e3f073
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.7 MB (29653572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56caf65c2b6977e5d90b3e3f778b943f08ec15681ccb22e7466edc2b4136c7a3`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 23:49:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:49:13 GMT
ENV LANG=C.UTF-8
# Mon, 31 Aug 2026 23:49:13 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 31 Aug 2026 23:49:13 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Mon, 31 Aug 2026 23:49:13 GMT
ENV PYTHON_VERSION=3.11.16
# Mon, 31 Aug 2026 23:49:13 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Mon, 31 Aug 2026 23:54:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Mon, 31 Aug 2026 23:54:25 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 31 Aug 2026 23:54:25 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 00:16:02 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 00:16:02 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 00:16:02 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 00:16:02 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f89ca28961ed640278d26d5b2657d88816bdf98c7731811f95935813ab748b1`  
		Last Modified: Mon, 31 Aug 2026 23:54:32 GMT  
		Size: 408.9 KB (408871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4834e87242ebe405c0d9d8ba7bd47a5e573e0c826cfa985e7bacf634428a114`  
		Last Modified: Mon, 31 Aug 2026 23:54:33 GMT  
		Size: 18.7 MB (18715044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f7e0d0690acc1ae48cf559b3b6cebdd9dceedcf294de9c1a8d66743a289af3`  
		Last Modified: Mon, 31 Aug 2026 23:54:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d7e65f741029b676855185551e0ed907a086f2ee452951162c8a2553474627`  
		Last Modified: Tue, 01 Sep 2026 00:16:08 GMT  
		Size: 6.9 MB (6861419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:0c5e67eb4945c3409c6c075e1c13aa14c9214c0845e642857e492498651337ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **690.4 KB (690388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:590a0c3fbb9572fb87fa4cad4b6374c858145fc3b1467781387537e9092ae34b`

```dockerfile
```

-	Layers:
	-	`sha256:719b4f088264e11c24b18622cbdfec82c0a93c5aec310dc27cfdf830b6322205`  
		Last Modified: Tue, 01 Sep 2026 00:16:08 GMT  
		Size: 682.3 KB (682317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f13910b70890422812e909af00a31ffb63a266b2003929f79b4e7d76af7e9dc`  
		Last Modified: Tue, 01 Sep 2026 00:16:08 GMT  
		Size: 8.1 KB (8071 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; ppc64le

```console
$ docker pull hylang@sha256:1b81d3bbe7c4f5ad2cf30f7ab4d7e338e9f01832096611086921b4c159d5a2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30466756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85590ca86630ba89a73e687c8275b73248c879029d92f78f964353a0dee6b752`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 02:20:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 02:20:09 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 02:20:09 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 02:20:09 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 01 Sep 2026 02:20:09 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 01 Sep 2026 02:20:09 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 01 Sep 2026 03:00:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 03:00:17 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 03:00:17 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 04:18:22 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 04:18:22 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 04:18:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 04:18:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca153123937d3922cd457087616d1736cb370ccfbe56f0a32e6487eae0fb140`  
		Last Modified: Tue, 01 Sep 2026 02:30:34 GMT  
		Size: 412.3 KB (412291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5400c7b00925c8379bcd11aad276847711f04a9234d60cf99f9f64877901665e`  
		Last Modified: Tue, 01 Sep 2026 03:00:32 GMT  
		Size: 19.4 MB (19379949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbae2be2028cd536564ab16606dc0e4885e1aafc46326edee1fd5f696d83577`  
		Last Modified: Tue, 01 Sep 2026 03:00:32 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7adf2a508d2a13f822d5682044521047abd0d6c126e90b6f7f611767d0c14d45`  
		Last Modified: Tue, 01 Sep 2026 04:18:35 GMT  
		Size: 6.9 MB (6861968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:7ec3fc6940a9ba67254e1c2680f57071704bef3d8add2870adb28e761baabb15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.9 KB (689872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3b74876637c9fed95cf2352127157addb35b3ca1a9edd43253e27740f96000`

```dockerfile
```

-	Layers:
	-	`sha256:2a8a5d890e7334557f01760050c40a80d1a3063cbdbeedf02e9e0acc3d504335`  
		Last Modified: Tue, 01 Sep 2026 04:18:35 GMT  
		Size: 681.7 KB (681725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a707e9eae7e847adeb9ceb837c88f78f0890e4d534bf828dd3df0b2a2347609`  
		Last Modified: Tue, 01 Sep 2026 04:18:35 GMT  
		Size: 8.1 KB (8147 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; riscv64

```console
$ docker pull hylang@sha256:b115c72bcc6176f620d9a38ba78a111714154c75e3a5176d368a0f2bd86f9990
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29096753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a91abb07ae013ffb9fd3b9756325f66d2a7295909773e193c55cbc45edff46`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Wed, 02 Sep 2026 02:45:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 02:45:56 GMT
ENV LANG=C.UTF-8
# Wed, 02 Sep 2026 02:45:56 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Wed, 02 Sep 2026 02:45:56 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Wed, 02 Sep 2026 02:45:56 GMT
ENV PYTHON_VERSION=3.11.16
# Wed, 02 Sep 2026 02:45:56 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Wed, 02 Sep 2026 05:48:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Wed, 02 Sep 2026 05:48:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Wed, 02 Sep 2026 05:48:28 GMT
CMD ["python3"]
# Thu, 03 Sep 2026 04:55:42 GMT
ENV HY_VERSION=1.3.1
# Thu, 03 Sep 2026 04:55:42 GMT
ENV HYRULE_VERSION=1.1.0
# Thu, 03 Sep 2026 04:55:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Thu, 03 Sep 2026 04:55:42 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4be85da6313d2bdac799b6426bf956cf219974dada1f7c0491cd722993f19a6`  
		Last Modified: Wed, 02 Sep 2026 03:21:00 GMT  
		Size: 408.6 KB (408642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0519bf40eefe17cd48abe376464c3e43a287ac6392516d5268cd05dd4ca5afbf`  
		Last Modified: Wed, 02 Sep 2026 05:49:25 GMT  
		Size: 18.3 MB (18252031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d036bd9e3149914802e4b639f75c76d691eba1c2b5566ab053a8e6446bf3cc35`  
		Last Modified: Wed, 02 Sep 2026 05:49:21 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fc8f685eddba9c5697328e83380dcb41ef761bb1f9cdefb86b54c08d7c107b`  
		Last Modified: Thu, 03 Sep 2026 04:56:26 GMT  
		Size: 6.9 MB (6862589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:05813014bd06db2df4f25e2a7bf3b074f65560e6b87ef0510aba279908928ac2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.9 KB (689867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12edaf3ba1e0f13565afc7507702b0799e562adb0ace784aeb64dbd206770831`

```dockerfile
```

-	Layers:
	-	`sha256:07951b1d24ea219d310ab684cd35f75f9378e20cd5fb845a3bfa983e7c2fcf46`  
		Last Modified: Thu, 03 Sep 2026 04:56:25 GMT  
		Size: 681.7 KB (681721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae84415b4b2b245c63586632875ed8945ffe058b935d3ce0ef884abfcd762176`  
		Last Modified: Thu, 03 Sep 2026 04:56:25 GMT  
		Size: 8.1 KB (8146 bytes)  
		MIME: application/vnd.in-toto+json

### `hylang:python3.11-alpine3.23` - linux; s390x

```console
$ docker pull hylang@sha256:3dff9a639c8e3d176db303cc0767b9a9843bca26680cb3f6fca5a6bd52edfd04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 MB (29890747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce54a3f38ee4ff6867d656e97bd8aa5f0de896a6d608bdb2d63ff0abf5547589`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Tue, 01 Sep 2026 00:03:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 00:03:25 GMT
ENV LANG=C.UTF-8
# Tue, 01 Sep 2026 00:03:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Tue, 01 Sep 2026 00:03:25 GMT
ENV GPG_KEY=A035C8C19219BA821ECEA86B64E628F8D684696D
# Tue, 01 Sep 2026 00:03:25 GMT
ENV PYTHON_VERSION=3.11.16
# Tue, 01 Sep 2026 00:03:25 GMT
ENV PYTHON_SHA256=91bcdebfdde239a003ae93738a7fce0f9230fee5c4bc2b86f6e6e8c6f98aabe8
# Tue, 01 Sep 2026 00:20:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc"; 	GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "$GPG_KEY"; 	gpg --batch --verify python.tar.xz.asc python.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" python.tar.xz.asc; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 		pip3 install 		--disable-pip-version-check 		--no-cache-dir 		--no-compile 		'setuptools==79.0.1' 		'wheel==0.46.3' 	; 	pip3 --version # buildkit
# Tue, 01 Sep 2026 00:20:43 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Tue, 01 Sep 2026 00:20:43 GMT
CMD ["python3"]
# Tue, 01 Sep 2026 01:24:42 GMT
ENV HY_VERSION=1.3.1
# Tue, 01 Sep 2026 01:24:42 GMT
ENV HYRULE_VERSION=1.1.0
# Tue, 01 Sep 2026 01:24:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION" "hyrule == $HYRULE_VERSION" # buildkit
# Tue, 01 Sep 2026 01:24:42 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8137a6bd09951f730de76cfe7927eb7f3ebc3d99a3bfbd8d475b309a857d4577`  
		Last Modified: Tue, 01 Sep 2026 00:12:18 GMT  
		Size: 409.6 KB (409550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc7411019c81003cc42f1c5bd55db5b3f0c764ec3b510aeba6e440f960f466a`  
		Last Modified: Tue, 01 Sep 2026 00:21:05 GMT  
		Size: 18.9 MB (18912025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f15cee3d100269061f29393dabc27a820d4f0dbaded4ade7aa1dd3bd17f6fe`  
		Last Modified: Tue, 01 Sep 2026 00:21:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a019573cea4c6b4a5a8b320906e7c5443ef119ad2d95ced494a208c2142e6a0c`  
		Last Modified: Tue, 01 Sep 2026 01:24:52 GMT  
		Size: 6.9 MB (6861676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `hylang:python3.11-alpine3.23` - unknown; unknown

```console
$ docker pull hylang@sha256:b7a5bf97e7971e9c719fdfc092f3c136f55ce083e3fb7e685bf00605af74c53f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **689.8 KB (689793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3a4e2894bc310486d15336c394adb239ea82de1286a6273e37ec7d256394d55`

```dockerfile
```

-	Layers:
	-	`sha256:29badabf17a9be878adb0b6b2d20b1fcf27a398fc4e05d051df2c570e1779a66`  
		Last Modified: Tue, 01 Sep 2026 01:24:52 GMT  
		Size: 681.7 KB (681691 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b9dea174c8853c5a6538d21859b71020b5771f93f5a2a6c53adae5da10d82c4`  
		Last Modified: Tue, 01 Sep 2026 01:24:52 GMT  
		Size: 8.1 KB (8102 bytes)  
		MIME: application/vnd.in-toto+json
