<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `satosa`

-	[`satosa:8`](#satosa8)
-	[`satosa:8-alpine`](#satosa8-alpine)
-	[`satosa:8-alpine3.24`](#satosa8-alpine324)
-	[`satosa:8-trixie`](#satosa8-trixie)
-	[`satosa:8.6`](#satosa86)
-	[`satosa:8.6-alpine`](#satosa86-alpine)
-	[`satosa:8.6-alpine3.24`](#satosa86-alpine324)
-	[`satosa:8.6-trixie`](#satosa86-trixie)
-	[`satosa:8.6.0`](#satosa860)
-	[`satosa:8.6.0-alpine`](#satosa860-alpine)
-	[`satosa:8.6.0-alpine3.24`](#satosa860-alpine324)
-	[`satosa:8.6.0-trixie`](#satosa860-trixie)
-	[`satosa:alpine`](#satosaalpine)
-	[`satosa:alpine3.24`](#satosaalpine324)
-	[`satosa:latest`](#satosalatest)
-	[`satosa:trixie`](#satosatrixie)

## `satosa:8`

```console
$ docker pull satosa@sha256:97c1df2684a784d97f210d56978d461f37eef19cdbad0d9e3f5cbd774173d427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8` - linux; amd64

```console
$ docker pull satosa@sha256:a5cdc9a055451958e8d1ded5288146798e7dcd1db5f709995d18a39f570cc480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79658789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e81492a5289ddbbf16fb3fa9fea628a17f341954b6a7a4757c6ee838eff887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:47:27 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:48:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:48:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:48:19 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:48:19 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d089a6c0a2543e3dd748a4ffcbfe409ab93f2049d42640588be3a3f67acffe`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 1.3 MB (1289801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e665593ff40197b851364fab0389fc6f5fa35bc74814ddfad07f96f417fc574`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 12.4 MB (12411778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c2a9291f81f0f8349de8621c9878a424552bfc64d0e4f20a4ac6006489fe1`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229181c8259dfdd4a6755b6bf7efc6bb389c8517a3f4459dba8ecf3e9622ad8`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 7.5 MB (7527271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec288a5cb043f3785f2ebbca2c9e7314b37a0f8e837c24f8d22df312bcc522da`  
		Last Modified: Thu, 05 Nov 2026 08:48:30 GMT  
		Size: 28.6 MB (28560992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589bb2898a531d26ca8bf410b6820504db14ff7bad75d2073c6aeaf49a1e49c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fd86e263d6bb0007cf5716bf42179ecbb0de03cec5b7dfcba23c48c37344a`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8` - unknown; unknown

```console
$ docker pull satosa@sha256:b421f210533fdb0aa09c36ab00ca32fa59b24b91a513c5e76dc5416a7541305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd746fbbaffd78698baef2df203ad0228396893a73374f69701ae2cc2456097`

```dockerfile
```

-	Layers:
	-	`sha256:53d498ab4e4c9560b7456d7296f0ce51f8ce0672918080ec9e4e85acdc11745c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.3 MB (2346795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd90a64f015216c86e84d9b642341307527a7a32962f4e12f1f2a9d0fa5ddc50`  
		Last Modified: Thu, 05 Nov 2026 08:48:28 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:d235be9168d5225467b9eb15e4a12b0f5cc346f03d014e9ce23da9219831f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79581069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a457bfe707cead3f4cabbb6290ccbe9ed0ed2d0ea4d145728f4720377c24c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:45:23 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093c3b5dab6f9b53f743c03e7a9681123491b66978d56cf1be9f4b1f3dad9426`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 1.3 MB (1270202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c794ddf3dfbe3597d43798fc1945e1664fca6859462ba411279efee1359b5f5b`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 12.3 MB (12326249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f983deeeb561ef14ee4fc979f0b49a44a4ba1f9914e2323763bc5552ddc6fb`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8be7f249016b89e7aba1d0cb40777f7e9fa0464729cf9e5fa01a755db1f989`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 7.3 MB (7336274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377699b3715f643c0e1270fb6bb4b96668fe3f7685824f9108f96853aac08f53`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 28.4 MB (28421493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dd942fb8daa6c95bfb865ccdae6943abf7f42eb77cecd22e615a7b131a6d24`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45129fbe13064f8367df33db6705e33fe8c48e86dc1e72efe28b02d7459da7`  
		Last Modified: Thu, 05 Nov 2026 08:46:34 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8` - unknown; unknown

```console
$ docker pull satosa@sha256:f7df41ede1f4ea86a5941f7d14e6f54877ef38c062d3cd9a7f5c7da0c6beee0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f1cb57d2a9aa3fc8acbb5a8e90d640d15f5541a363735da241b0c94169f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:09af14b7bf496d016b3ee75f8d0b41b5e8ec5eedf7584aa8d3a5cf9648f7c538`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576da263c2a1927d3ccff6b6d547707c365b90b973aa40577307cc15912aa4bd`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 22.3 KB (22309 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8-alpine`

```console
$ docker pull satosa@sha256:b742adfb0868a7dba54eea904a22a9ba42f5e294be55250f1417f348d70d1066
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8-alpine` - linux; amd64

```console
$ docker pull satosa@sha256:963ca36913b8f5ab95a4cf694bcdea07abbb0b623f16036ce1b7a6f76ce51977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53673130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1142e5a4444ece958e9d1b4d39fc3b428f7c4cc9fe7829787371488dce2c208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:41:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:41:12 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:41:12 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:41:12 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe167430b135761433fb4ab86f1f6aa12798f608532bd45561fc5762f16f4a`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 412.1 KB (412052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d301c571856d52506f07fe61485bc266e895ecfc58989261ddc49823e4b3448`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 13.6 MB (13580150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c63133ef3d5d69c78b0eeda19bb2f582ea7ef747d8953802fe1141611d2ca`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461657240640e87f16efeaa8a4d0581e4b5100f3cb3f4345ec60d07c93ba41`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 7.2 MB (7240728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374148035f36fa261e226ec95020e749a445081b787bbe22e8602e0bf77bcde`  
		Last Modified: Mon, 26 Oct 2026 23:41:23 GMT  
		Size: 28.6 MB (28574287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006b07c5d711fb172120af4151913c0baad23398d87ea730faa0ef6b155f22`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e91c0c15af7c8b3e0913546a442926582f19b17c0885e0049ba58f81a67822`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:e5b0d7643169801246c63ff54e364f31a0448f90f454101eabba6416c90c71ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.2 KB (807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5737a883572e3e20d60b1af96985e571e450019e46d91a3450a4e9d9b1c734`

```dockerfile
```

-	Layers:
	-	`sha256:d669864d05ee063397cefdacc2f8dc17f2a2ff8d5f885f6e82f70ef8b1d6b22e`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 784.3 KB (784308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138f3b6c07a5fbb3c53e39410b4f8792ecb72949bbbaa4e77c7115c58cc505a4`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 22.9 KB (22852 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8-alpine` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:3ac0274a3b767e63ae88c17dd4a850a164a471b799de297208b483d7894de136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53736534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f4785c138e082d59fa6b7481162732dd5a766f7c932e524ad95766e909f159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:45:25 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:45:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:45:48 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:45:48 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c448cb00407e95de565ff56cd0e4d440dd9a7e8d167a4f7c698ddf52daf3592`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 415.6 KB (415581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8538930762d930dfd50a19226ea7227ddac05c0cb7b4adbdfe3c60ad84cf52c5`  
		Last Modified: Mon, 26 Oct 2026 22:42:35 GMT  
		Size: 13.7 MB (13661453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642973a330128f13b75a468a0de966e0a59586a590652afc4f8277ab10c11067`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13864900bd9f3d5fc7bcbb2229138613cf21277a0691542e32cf98d6c2e8d0fb`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 7.2 MB (7237324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97196de9422d2a534d0a0d9b7f12af328eb2aac378a54da42a75976f8648e092`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 28.2 MB (28218876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc520f61fec113af14e059863a28c08f711fb8697c956b96a2b430554edfd4ad`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db961edf6b72c76c70678bc5a661ccb6df6d71fdcec721f54e225ce077a56f`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:4455417b39618b913a0192190715f16ac42563e53c44b485d5d1bed3561abe02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.8 KB (806803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f62053cd24e2a8f1036208f140172bacddc49517d7c48515210423423bb26`

```dockerfile
```

-	Layers:
	-	`sha256:d876b9fcf5e713a2ae3a0dc6b0d992206458816a42351febea96ef29b0b70d86`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 783.8 KB (783769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097b9bbbaf3e0aace62248a27e1623fe61f0a03bfe1fd82aa93262086a71c14d`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8-alpine3.24`

```console
$ docker pull satosa@sha256:b742adfb0868a7dba54eea904a22a9ba42f5e294be55250f1417f348d70d1066
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8-alpine3.24` - linux; amd64

```console
$ docker pull satosa@sha256:963ca36913b8f5ab95a4cf694bcdea07abbb0b623f16036ce1b7a6f76ce51977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53673130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1142e5a4444ece958e9d1b4d39fc3b428f7c4cc9fe7829787371488dce2c208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:41:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:41:12 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:41:12 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:41:12 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe167430b135761433fb4ab86f1f6aa12798f608532bd45561fc5762f16f4a`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 412.1 KB (412052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d301c571856d52506f07fe61485bc266e895ecfc58989261ddc49823e4b3448`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 13.6 MB (13580150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c63133ef3d5d69c78b0eeda19bb2f582ea7ef747d8953802fe1141611d2ca`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461657240640e87f16efeaa8a4d0581e4b5100f3cb3f4345ec60d07c93ba41`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 7.2 MB (7240728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374148035f36fa261e226ec95020e749a445081b787bbe22e8602e0bf77bcde`  
		Last Modified: Mon, 26 Oct 2026 23:41:23 GMT  
		Size: 28.6 MB (28574287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006b07c5d711fb172120af4151913c0baad23398d87ea730faa0ef6b155f22`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e91c0c15af7c8b3e0913546a442926582f19b17c0885e0049ba58f81a67822`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:e5b0d7643169801246c63ff54e364f31a0448f90f454101eabba6416c90c71ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.2 KB (807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5737a883572e3e20d60b1af96985e571e450019e46d91a3450a4e9d9b1c734`

```dockerfile
```

-	Layers:
	-	`sha256:d669864d05ee063397cefdacc2f8dc17f2a2ff8d5f885f6e82f70ef8b1d6b22e`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 784.3 KB (784308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138f3b6c07a5fbb3c53e39410b4f8792ecb72949bbbaa4e77c7115c58cc505a4`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 22.9 KB (22852 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:3ac0274a3b767e63ae88c17dd4a850a164a471b799de297208b483d7894de136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53736534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f4785c138e082d59fa6b7481162732dd5a766f7c932e524ad95766e909f159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:45:25 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:45:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:45:48 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:45:48 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c448cb00407e95de565ff56cd0e4d440dd9a7e8d167a4f7c698ddf52daf3592`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 415.6 KB (415581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8538930762d930dfd50a19226ea7227ddac05c0cb7b4adbdfe3c60ad84cf52c5`  
		Last Modified: Mon, 26 Oct 2026 22:42:35 GMT  
		Size: 13.7 MB (13661453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642973a330128f13b75a468a0de966e0a59586a590652afc4f8277ab10c11067`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13864900bd9f3d5fc7bcbb2229138613cf21277a0691542e32cf98d6c2e8d0fb`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 7.2 MB (7237324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97196de9422d2a534d0a0d9b7f12af328eb2aac378a54da42a75976f8648e092`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 28.2 MB (28218876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc520f61fec113af14e059863a28c08f711fb8697c956b96a2b430554edfd4ad`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db961edf6b72c76c70678bc5a661ccb6df6d71fdcec721f54e225ce077a56f`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:4455417b39618b913a0192190715f16ac42563e53c44b485d5d1bed3561abe02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.8 KB (806803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f62053cd24e2a8f1036208f140172bacddc49517d7c48515210423423bb26`

```dockerfile
```

-	Layers:
	-	`sha256:d876b9fcf5e713a2ae3a0dc6b0d992206458816a42351febea96ef29b0b70d86`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 783.8 KB (783769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097b9bbbaf3e0aace62248a27e1623fe61f0a03bfe1fd82aa93262086a71c14d`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8-trixie`

```console
$ docker pull satosa@sha256:97c1df2684a784d97f210d56978d461f37eef19cdbad0d9e3f5cbd774173d427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8-trixie` - linux; amd64

```console
$ docker pull satosa@sha256:a5cdc9a055451958e8d1ded5288146798e7dcd1db5f709995d18a39f570cc480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79658789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e81492a5289ddbbf16fb3fa9fea628a17f341954b6a7a4757c6ee838eff887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:47:27 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:48:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:48:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:48:19 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:48:19 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d089a6c0a2543e3dd748a4ffcbfe409ab93f2049d42640588be3a3f67acffe`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 1.3 MB (1289801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e665593ff40197b851364fab0389fc6f5fa35bc74814ddfad07f96f417fc574`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 12.4 MB (12411778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c2a9291f81f0f8349de8621c9878a424552bfc64d0e4f20a4ac6006489fe1`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229181c8259dfdd4a6755b6bf7efc6bb389c8517a3f4459dba8ecf3e9622ad8`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 7.5 MB (7527271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec288a5cb043f3785f2ebbca2c9e7314b37a0f8e837c24f8d22df312bcc522da`  
		Last Modified: Thu, 05 Nov 2026 08:48:30 GMT  
		Size: 28.6 MB (28560992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589bb2898a531d26ca8bf410b6820504db14ff7bad75d2073c6aeaf49a1e49c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fd86e263d6bb0007cf5716bf42179ecbb0de03cec5b7dfcba23c48c37344a`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:b421f210533fdb0aa09c36ab00ca32fa59b24b91a513c5e76dc5416a7541305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd746fbbaffd78698baef2df203ad0228396893a73374f69701ae2cc2456097`

```dockerfile
```

-	Layers:
	-	`sha256:53d498ab4e4c9560b7456d7296f0ce51f8ce0672918080ec9e4e85acdc11745c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.3 MB (2346795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd90a64f015216c86e84d9b642341307527a7a32962f4e12f1f2a9d0fa5ddc50`  
		Last Modified: Thu, 05 Nov 2026 08:48:28 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8-trixie` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:d235be9168d5225467b9eb15e4a12b0f5cc346f03d014e9ce23da9219831f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79581069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a457bfe707cead3f4cabbb6290ccbe9ed0ed2d0ea4d145728f4720377c24c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:45:23 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093c3b5dab6f9b53f743c03e7a9681123491b66978d56cf1be9f4b1f3dad9426`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 1.3 MB (1270202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c794ddf3dfbe3597d43798fc1945e1664fca6859462ba411279efee1359b5f5b`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 12.3 MB (12326249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f983deeeb561ef14ee4fc979f0b49a44a4ba1f9914e2323763bc5552ddc6fb`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8be7f249016b89e7aba1d0cb40777f7e9fa0464729cf9e5fa01a755db1f989`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 7.3 MB (7336274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377699b3715f643c0e1270fb6bb4b96668fe3f7685824f9108f96853aac08f53`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 28.4 MB (28421493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dd942fb8daa6c95bfb865ccdae6943abf7f42eb77cecd22e615a7b131a6d24`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45129fbe13064f8367df33db6705e33fe8c48e86dc1e72efe28b02d7459da7`  
		Last Modified: Thu, 05 Nov 2026 08:46:34 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:f7df41ede1f4ea86a5941f7d14e6f54877ef38c062d3cd9a7f5c7da0c6beee0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f1cb57d2a9aa3fc8acbb5a8e90d640d15f5541a363735da241b0c94169f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:09af14b7bf496d016b3ee75f8d0b41b5e8ec5eedf7584aa8d3a5cf9648f7c538`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576da263c2a1927d3ccff6b6d547707c365b90b973aa40577307cc15912aa4bd`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 22.3 KB (22309 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6`

```console
$ docker pull satosa@sha256:97c1df2684a784d97f210d56978d461f37eef19cdbad0d9e3f5cbd774173d427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6` - linux; amd64

```console
$ docker pull satosa@sha256:a5cdc9a055451958e8d1ded5288146798e7dcd1db5f709995d18a39f570cc480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79658789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e81492a5289ddbbf16fb3fa9fea628a17f341954b6a7a4757c6ee838eff887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:47:27 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:48:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:48:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:48:19 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:48:19 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d089a6c0a2543e3dd748a4ffcbfe409ab93f2049d42640588be3a3f67acffe`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 1.3 MB (1289801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e665593ff40197b851364fab0389fc6f5fa35bc74814ddfad07f96f417fc574`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 12.4 MB (12411778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c2a9291f81f0f8349de8621c9878a424552bfc64d0e4f20a4ac6006489fe1`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229181c8259dfdd4a6755b6bf7efc6bb389c8517a3f4459dba8ecf3e9622ad8`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 7.5 MB (7527271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec288a5cb043f3785f2ebbca2c9e7314b37a0f8e837c24f8d22df312bcc522da`  
		Last Modified: Thu, 05 Nov 2026 08:48:30 GMT  
		Size: 28.6 MB (28560992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589bb2898a531d26ca8bf410b6820504db14ff7bad75d2073c6aeaf49a1e49c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fd86e263d6bb0007cf5716bf42179ecbb0de03cec5b7dfcba23c48c37344a`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6` - unknown; unknown

```console
$ docker pull satosa@sha256:b421f210533fdb0aa09c36ab00ca32fa59b24b91a513c5e76dc5416a7541305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd746fbbaffd78698baef2df203ad0228396893a73374f69701ae2cc2456097`

```dockerfile
```

-	Layers:
	-	`sha256:53d498ab4e4c9560b7456d7296f0ce51f8ce0672918080ec9e4e85acdc11745c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.3 MB (2346795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd90a64f015216c86e84d9b642341307527a7a32962f4e12f1f2a9d0fa5ddc50`  
		Last Modified: Thu, 05 Nov 2026 08:48:28 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:d235be9168d5225467b9eb15e4a12b0f5cc346f03d014e9ce23da9219831f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79581069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a457bfe707cead3f4cabbb6290ccbe9ed0ed2d0ea4d145728f4720377c24c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:45:23 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093c3b5dab6f9b53f743c03e7a9681123491b66978d56cf1be9f4b1f3dad9426`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 1.3 MB (1270202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c794ddf3dfbe3597d43798fc1945e1664fca6859462ba411279efee1359b5f5b`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 12.3 MB (12326249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f983deeeb561ef14ee4fc979f0b49a44a4ba1f9914e2323763bc5552ddc6fb`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8be7f249016b89e7aba1d0cb40777f7e9fa0464729cf9e5fa01a755db1f989`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 7.3 MB (7336274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377699b3715f643c0e1270fb6bb4b96668fe3f7685824f9108f96853aac08f53`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 28.4 MB (28421493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dd942fb8daa6c95bfb865ccdae6943abf7f42eb77cecd22e615a7b131a6d24`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45129fbe13064f8367df33db6705e33fe8c48e86dc1e72efe28b02d7459da7`  
		Last Modified: Thu, 05 Nov 2026 08:46:34 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6` - unknown; unknown

```console
$ docker pull satosa@sha256:f7df41ede1f4ea86a5941f7d14e6f54877ef38c062d3cd9a7f5c7da0c6beee0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f1cb57d2a9aa3fc8acbb5a8e90d640d15f5541a363735da241b0c94169f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:09af14b7bf496d016b3ee75f8d0b41b5e8ec5eedf7584aa8d3a5cf9648f7c538`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576da263c2a1927d3ccff6b6d547707c365b90b973aa40577307cc15912aa4bd`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 22.3 KB (22309 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6-alpine`

```console
$ docker pull satosa@sha256:b742adfb0868a7dba54eea904a22a9ba42f5e294be55250f1417f348d70d1066
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6-alpine` - linux; amd64

```console
$ docker pull satosa@sha256:963ca36913b8f5ab95a4cf694bcdea07abbb0b623f16036ce1b7a6f76ce51977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53673130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1142e5a4444ece958e9d1b4d39fc3b428f7c4cc9fe7829787371488dce2c208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:41:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:41:12 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:41:12 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:41:12 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe167430b135761433fb4ab86f1f6aa12798f608532bd45561fc5762f16f4a`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 412.1 KB (412052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d301c571856d52506f07fe61485bc266e895ecfc58989261ddc49823e4b3448`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 13.6 MB (13580150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c63133ef3d5d69c78b0eeda19bb2f582ea7ef747d8953802fe1141611d2ca`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461657240640e87f16efeaa8a4d0581e4b5100f3cb3f4345ec60d07c93ba41`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 7.2 MB (7240728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374148035f36fa261e226ec95020e749a445081b787bbe22e8602e0bf77bcde`  
		Last Modified: Mon, 26 Oct 2026 23:41:23 GMT  
		Size: 28.6 MB (28574287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006b07c5d711fb172120af4151913c0baad23398d87ea730faa0ef6b155f22`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e91c0c15af7c8b3e0913546a442926582f19b17c0885e0049ba58f81a67822`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:e5b0d7643169801246c63ff54e364f31a0448f90f454101eabba6416c90c71ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.2 KB (807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5737a883572e3e20d60b1af96985e571e450019e46d91a3450a4e9d9b1c734`

```dockerfile
```

-	Layers:
	-	`sha256:d669864d05ee063397cefdacc2f8dc17f2a2ff8d5f885f6e82f70ef8b1d6b22e`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 784.3 KB (784308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138f3b6c07a5fbb3c53e39410b4f8792ecb72949bbbaa4e77c7115c58cc505a4`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 22.9 KB (22852 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6-alpine` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:3ac0274a3b767e63ae88c17dd4a850a164a471b799de297208b483d7894de136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53736534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f4785c138e082d59fa6b7481162732dd5a766f7c932e524ad95766e909f159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:45:25 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:45:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:45:48 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:45:48 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c448cb00407e95de565ff56cd0e4d440dd9a7e8d167a4f7c698ddf52daf3592`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 415.6 KB (415581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8538930762d930dfd50a19226ea7227ddac05c0cb7b4adbdfe3c60ad84cf52c5`  
		Last Modified: Mon, 26 Oct 2026 22:42:35 GMT  
		Size: 13.7 MB (13661453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642973a330128f13b75a468a0de966e0a59586a590652afc4f8277ab10c11067`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13864900bd9f3d5fc7bcbb2229138613cf21277a0691542e32cf98d6c2e8d0fb`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 7.2 MB (7237324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97196de9422d2a534d0a0d9b7f12af328eb2aac378a54da42a75976f8648e092`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 28.2 MB (28218876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc520f61fec113af14e059863a28c08f711fb8697c956b96a2b430554edfd4ad`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db961edf6b72c76c70678bc5a661ccb6df6d71fdcec721f54e225ce077a56f`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:4455417b39618b913a0192190715f16ac42563e53c44b485d5d1bed3561abe02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.8 KB (806803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f62053cd24e2a8f1036208f140172bacddc49517d7c48515210423423bb26`

```dockerfile
```

-	Layers:
	-	`sha256:d876b9fcf5e713a2ae3a0dc6b0d992206458816a42351febea96ef29b0b70d86`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 783.8 KB (783769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097b9bbbaf3e0aace62248a27e1623fe61f0a03bfe1fd82aa93262086a71c14d`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6-alpine3.24`

```console
$ docker pull satosa@sha256:b742adfb0868a7dba54eea904a22a9ba42f5e294be55250f1417f348d70d1066
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6-alpine3.24` - linux; amd64

```console
$ docker pull satosa@sha256:963ca36913b8f5ab95a4cf694bcdea07abbb0b623f16036ce1b7a6f76ce51977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53673130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1142e5a4444ece958e9d1b4d39fc3b428f7c4cc9fe7829787371488dce2c208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:41:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:41:12 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:41:12 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:41:12 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe167430b135761433fb4ab86f1f6aa12798f608532bd45561fc5762f16f4a`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 412.1 KB (412052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d301c571856d52506f07fe61485bc266e895ecfc58989261ddc49823e4b3448`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 13.6 MB (13580150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c63133ef3d5d69c78b0eeda19bb2f582ea7ef747d8953802fe1141611d2ca`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461657240640e87f16efeaa8a4d0581e4b5100f3cb3f4345ec60d07c93ba41`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 7.2 MB (7240728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374148035f36fa261e226ec95020e749a445081b787bbe22e8602e0bf77bcde`  
		Last Modified: Mon, 26 Oct 2026 23:41:23 GMT  
		Size: 28.6 MB (28574287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006b07c5d711fb172120af4151913c0baad23398d87ea730faa0ef6b155f22`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e91c0c15af7c8b3e0913546a442926582f19b17c0885e0049ba58f81a67822`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:e5b0d7643169801246c63ff54e364f31a0448f90f454101eabba6416c90c71ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.2 KB (807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5737a883572e3e20d60b1af96985e571e450019e46d91a3450a4e9d9b1c734`

```dockerfile
```

-	Layers:
	-	`sha256:d669864d05ee063397cefdacc2f8dc17f2a2ff8d5f885f6e82f70ef8b1d6b22e`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 784.3 KB (784308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138f3b6c07a5fbb3c53e39410b4f8792ecb72949bbbaa4e77c7115c58cc505a4`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 22.9 KB (22852 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:3ac0274a3b767e63ae88c17dd4a850a164a471b799de297208b483d7894de136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53736534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f4785c138e082d59fa6b7481162732dd5a766f7c932e524ad95766e909f159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:45:25 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:45:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:45:48 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:45:48 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c448cb00407e95de565ff56cd0e4d440dd9a7e8d167a4f7c698ddf52daf3592`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 415.6 KB (415581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8538930762d930dfd50a19226ea7227ddac05c0cb7b4adbdfe3c60ad84cf52c5`  
		Last Modified: Mon, 26 Oct 2026 22:42:35 GMT  
		Size: 13.7 MB (13661453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642973a330128f13b75a468a0de966e0a59586a590652afc4f8277ab10c11067`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13864900bd9f3d5fc7bcbb2229138613cf21277a0691542e32cf98d6c2e8d0fb`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 7.2 MB (7237324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97196de9422d2a534d0a0d9b7f12af328eb2aac378a54da42a75976f8648e092`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 28.2 MB (28218876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc520f61fec113af14e059863a28c08f711fb8697c956b96a2b430554edfd4ad`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db961edf6b72c76c70678bc5a661ccb6df6d71fdcec721f54e225ce077a56f`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:4455417b39618b913a0192190715f16ac42563e53c44b485d5d1bed3561abe02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.8 KB (806803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f62053cd24e2a8f1036208f140172bacddc49517d7c48515210423423bb26`

```dockerfile
```

-	Layers:
	-	`sha256:d876b9fcf5e713a2ae3a0dc6b0d992206458816a42351febea96ef29b0b70d86`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 783.8 KB (783769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097b9bbbaf3e0aace62248a27e1623fe61f0a03bfe1fd82aa93262086a71c14d`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6-trixie`

```console
$ docker pull satosa@sha256:97c1df2684a784d97f210d56978d461f37eef19cdbad0d9e3f5cbd774173d427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6-trixie` - linux; amd64

```console
$ docker pull satosa@sha256:a5cdc9a055451958e8d1ded5288146798e7dcd1db5f709995d18a39f570cc480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79658789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e81492a5289ddbbf16fb3fa9fea628a17f341954b6a7a4757c6ee838eff887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:47:27 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:48:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:48:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:48:19 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:48:19 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d089a6c0a2543e3dd748a4ffcbfe409ab93f2049d42640588be3a3f67acffe`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 1.3 MB (1289801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e665593ff40197b851364fab0389fc6f5fa35bc74814ddfad07f96f417fc574`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 12.4 MB (12411778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c2a9291f81f0f8349de8621c9878a424552bfc64d0e4f20a4ac6006489fe1`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229181c8259dfdd4a6755b6bf7efc6bb389c8517a3f4459dba8ecf3e9622ad8`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 7.5 MB (7527271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec288a5cb043f3785f2ebbca2c9e7314b37a0f8e837c24f8d22df312bcc522da`  
		Last Modified: Thu, 05 Nov 2026 08:48:30 GMT  
		Size: 28.6 MB (28560992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589bb2898a531d26ca8bf410b6820504db14ff7bad75d2073c6aeaf49a1e49c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fd86e263d6bb0007cf5716bf42179ecbb0de03cec5b7dfcba23c48c37344a`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:b421f210533fdb0aa09c36ab00ca32fa59b24b91a513c5e76dc5416a7541305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd746fbbaffd78698baef2df203ad0228396893a73374f69701ae2cc2456097`

```dockerfile
```

-	Layers:
	-	`sha256:53d498ab4e4c9560b7456d7296f0ce51f8ce0672918080ec9e4e85acdc11745c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.3 MB (2346795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd90a64f015216c86e84d9b642341307527a7a32962f4e12f1f2a9d0fa5ddc50`  
		Last Modified: Thu, 05 Nov 2026 08:48:28 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6-trixie` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:d235be9168d5225467b9eb15e4a12b0f5cc346f03d014e9ce23da9219831f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79581069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a457bfe707cead3f4cabbb6290ccbe9ed0ed2d0ea4d145728f4720377c24c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:45:23 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093c3b5dab6f9b53f743c03e7a9681123491b66978d56cf1be9f4b1f3dad9426`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 1.3 MB (1270202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c794ddf3dfbe3597d43798fc1945e1664fca6859462ba411279efee1359b5f5b`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 12.3 MB (12326249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f983deeeb561ef14ee4fc979f0b49a44a4ba1f9914e2323763bc5552ddc6fb`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8be7f249016b89e7aba1d0cb40777f7e9fa0464729cf9e5fa01a755db1f989`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 7.3 MB (7336274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377699b3715f643c0e1270fb6bb4b96668fe3f7685824f9108f96853aac08f53`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 28.4 MB (28421493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dd942fb8daa6c95bfb865ccdae6943abf7f42eb77cecd22e615a7b131a6d24`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45129fbe13064f8367df33db6705e33fe8c48e86dc1e72efe28b02d7459da7`  
		Last Modified: Thu, 05 Nov 2026 08:46:34 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:f7df41ede1f4ea86a5941f7d14e6f54877ef38c062d3cd9a7f5c7da0c6beee0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f1cb57d2a9aa3fc8acbb5a8e90d640d15f5541a363735da241b0c94169f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:09af14b7bf496d016b3ee75f8d0b41b5e8ec5eedf7584aa8d3a5cf9648f7c538`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576da263c2a1927d3ccff6b6d547707c365b90b973aa40577307cc15912aa4bd`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 22.3 KB (22309 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6.0`

```console
$ docker pull satosa@sha256:97c1df2684a784d97f210d56978d461f37eef19cdbad0d9e3f5cbd774173d427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6.0` - linux; amd64

```console
$ docker pull satosa@sha256:a5cdc9a055451958e8d1ded5288146798e7dcd1db5f709995d18a39f570cc480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79658789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e81492a5289ddbbf16fb3fa9fea628a17f341954b6a7a4757c6ee838eff887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:47:27 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:48:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:48:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:48:19 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:48:19 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d089a6c0a2543e3dd748a4ffcbfe409ab93f2049d42640588be3a3f67acffe`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 1.3 MB (1289801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e665593ff40197b851364fab0389fc6f5fa35bc74814ddfad07f96f417fc574`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 12.4 MB (12411778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c2a9291f81f0f8349de8621c9878a424552bfc64d0e4f20a4ac6006489fe1`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229181c8259dfdd4a6755b6bf7efc6bb389c8517a3f4459dba8ecf3e9622ad8`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 7.5 MB (7527271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec288a5cb043f3785f2ebbca2c9e7314b37a0f8e837c24f8d22df312bcc522da`  
		Last Modified: Thu, 05 Nov 2026 08:48:30 GMT  
		Size: 28.6 MB (28560992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589bb2898a531d26ca8bf410b6820504db14ff7bad75d2073c6aeaf49a1e49c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fd86e263d6bb0007cf5716bf42179ecbb0de03cec5b7dfcba23c48c37344a`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0` - unknown; unknown

```console
$ docker pull satosa@sha256:b421f210533fdb0aa09c36ab00ca32fa59b24b91a513c5e76dc5416a7541305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd746fbbaffd78698baef2df203ad0228396893a73374f69701ae2cc2456097`

```dockerfile
```

-	Layers:
	-	`sha256:53d498ab4e4c9560b7456d7296f0ce51f8ce0672918080ec9e4e85acdc11745c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.3 MB (2346795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd90a64f015216c86e84d9b642341307527a7a32962f4e12f1f2a9d0fa5ddc50`  
		Last Modified: Thu, 05 Nov 2026 08:48:28 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6.0` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:d235be9168d5225467b9eb15e4a12b0f5cc346f03d014e9ce23da9219831f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79581069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a457bfe707cead3f4cabbb6290ccbe9ed0ed2d0ea4d145728f4720377c24c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:45:23 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093c3b5dab6f9b53f743c03e7a9681123491b66978d56cf1be9f4b1f3dad9426`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 1.3 MB (1270202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c794ddf3dfbe3597d43798fc1945e1664fca6859462ba411279efee1359b5f5b`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 12.3 MB (12326249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f983deeeb561ef14ee4fc979f0b49a44a4ba1f9914e2323763bc5552ddc6fb`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8be7f249016b89e7aba1d0cb40777f7e9fa0464729cf9e5fa01a755db1f989`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 7.3 MB (7336274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377699b3715f643c0e1270fb6bb4b96668fe3f7685824f9108f96853aac08f53`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 28.4 MB (28421493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dd942fb8daa6c95bfb865ccdae6943abf7f42eb77cecd22e615a7b131a6d24`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45129fbe13064f8367df33db6705e33fe8c48e86dc1e72efe28b02d7459da7`  
		Last Modified: Thu, 05 Nov 2026 08:46:34 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0` - unknown; unknown

```console
$ docker pull satosa@sha256:f7df41ede1f4ea86a5941f7d14e6f54877ef38c062d3cd9a7f5c7da0c6beee0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f1cb57d2a9aa3fc8acbb5a8e90d640d15f5541a363735da241b0c94169f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:09af14b7bf496d016b3ee75f8d0b41b5e8ec5eedf7584aa8d3a5cf9648f7c538`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576da263c2a1927d3ccff6b6d547707c365b90b973aa40577307cc15912aa4bd`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 22.3 KB (22309 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6.0-alpine`

```console
$ docker pull satosa@sha256:b742adfb0868a7dba54eea904a22a9ba42f5e294be55250f1417f348d70d1066
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6.0-alpine` - linux; amd64

```console
$ docker pull satosa@sha256:963ca36913b8f5ab95a4cf694bcdea07abbb0b623f16036ce1b7a6f76ce51977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53673130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1142e5a4444ece958e9d1b4d39fc3b428f7c4cc9fe7829787371488dce2c208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:41:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:41:12 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:41:12 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:41:12 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe167430b135761433fb4ab86f1f6aa12798f608532bd45561fc5762f16f4a`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 412.1 KB (412052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d301c571856d52506f07fe61485bc266e895ecfc58989261ddc49823e4b3448`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 13.6 MB (13580150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c63133ef3d5d69c78b0eeda19bb2f582ea7ef747d8953802fe1141611d2ca`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461657240640e87f16efeaa8a4d0581e4b5100f3cb3f4345ec60d07c93ba41`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 7.2 MB (7240728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374148035f36fa261e226ec95020e749a445081b787bbe22e8602e0bf77bcde`  
		Last Modified: Mon, 26 Oct 2026 23:41:23 GMT  
		Size: 28.6 MB (28574287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006b07c5d711fb172120af4151913c0baad23398d87ea730faa0ef6b155f22`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e91c0c15af7c8b3e0913546a442926582f19b17c0885e0049ba58f81a67822`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:e5b0d7643169801246c63ff54e364f31a0448f90f454101eabba6416c90c71ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.2 KB (807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5737a883572e3e20d60b1af96985e571e450019e46d91a3450a4e9d9b1c734`

```dockerfile
```

-	Layers:
	-	`sha256:d669864d05ee063397cefdacc2f8dc17f2a2ff8d5f885f6e82f70ef8b1d6b22e`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 784.3 KB (784308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138f3b6c07a5fbb3c53e39410b4f8792ecb72949bbbaa4e77c7115c58cc505a4`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 22.9 KB (22852 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6.0-alpine` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:3ac0274a3b767e63ae88c17dd4a850a164a471b799de297208b483d7894de136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53736534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f4785c138e082d59fa6b7481162732dd5a766f7c932e524ad95766e909f159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:45:25 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:45:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:45:48 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:45:48 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c448cb00407e95de565ff56cd0e4d440dd9a7e8d167a4f7c698ddf52daf3592`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 415.6 KB (415581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8538930762d930dfd50a19226ea7227ddac05c0cb7b4adbdfe3c60ad84cf52c5`  
		Last Modified: Mon, 26 Oct 2026 22:42:35 GMT  
		Size: 13.7 MB (13661453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642973a330128f13b75a468a0de966e0a59586a590652afc4f8277ab10c11067`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13864900bd9f3d5fc7bcbb2229138613cf21277a0691542e32cf98d6c2e8d0fb`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 7.2 MB (7237324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97196de9422d2a534d0a0d9b7f12af328eb2aac378a54da42a75976f8648e092`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 28.2 MB (28218876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc520f61fec113af14e059863a28c08f711fb8697c956b96a2b430554edfd4ad`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db961edf6b72c76c70678bc5a661ccb6df6d71fdcec721f54e225ce077a56f`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:4455417b39618b913a0192190715f16ac42563e53c44b485d5d1bed3561abe02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.8 KB (806803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f62053cd24e2a8f1036208f140172bacddc49517d7c48515210423423bb26`

```dockerfile
```

-	Layers:
	-	`sha256:d876b9fcf5e713a2ae3a0dc6b0d992206458816a42351febea96ef29b0b70d86`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 783.8 KB (783769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097b9bbbaf3e0aace62248a27e1623fe61f0a03bfe1fd82aa93262086a71c14d`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6.0-alpine3.24`

```console
$ docker pull satosa@sha256:b742adfb0868a7dba54eea904a22a9ba42f5e294be55250f1417f348d70d1066
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6.0-alpine3.24` - linux; amd64

```console
$ docker pull satosa@sha256:963ca36913b8f5ab95a4cf694bcdea07abbb0b623f16036ce1b7a6f76ce51977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53673130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1142e5a4444ece958e9d1b4d39fc3b428f7c4cc9fe7829787371488dce2c208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:41:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:41:12 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:41:12 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:41:12 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe167430b135761433fb4ab86f1f6aa12798f608532bd45561fc5762f16f4a`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 412.1 KB (412052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d301c571856d52506f07fe61485bc266e895ecfc58989261ddc49823e4b3448`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 13.6 MB (13580150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c63133ef3d5d69c78b0eeda19bb2f582ea7ef747d8953802fe1141611d2ca`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461657240640e87f16efeaa8a4d0581e4b5100f3cb3f4345ec60d07c93ba41`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 7.2 MB (7240728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374148035f36fa261e226ec95020e749a445081b787bbe22e8602e0bf77bcde`  
		Last Modified: Mon, 26 Oct 2026 23:41:23 GMT  
		Size: 28.6 MB (28574287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006b07c5d711fb172120af4151913c0baad23398d87ea730faa0ef6b155f22`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e91c0c15af7c8b3e0913546a442926582f19b17c0885e0049ba58f81a67822`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:e5b0d7643169801246c63ff54e364f31a0448f90f454101eabba6416c90c71ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.2 KB (807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5737a883572e3e20d60b1af96985e571e450019e46d91a3450a4e9d9b1c734`

```dockerfile
```

-	Layers:
	-	`sha256:d669864d05ee063397cefdacc2f8dc17f2a2ff8d5f885f6e82f70ef8b1d6b22e`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 784.3 KB (784308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138f3b6c07a5fbb3c53e39410b4f8792ecb72949bbbaa4e77c7115c58cc505a4`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 22.9 KB (22852 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6.0-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:3ac0274a3b767e63ae88c17dd4a850a164a471b799de297208b483d7894de136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53736534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f4785c138e082d59fa6b7481162732dd5a766f7c932e524ad95766e909f159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:45:25 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:45:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:45:48 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:45:48 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c448cb00407e95de565ff56cd0e4d440dd9a7e8d167a4f7c698ddf52daf3592`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 415.6 KB (415581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8538930762d930dfd50a19226ea7227ddac05c0cb7b4adbdfe3c60ad84cf52c5`  
		Last Modified: Mon, 26 Oct 2026 22:42:35 GMT  
		Size: 13.7 MB (13661453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642973a330128f13b75a468a0de966e0a59586a590652afc4f8277ab10c11067`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13864900bd9f3d5fc7bcbb2229138613cf21277a0691542e32cf98d6c2e8d0fb`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 7.2 MB (7237324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97196de9422d2a534d0a0d9b7f12af328eb2aac378a54da42a75976f8648e092`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 28.2 MB (28218876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc520f61fec113af14e059863a28c08f711fb8697c956b96a2b430554edfd4ad`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db961edf6b72c76c70678bc5a661ccb6df6d71fdcec721f54e225ce077a56f`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:4455417b39618b913a0192190715f16ac42563e53c44b485d5d1bed3561abe02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.8 KB (806803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f62053cd24e2a8f1036208f140172bacddc49517d7c48515210423423bb26`

```dockerfile
```

-	Layers:
	-	`sha256:d876b9fcf5e713a2ae3a0dc6b0d992206458816a42351febea96ef29b0b70d86`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 783.8 KB (783769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097b9bbbaf3e0aace62248a27e1623fe61f0a03bfe1fd82aa93262086a71c14d`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:8.6.0-trixie`

```console
$ docker pull satosa@sha256:97c1df2684a784d97f210d56978d461f37eef19cdbad0d9e3f5cbd774173d427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:8.6.0-trixie` - linux; amd64

```console
$ docker pull satosa@sha256:a5cdc9a055451958e8d1ded5288146798e7dcd1db5f709995d18a39f570cc480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79658789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e81492a5289ddbbf16fb3fa9fea628a17f341954b6a7a4757c6ee838eff887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:47:27 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:48:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:48:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:48:19 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:48:19 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d089a6c0a2543e3dd748a4ffcbfe409ab93f2049d42640588be3a3f67acffe`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 1.3 MB (1289801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e665593ff40197b851364fab0389fc6f5fa35bc74814ddfad07f96f417fc574`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 12.4 MB (12411778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c2a9291f81f0f8349de8621c9878a424552bfc64d0e4f20a4ac6006489fe1`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229181c8259dfdd4a6755b6bf7efc6bb389c8517a3f4459dba8ecf3e9622ad8`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 7.5 MB (7527271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec288a5cb043f3785f2ebbca2c9e7314b37a0f8e837c24f8d22df312bcc522da`  
		Last Modified: Thu, 05 Nov 2026 08:48:30 GMT  
		Size: 28.6 MB (28560992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589bb2898a531d26ca8bf410b6820504db14ff7bad75d2073c6aeaf49a1e49c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fd86e263d6bb0007cf5716bf42179ecbb0de03cec5b7dfcba23c48c37344a`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:b421f210533fdb0aa09c36ab00ca32fa59b24b91a513c5e76dc5416a7541305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd746fbbaffd78698baef2df203ad0228396893a73374f69701ae2cc2456097`

```dockerfile
```

-	Layers:
	-	`sha256:53d498ab4e4c9560b7456d7296f0ce51f8ce0672918080ec9e4e85acdc11745c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.3 MB (2346795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd90a64f015216c86e84d9b642341307527a7a32962f4e12f1f2a9d0fa5ddc50`  
		Last Modified: Thu, 05 Nov 2026 08:48:28 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:8.6.0-trixie` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:d235be9168d5225467b9eb15e4a12b0f5cc346f03d014e9ce23da9219831f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79581069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a457bfe707cead3f4cabbb6290ccbe9ed0ed2d0ea4d145728f4720377c24c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:45:23 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093c3b5dab6f9b53f743c03e7a9681123491b66978d56cf1be9f4b1f3dad9426`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 1.3 MB (1270202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c794ddf3dfbe3597d43798fc1945e1664fca6859462ba411279efee1359b5f5b`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 12.3 MB (12326249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f983deeeb561ef14ee4fc979f0b49a44a4ba1f9914e2323763bc5552ddc6fb`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8be7f249016b89e7aba1d0cb40777f7e9fa0464729cf9e5fa01a755db1f989`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 7.3 MB (7336274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377699b3715f643c0e1270fb6bb4b96668fe3f7685824f9108f96853aac08f53`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 28.4 MB (28421493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dd942fb8daa6c95bfb865ccdae6943abf7f42eb77cecd22e615a7b131a6d24`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45129fbe13064f8367df33db6705e33fe8c48e86dc1e72efe28b02d7459da7`  
		Last Modified: Thu, 05 Nov 2026 08:46:34 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:8.6.0-trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:f7df41ede1f4ea86a5941f7d14e6f54877ef38c062d3cd9a7f5c7da0c6beee0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f1cb57d2a9aa3fc8acbb5a8e90d640d15f5541a363735da241b0c94169f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:09af14b7bf496d016b3ee75f8d0b41b5e8ec5eedf7584aa8d3a5cf9648f7c538`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576da263c2a1927d3ccff6b6d547707c365b90b973aa40577307cc15912aa4bd`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 22.3 KB (22309 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:alpine`

```console
$ docker pull satosa@sha256:b742adfb0868a7dba54eea904a22a9ba42f5e294be55250f1417f348d70d1066
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:alpine` - linux; amd64

```console
$ docker pull satosa@sha256:963ca36913b8f5ab95a4cf694bcdea07abbb0b623f16036ce1b7a6f76ce51977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53673130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1142e5a4444ece958e9d1b4d39fc3b428f7c4cc9fe7829787371488dce2c208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:41:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:41:12 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:41:12 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:41:12 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe167430b135761433fb4ab86f1f6aa12798f608532bd45561fc5762f16f4a`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 412.1 KB (412052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d301c571856d52506f07fe61485bc266e895ecfc58989261ddc49823e4b3448`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 13.6 MB (13580150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c63133ef3d5d69c78b0eeda19bb2f582ea7ef747d8953802fe1141611d2ca`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461657240640e87f16efeaa8a4d0581e4b5100f3cb3f4345ec60d07c93ba41`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 7.2 MB (7240728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374148035f36fa261e226ec95020e749a445081b787bbe22e8602e0bf77bcde`  
		Last Modified: Mon, 26 Oct 2026 23:41:23 GMT  
		Size: 28.6 MB (28574287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006b07c5d711fb172120af4151913c0baad23398d87ea730faa0ef6b155f22`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e91c0c15af7c8b3e0913546a442926582f19b17c0885e0049ba58f81a67822`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:e5b0d7643169801246c63ff54e364f31a0448f90f454101eabba6416c90c71ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.2 KB (807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5737a883572e3e20d60b1af96985e571e450019e46d91a3450a4e9d9b1c734`

```dockerfile
```

-	Layers:
	-	`sha256:d669864d05ee063397cefdacc2f8dc17f2a2ff8d5f885f6e82f70ef8b1d6b22e`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 784.3 KB (784308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138f3b6c07a5fbb3c53e39410b4f8792ecb72949bbbaa4e77c7115c58cc505a4`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 22.9 KB (22852 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:alpine` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:3ac0274a3b767e63ae88c17dd4a850a164a471b799de297208b483d7894de136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53736534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f4785c138e082d59fa6b7481162732dd5a766f7c932e524ad95766e909f159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:45:25 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:45:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:45:48 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:45:48 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c448cb00407e95de565ff56cd0e4d440dd9a7e8d167a4f7c698ddf52daf3592`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 415.6 KB (415581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8538930762d930dfd50a19226ea7227ddac05c0cb7b4adbdfe3c60ad84cf52c5`  
		Last Modified: Mon, 26 Oct 2026 22:42:35 GMT  
		Size: 13.7 MB (13661453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642973a330128f13b75a468a0de966e0a59586a590652afc4f8277ab10c11067`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13864900bd9f3d5fc7bcbb2229138613cf21277a0691542e32cf98d6c2e8d0fb`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 7.2 MB (7237324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97196de9422d2a534d0a0d9b7f12af328eb2aac378a54da42a75976f8648e092`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 28.2 MB (28218876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc520f61fec113af14e059863a28c08f711fb8697c956b96a2b430554edfd4ad`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db961edf6b72c76c70678bc5a661ccb6df6d71fdcec721f54e225ce077a56f`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:alpine` - unknown; unknown

```console
$ docker pull satosa@sha256:4455417b39618b913a0192190715f16ac42563e53c44b485d5d1bed3561abe02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.8 KB (806803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f62053cd24e2a8f1036208f140172bacddc49517d7c48515210423423bb26`

```dockerfile
```

-	Layers:
	-	`sha256:d876b9fcf5e713a2ae3a0dc6b0d992206458816a42351febea96ef29b0b70d86`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 783.8 KB (783769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097b9bbbaf3e0aace62248a27e1623fe61f0a03bfe1fd82aa93262086a71c14d`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:alpine3.24`

```console
$ docker pull satosa@sha256:b742adfb0868a7dba54eea904a22a9ba42f5e294be55250f1417f348d70d1066
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:alpine3.24` - linux; amd64

```console
$ docker pull satosa@sha256:963ca36913b8f5ab95a4cf694bcdea07abbb0b623f16036ce1b7a6f76ce51977
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53673130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1142e5a4444ece958e9d1b4d39fc3b428f7c4cc9fe7829787371488dce2c208`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:38:25 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:38:25 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:38:25 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:40:45 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:40:51 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:41:11 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:41:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:41:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:41:12 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:41:12 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:41:12 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe167430b135761433fb4ab86f1f6aa12798f608532bd45561fc5762f16f4a`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 412.1 KB (412052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d301c571856d52506f07fe61485bc266e895ecfc58989261ddc49823e4b3448`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 13.6 MB (13580150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868c63133ef3d5d69c78b0eeda19bb2f582ea7ef747d8953802fe1141611d2ca`  
		Last Modified: Mon, 26 Oct 2026 22:40:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2461657240640e87f16efeaa8a4d0581e4b5100f3cb3f4345ec60d07c93ba41`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 7.2 MB (7240728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0374148035f36fa261e226ec95020e749a445081b787bbe22e8602e0bf77bcde`  
		Last Modified: Mon, 26 Oct 2026 23:41:23 GMT  
		Size: 28.6 MB (28574287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006b07c5d711fb172120af4151913c0baad23398d87ea730faa0ef6b155f22`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 10.4 KB (10445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e91c0c15af7c8b3e0913546a442926582f19b17c0885e0049ba58f81a67822`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:e5b0d7643169801246c63ff54e364f31a0448f90f454101eabba6416c90c71ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **807.2 KB (807160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c5737a883572e3e20d60b1af96985e571e450019e46d91a3450a4e9d9b1c734`

```dockerfile
```

-	Layers:
	-	`sha256:d669864d05ee063397cefdacc2f8dc17f2a2ff8d5f885f6e82f70ef8b1d6b22e`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 784.3 KB (784308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:138f3b6c07a5fbb3c53e39410b4f8792ecb72949bbbaa4e77c7115c58cc505a4`  
		Last Modified: Mon, 26 Oct 2026 23:41:22 GMT  
		Size: 22.9 KB (22852 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:alpine3.24` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:3ac0274a3b767e63ae88c17dd4a850a164a471b799de297208b483d7894de136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53736534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1f4785c138e082d59fa6b7481162732dd5a766f7c932e524ad95766e909f159`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 22:39:50 GMT
ENV LANG=C.UTF-8
# Mon, 26 Oct 2026 22:39:50 GMT
RUN set -eux; 	apk add --no-cache 		ca-certificates 		tzdata 	; # buildkit
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_VERSION=3.14.10
# Mon, 26 Oct 2026 22:39:50 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Mon, 26 Oct 2026 22:42:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		dpkg-dev dpkg 		findutils 		g++ 		gcc 		gdbm-dev 		gnupg 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tar 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz 		xz-dev 		zlib-dev 		zstd-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(apk --print-arch)"; 	case "$arch" in 		x86_64|aarch64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		x86) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-network --virtual .python-rundeps 	; 	apk del --no-network .build-deps; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Mon, 26 Oct 2026 22:42:28 GMT
CMD ["python3"]
# Mon, 26 Oct 2026 23:45:25 GMT
RUN set -eux; 	addgroup --gid 1000 satosa; 	adduser -D -G satosa --uid 1000 satosa; 	apk add --no-cache 		bash 		jq 		libxml2-utils 		openssl 		xmlsec 	; 	pip install --no-cache-dir 		yq 	; # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENV SATOSA_VERSION=8.6.0
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		bluez-dev 		bzip2-dev 		cargo 		coreutils 		dpkg 		dpkg-dev 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		musl-dev 		ncurses-dev 		openssl-dev 		pax-utils 		pkgconfig 		python3-dev 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		util-linux-dev 		xz-dev 		zlib-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| fgrep -v libgcc_s- 		| fgrep -v libc.so 		| xargs -rt apk add --no-network --virtual .satosa-rundeps 	; 	apk del --no-network .build-deps; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
WORKDIR /etc/satosa
# Mon, 26 Oct 2026 23:45:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 23:45:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 23:45:48 GMT
EXPOSE map[8080/tcp:{}]
# Mon, 26 Oct 2026 23:45:48 GMT
USER satosa:satosa
# Mon, 26 Oct 2026 23:45:48 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c448cb00407e95de565ff56cd0e4d440dd9a7e8d167a4f7c698ddf52daf3592`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 415.6 KB (415581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8538930762d930dfd50a19226ea7227ddac05c0cb7b4adbdfe3c60ad84cf52c5`  
		Last Modified: Mon, 26 Oct 2026 22:42:35 GMT  
		Size: 13.7 MB (13661453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642973a330128f13b75a468a0de966e0a59586a590652afc4f8277ab10c11067`  
		Last Modified: Mon, 26 Oct 2026 22:42:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13864900bd9f3d5fc7bcbb2229138613cf21277a0691542e32cf98d6c2e8d0fb`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 7.2 MB (7237324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97196de9422d2a534d0a0d9b7f12af328eb2aac378a54da42a75976f8648e092`  
		Last Modified: Mon, 26 Oct 2026 23:45:59 GMT  
		Size: 28.2 MB (28218876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc520f61fec113af14e059863a28c08f711fb8697c956b96a2b430554edfd4ad`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 10.5 KB (10451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2db961edf6b72c76c70678bc5a661ccb6df6d71fdcec721f54e225ce077a56f`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 2.1 KB (2080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:alpine3.24` - unknown; unknown

```console
$ docker pull satosa@sha256:4455417b39618b913a0192190715f16ac42563e53c44b485d5d1bed3561abe02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **806.8 KB (806803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:281f62053cd24e2a8f1036208f140172bacddc49517d7c48515210423423bb26`

```dockerfile
```

-	Layers:
	-	`sha256:d876b9fcf5e713a2ae3a0dc6b0d992206458816a42351febea96ef29b0b70d86`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 783.8 KB (783769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:097b9bbbaf3e0aace62248a27e1623fe61f0a03bfe1fd82aa93262086a71c14d`  
		Last Modified: Mon, 26 Oct 2026 23:45:58 GMT  
		Size: 23.0 KB (23034 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:latest`

```console
$ docker pull satosa@sha256:97c1df2684a784d97f210d56978d461f37eef19cdbad0d9e3f5cbd774173d427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:latest` - linux; amd64

```console
$ docker pull satosa@sha256:a5cdc9a055451958e8d1ded5288146798e7dcd1db5f709995d18a39f570cc480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79658789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e81492a5289ddbbf16fb3fa9fea628a17f341954b6a7a4757c6ee838eff887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:47:27 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:48:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:48:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:48:19 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:48:19 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d089a6c0a2543e3dd748a4ffcbfe409ab93f2049d42640588be3a3f67acffe`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 1.3 MB (1289801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e665593ff40197b851364fab0389fc6f5fa35bc74814ddfad07f96f417fc574`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 12.4 MB (12411778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c2a9291f81f0f8349de8621c9878a424552bfc64d0e4f20a4ac6006489fe1`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229181c8259dfdd4a6755b6bf7efc6bb389c8517a3f4459dba8ecf3e9622ad8`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 7.5 MB (7527271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec288a5cb043f3785f2ebbca2c9e7314b37a0f8e837c24f8d22df312bcc522da`  
		Last Modified: Thu, 05 Nov 2026 08:48:30 GMT  
		Size: 28.6 MB (28560992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589bb2898a531d26ca8bf410b6820504db14ff7bad75d2073c6aeaf49a1e49c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fd86e263d6bb0007cf5716bf42179ecbb0de03cec5b7dfcba23c48c37344a`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:latest` - unknown; unknown

```console
$ docker pull satosa@sha256:b421f210533fdb0aa09c36ab00ca32fa59b24b91a513c5e76dc5416a7541305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd746fbbaffd78698baef2df203ad0228396893a73374f69701ae2cc2456097`

```dockerfile
```

-	Layers:
	-	`sha256:53d498ab4e4c9560b7456d7296f0ce51f8ce0672918080ec9e4e85acdc11745c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.3 MB (2346795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd90a64f015216c86e84d9b642341307527a7a32962f4e12f1f2a9d0fa5ddc50`  
		Last Modified: Thu, 05 Nov 2026 08:48:28 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:latest` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:d235be9168d5225467b9eb15e4a12b0f5cc346f03d014e9ce23da9219831f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79581069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a457bfe707cead3f4cabbb6290ccbe9ed0ed2d0ea4d145728f4720377c24c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:45:23 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093c3b5dab6f9b53f743c03e7a9681123491b66978d56cf1be9f4b1f3dad9426`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 1.3 MB (1270202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c794ddf3dfbe3597d43798fc1945e1664fca6859462ba411279efee1359b5f5b`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 12.3 MB (12326249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f983deeeb561ef14ee4fc979f0b49a44a4ba1f9914e2323763bc5552ddc6fb`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8be7f249016b89e7aba1d0cb40777f7e9fa0464729cf9e5fa01a755db1f989`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 7.3 MB (7336274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377699b3715f643c0e1270fb6bb4b96668fe3f7685824f9108f96853aac08f53`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 28.4 MB (28421493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dd942fb8daa6c95bfb865ccdae6943abf7f42eb77cecd22e615a7b131a6d24`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45129fbe13064f8367df33db6705e33fe8c48e86dc1e72efe28b02d7459da7`  
		Last Modified: Thu, 05 Nov 2026 08:46:34 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:latest` - unknown; unknown

```console
$ docker pull satosa@sha256:f7df41ede1f4ea86a5941f7d14e6f54877ef38c062d3cd9a7f5c7da0c6beee0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f1cb57d2a9aa3fc8acbb5a8e90d640d15f5541a363735da241b0c94169f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:09af14b7bf496d016b3ee75f8d0b41b5e8ec5eedf7584aa8d3a5cf9648f7c538`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576da263c2a1927d3ccff6b6d547707c365b90b973aa40577307cc15912aa4bd`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 22.3 KB (22309 bytes)  
		MIME: application/vnd.in-toto+json

## `satosa:trixie`

```console
$ docker pull satosa@sha256:97c1df2684a784d97f210d56978d461f37eef19cdbad0d9e3f5cbd774173d427
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `satosa:trixie` - linux; amd64

```console
$ docker pull satosa@sha256:a5cdc9a055451958e8d1ded5288146798e7dcd1db5f709995d18a39f570cc480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79658789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84e81492a5289ddbbf16fb3fa9fea628a17f341954b6a7a4757c6ee838eff887`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:51:57 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:51:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:51:57 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 07:58:35 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:47:27 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:48:18 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:48:18 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:48:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:48:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:48:19 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:48:19 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:48:19 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6d089a6c0a2543e3dd748a4ffcbfe409ab93f2049d42640588be3a3f67acffe`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 1.3 MB (1289801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e665593ff40197b851364fab0389fc6f5fa35bc74814ddfad07f96f417fc574`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 12.4 MB (12411778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3c2a9291f81f0f8349de8621c9878a424552bfc64d0e4f20a4ac6006489fe1`  
		Last Modified: Thu, 05 Nov 2026 07:58:43 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c229181c8259dfdd4a6755b6bf7efc6bb389c8517a3f4459dba8ecf3e9622ad8`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 7.5 MB (7527271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec288a5cb043f3785f2ebbca2c9e7314b37a0f8e837c24f8d22df312bcc522da`  
		Last Modified: Thu, 05 Nov 2026 08:48:30 GMT  
		Size: 28.6 MB (28560992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a589bb2898a531d26ca8bf410b6820504db14ff7bad75d2073c6aeaf49a1e49c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 10.5 KB (10457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2fd86e263d6bb0007cf5716bf42179ecbb0de03cec5b7dfcba23c48c37344a`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:b421f210533fdb0aa09c36ab00ca32fa59b24b91a513c5e76dc5416a7541305c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2368924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afd746fbbaffd78698baef2df203ad0228396893a73374f69701ae2cc2456097`

```dockerfile
```

-	Layers:
	-	`sha256:53d498ab4e4c9560b7456d7296f0ce51f8ce0672918080ec9e4e85acdc11745c`  
		Last Modified: Thu, 05 Nov 2026 08:48:29 GMT  
		Size: 2.3 MB (2346795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd90a64f015216c86e84d9b642341307527a7a32962f4e12f1f2a9d0fa5ddc50`  
		Last Modified: Thu, 05 Nov 2026 08:48:28 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.in-toto+json

### `satosa:trixie` - linux; arm64 variant v8

```console
$ docker pull satosa@sha256:d235be9168d5225467b9eb15e4a12b0f5cc346f03d014e9ce23da9219831f2ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79581069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a457bfe707cead3f4cabbb6290ccbe9ed0ed2d0ea4d145728f4720377c24c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["gunicorn","-b0.0.0.0:8080","satosa.wsgi:app"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 07:56:58 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 07:56:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates 		netbase 		tzdata 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_VERSION=3.14.10
# Thu, 05 Nov 2026 07:56:58 GMT
ENV PYTHON_SHA256=de414a57119abef52784d8993e341d53aed635fc2b05c2607d9f98a2c5b72032
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dpkg-dev 		g++ 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libdb-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libzstd-dev 		make 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 		wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz"; 	echo "$PYTHON_SHA256 *python.tar.xz" | sha256sum -c -; 	mkdir -p /usr/src/python; 	tar --extract --directory /usr/src/python --strip-components=1 --file python.tar.xz; 	rm python.tar.xz; 		cd /usr/src/python; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-optimizations 		--enable-option-checking=fatal 		--enable-shared 		$(test "${gnuArch%%-*}" != 'riscv64' && echo '--with-lto') 		--with-ensurepip 	; 	nproc="$(nproc)"; 	EXTRA_CFLAGS="$(dpkg-buildflags --get CFLAGS)"; 	LDFLAGS="$(dpkg-buildflags --get LDFLAGS)"; 	LDFLAGS="${LDFLAGS:-} -Wl,--strip-all"; 	arch="$(dpkg --print-architecture)"; arch="${arch##*-}"; 	case "$arch" in 		amd64|arm64) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer -mno-omit-leaf-frame-pointer"; 			;; 		i386) 			;; 		*) 			EXTRA_CFLAGS="${EXTRA_CFLAGS:-} -fno-omit-frame-pointer"; 			;; 	esac; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-}" 	; 	rm python; 	make -j "$nproc" 		"EXTRA_CFLAGS=${EXTRA_CFLAGS:-}" 		"LDFLAGS=${LDFLAGS:-} -Wl,-rpath='\$\$ORIGIN/../lib'" 		python 	; 	make install; 		cd /; 	rm -rf /usr/src/python; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests -o -name idle_test \) \) 			-o \( -type f -a \( -name '*.pyc' -o -name '*.pyo' -o -name 'libpython*.a' \) \) 		\) -exec rm -rf '{}' + 	; 		ldconfig; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		export PYTHONDONTWRITEBYTECODE=1; 	python3 --version; 	pip3 --version # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
RUN set -eux; 	for src in idle3 pip3 pydoc3 python3 python3-config; do 		dst="$(echo "$src" | tr -d 3)"; 		[ -s "/usr/local/bin/$src" ]; 		[ ! -e "/usr/local/bin/$dst" ]; 		ln -svT "$src" "/usr/local/bin/$dst"; 	done # buildkit
# Thu, 05 Nov 2026 08:04:52 GMT
CMD ["python3"]
# Thu, 05 Nov 2026 08:45:23 GMT
RUN set -eux; 	groupadd -g 1000 satosa; 	useradd -m -g 1000 -u 1000 satosa; 	apt-get update; 	apt-get install -y --no-install-recommends 		jq 		libxml2-utils 		xmlsec1 	; 	rm -rf /var/lib/apt/lists/*; 	pip install --no-cache-dir 		yq 	; # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENV SATOSA_VERSION=8.6.0
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		cargo 		dirmngr 		dpkg-dev 		gcc 		gnupg 		libbluetooth-dev 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		pkg-config 		python3-dev 		tk-dev 		uuid-dev 		wget 		xz-utils 		zlib1g-dev 	; 	pip install --no-cache-dir 		satosa[idpy_oidc_backend,ldap,pyop_mongo,pyop_redis]==${SATOSA_VERSION} 	; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 	mkdir /etc/satosa; 	chown -R satosa:satosa /etc/satosa # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
RUN set -eux; 	python -c 'import urllib.request; urllib.request.urlretrieve("https://github.com/IdentityPython/SATOSA/archive/refs/tags/v'${SATOSA_VERSION%%[a-z]*}'.tar.gz","/tmp/satosa.tgz")'; 	mkdir /usr/share/satosa; 	tar --extract --directory /usr/share/satosa --strip-components=1 --file /tmp/satosa.tgz SATOSA-${SATOSA_VERSION%%[a-z]*}/example/; 	rm /tmp/satosa.tgz # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
WORKDIR /etc/satosa
# Thu, 05 Nov 2026 08:46:23 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:46:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 08:46:23 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 05 Nov 2026 08:46:23 GMT
USER satosa:satosa
# Thu, 05 Nov 2026 08:46:23 GMT
CMD ["gunicorn" "-b0.0.0.0:8080" "satosa.wsgi:app"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:093c3b5dab6f9b53f743c03e7a9681123491b66978d56cf1be9f4b1f3dad9426`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 1.3 MB (1270202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c794ddf3dfbe3597d43798fc1945e1664fca6859462ba411279efee1359b5f5b`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 12.3 MB (12326249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f983deeeb561ef14ee4fc979f0b49a44a4ba1f9914e2323763bc5552ddc6fb`  
		Last Modified: Thu, 05 Nov 2026 08:05:00 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8be7f249016b89e7aba1d0cb40777f7e9fa0464729cf9e5fa01a755db1f989`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 7.3 MB (7336274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377699b3715f643c0e1270fb6bb4b96668fe3f7685824f9108f96853aac08f53`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 28.4 MB (28421493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00dd942fb8daa6c95bfb865ccdae6943abf7f42eb77cecd22e615a7b131a6d24`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 10.5 KB (10456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45129fbe13064f8367df33db6705e33fe8c48e86dc1e72efe28b02d7459da7`  
		Last Modified: Thu, 05 Nov 2026 08:46:34 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `satosa:trixie` - unknown; unknown

```console
$ docker pull satosa@sha256:f7df41ede1f4ea86a5941f7d14e6f54877ef38c062d3cd9a7f5c7da0c6beee0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2369419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8f1cb57d2a9aa3fc8acbb5a8e90d640d15f5541a363735da241b0c94169f9cd`

```dockerfile
```

-	Layers:
	-	`sha256:09af14b7bf496d016b3ee75f8d0b41b5e8ec5eedf7584aa8d3a5cf9648f7c538`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 2.3 MB (2347110 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:576da263c2a1927d3ccff6b6d547707c365b90b973aa40577307cc15912aa4bd`  
		Last Modified: Thu, 05 Nov 2026 08:46:35 GMT  
		Size: 22.3 KB (22309 bytes)  
		MIME: application/vnd.in-toto+json
