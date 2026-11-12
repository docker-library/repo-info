## `postgres:alpine3.23`

```console
$ docker pull postgres@sha256:915a515d6fb36f80e24121fa80e1c0f3126c08ef84c51d3e258e9a008387ce8c
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

### `postgres:alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:dd184ca027e2d1f5e3d50413b9fb8345414b46c2775cbf963009fec7b15e4922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119755951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:daf76e38f295a36a6d86cb750cacc7a8c453378102daca940e4ddd2e34063d82`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:54:01 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:54:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:54:01 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:54:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:54:01 GMT
ENV PG_MAJOR=18
# Thu, 12 Nov 2026 20:54:01 GMT
ENV PG_VERSION=18.7
# Thu, 12 Nov 2026 20:54:01 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Thu, 12 Nov 2026 20:54:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:39 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:39 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 12 Nov 2026 20:56:39 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:39 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:39 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60984e654e024b711528c0dcdf8d39f3b32204df7534532636db828fa5d1ccac`  
		Last Modified: Thu, 12 Nov 2026 20:56:55 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7355b068e611e114086309efe3edab76134ce0c42e9a7797f81e2baab73bbfa4`  
		Last Modified: Thu, 12 Nov 2026 20:56:55 GMT  
		Size: 900.0 KB (900020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c0c1eb4eaa11d8eed3abac83be4498b2cd0919eff6da1c27e34faa07cdb230`  
		Last Modified: Thu, 12 Nov 2026 20:56:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55883515544e3af8e7ae5a9f5f663da499fd79709e844ec07053155785e2aa02`  
		Last Modified: Thu, 12 Nov 2026 20:56:58 GMT  
		Size: 115.0 MB (114976825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebef639a043534d26c80bd5cb77f18e93c333fb50b638eee3a68db2edbae1da`  
		Last Modified: Thu, 12 Nov 2026 20:56:55 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dcdfb9c9e5868875b517a01f0a9cdcaed4417b04255727f434b3f6ddfc147ea`  
		Last Modified: Thu, 12 Nov 2026 20:56:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80b11612e85e832a87fd08a749c5d7aec91a3577fc3b555276d8d3a3c9613a3d`  
		Last Modified: Thu, 12 Nov 2026 20:56:56 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88257aee848ea0987e53b4bf27e3bffd10d75202e88bbd07c9d0611ad52f9090`  
		Last Modified: Thu, 12 Nov 2026 20:56:56 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:5197363ba29734586363599147dfa17573316c8841733caa37b62f8b3f3fede1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.5 KB (656502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab6262359f09faa4a5ae8e4c4e1ec1ed6836fd49438e73eaa0e90a7f0ea6a53`

```dockerfile
```

-	Layers:
	-	`sha256:4dc5db0578d9def922ca19da59b1c7a3d92a30c9e2546bc7b9f9cd601f3ff789`  
		Last Modified: Thu, 12 Nov 2026 20:56:55 GMT  
		Size: 616.4 KB (616376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2b109e976d081d51d814d3e7c30ac7fb6d0e35204b1e626cb059bf328ccf423`  
		Last Modified: Thu, 12 Nov 2026 20:56:55 GMT  
		Size: 40.1 KB (40126 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:8479c710a1f4b4fb60b2274600dbe624746222902ed65721cf753ac5298d843a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115920026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7efc1ca8c6393e1defbcb51b55355edd1a9cdfd9f33005960b82cb634cebb07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:27 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:30 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:30 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:30 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:30 GMT
ENV PG_MAJOR=18
# Thu, 12 Nov 2026 20:53:30 GMT
ENV PG_VERSION=18.7
# Thu, 12 Nov 2026 20:53:30 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Thu, 12 Nov 2026 20:53:30 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:23 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:23 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:23 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 12 Nov 2026 20:56:23 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:24 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:24 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01f6f9b34043be7d35ced85b45490cf1fca615f5bcfc8684343efc2f8280aa34`  
		Last Modified: Thu, 12 Nov 2026 20:56:36 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83bd1ed7d3090ce91dbbfed91b7382cc185dbe2f9782226edeac86bb543d1b9`  
		Last Modified: Thu, 12 Nov 2026 20:56:36 GMT  
		Size: 864.5 KB (864516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e62d0f9aa2b1866939640fa62fb452e220d7696438acaf6e9babba2d3a9695f`  
		Last Modified: Thu, 12 Nov 2026 20:56:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4594cdab9afa4875d59fe6e8fc839bdda94928def17bb3ca60fee5e474c98862`  
		Last Modified: Thu, 12 Nov 2026 20:56:39 GMT  
		Size: 111.5 MB (111470747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c45edb37154c50f1d0a4dab84168309895fc1d8c1b2e8c261d2c039469a853f7`  
		Last Modified: Thu, 12 Nov 2026 20:56:37 GMT  
		Size: 19.0 KB (19008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc7be91ea8837b19a5c9cb1f7a3f48d5bca03a3fdc55690b70ee37ab4eeb7b3`  
		Last Modified: Thu, 12 Nov 2026 20:56:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6bb53aaadc74600288949ad9934c693bce3ecb779960c08d34b1898d0221799`  
		Last Modified: Thu, 12 Nov 2026 20:56:38 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0d245c4324cab9232f6c73123d75cf21986247ba9c25ad8a6d684d2e6aa8db`  
		Last Modified: Thu, 12 Nov 2026 20:56:38 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:dacd520153ea551d68e24274b1a570107ef78cbda8d00c0de3c39ac7294a2452
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.1 KB (40061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c23495c709a0b31ee8a68bfd20634b29f9920fd8c193971ecf37c9c2c889a080`

```dockerfile
```

-	Layers:
	-	`sha256:8c400d32b0155b0801cd343fe4de8a5e8ce8dc05b1644453a5e2b66b0cd13ec1`  
		Last Modified: Thu, 12 Nov 2026 20:56:36 GMT  
		Size: 40.1 KB (40061 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:6106cf8a2cff2fe095d075307a7950a0342a1aeb8080b18f139236e534732c63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109464458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7109b31e7e82b0c5181537d8819aac65674226d581477551e07b184050ff709`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 21:06:57 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 21:07:00 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 21:07:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 21:07:00 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 21:07:00 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 21:07:00 GMT
ENV PG_MAJOR=18
# Thu, 12 Nov 2026 21:07:00 GMT
ENV PG_VERSION=18.7
# Thu, 12 Nov 2026 21:07:00 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Thu, 12 Nov 2026 21:07:00 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:09:52 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:09:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:09:52 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:09:52 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 12 Nov 2026 21:09:52 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:09:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:09:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:09:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:09:52 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:09:52 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:09:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263ed8d8ea63be9aa6e6ddfa27f3d37010a073ff9ef3fa03c2d96ad763c9cddd`  
		Last Modified: Thu, 12 Nov 2026 21:10:05 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44252939b1ef25acae0212bd71638a24113c4c08ba4a9c7a338f6cb4d18f850d`  
		Last Modified: Thu, 12 Nov 2026 21:10:05 GMT  
		Size: 864.5 KB (864526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57fc33d8a84df2a2f3dee81b7d915f6697e3d7e5e2738df806be0c6891c1cb7d`  
		Last Modified: Thu, 12 Nov 2026 21:10:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bec317c8dc66b4b91224e8b17ededdcf7a83a02a78eddc44af9bfeded23e247`  
		Last Modified: Thu, 12 Nov 2026 21:10:08 GMT  
		Size: 105.3 MB (105306588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cf183ee5801ac8e8fcb087ac648497e43c0b1426e6aa65c2d5d47b409632fda`  
		Last Modified: Thu, 12 Nov 2026 21:10:07 GMT  
		Size: 19.0 KB (19011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3b07503f0186d2824daa2ffa76e6ce2517b65a0d7e36def5693cf4e5b794de`  
		Last Modified: Thu, 12 Nov 2026 21:10:07 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f972787592e8f3cfc92e9dacfbc3f30e3aa187c871836384be1e18d26344101`  
		Last Modified: Thu, 12 Nov 2026 21:10:07 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78b6e8e04d4284c07f2fdbb7156fd66aae0bf275418ef82cef2882119eebb1e`  
		Last Modified: Thu, 12 Nov 2026 21:10:08 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:2a3be8928a61888d782ead3b0d596f32a0b835e3e169ba2b203f9592ec416827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.0 KB (656030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e047c9df7262740f336b123d4bf8c4988b2e0cbe947ab7d28b21a114e4a49788`

```dockerfile
```

-	Layers:
	-	`sha256:a1cafc863227d036d0ee92aa0b71f87e2a44d26f79c61eeb6a8e701a020dfe51`  
		Last Modified: Thu, 12 Nov 2026 21:10:05 GMT  
		Size: 615.8 KB (615754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c233fdc80ed7a4ac420447cfa5182c7ae0910d4ec0fbbe91462a944e95ba6513`  
		Last Modified: Thu, 12 Nov 2026 21:10:05 GMT  
		Size: 40.3 KB (40276 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:76da2942eac2c9deddc1f34badf82ffc87262ec7bd2bb0afaf24f5da95855f6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117577594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3f8153762eb95f9c2b5ddd1b93f378a72343decf23913e1cf5b6321b8ddb3f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:55 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:58 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:58 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:58 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:58 GMT
ENV PG_MAJOR=18
# Thu, 12 Nov 2026 20:53:58 GMT
ENV PG_VERSION=18.7
# Thu, 12 Nov 2026 20:53:58 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Thu, 12 Nov 2026 20:53:58 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:27 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:27 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:27 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 12 Nov 2026 20:56:27 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:27 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:27 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:27 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:27 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:27 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b228c39a14bb8b927b40494025f971cf07bf15fba3d445cbf1aab4fb8264464`  
		Last Modified: Thu, 12 Nov 2026 20:56:42 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f207eabd2700dc6a3c48d8c87cdb61ea635563309b0d85cd1526beb13aa750`  
		Last Modified: Thu, 12 Nov 2026 20:56:42 GMT  
		Size: 852.0 KB (852046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:493a12c92ee28ed253a01bf25aed74f92c74300100f6f0db8b3828bb8a45dd2f`  
		Last Modified: Thu, 12 Nov 2026 20:56:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604ec8b8d2af348c03be53d6791fe0b8137ab933f4c12b72804d571dac982668`  
		Last Modified: Thu, 12 Nov 2026 20:56:45 GMT  
		Size: 112.5 MB (112508809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424373304247035892a73a5da7fa77d151336c534b1692d3d51364399fe1c49e`  
		Last Modified: Thu, 12 Nov 2026 20:56:43 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d785328ae2cf0be11725c284a899faad80453237f6eb3abab038373b17226bbe`  
		Last Modified: Thu, 12 Nov 2026 20:56:43 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae954a0d49ca4524b7070299f4d98b4053be400a7dbf56161b4a1aa26da1542d`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c521402af19a2571aa91fd4c433d9c347a9d4f6f8242fc95dede8f64e4bdfb`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b2fcb399a1cf14c54ffd452546e603df69f629bf98da35628b8e29b2720be456
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.1 KB (656078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91cdea9863aa404c13fae90762fba9b94548843d8912e8c613c15f2f0c6b6061`

```dockerfile
```

-	Layers:
	-	`sha256:18deb1b9b2867ab47d526da010e1669495d2f3b76beb07a077c7fb30bd96266e`  
		Last Modified: Thu, 12 Nov 2026 20:56:42 GMT  
		Size: 615.8 KB (615770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1e9163acc3a04b826fe9338d371daa38c3292619751c1dba68caf7d03b5d8f6`  
		Last Modified: Thu, 12 Nov 2026 20:56:42 GMT  
		Size: 40.3 KB (40308 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:51c79022de38bd5e7e92fe9f78f7cf7d11f4a6c076b8ba245c200326aa1ecd2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126559381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ecd67ba70ebd72385da368f2ab446084b93c95980701f53af4682789052d25`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 12 Nov 2026 20:53:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 12 Nov 2026 20:53:55 GMT
ENV GOSU_VERSION=1.19
# Thu, 12 Nov 2026 20:53:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 12 Nov 2026 20:53:55 GMT
ENV LANG=en_US.utf8
# Thu, 12 Nov 2026 20:53:55 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 12 Nov 2026 20:53:55 GMT
ENV PG_MAJOR=18
# Thu, 12 Nov 2026 20:53:55 GMT
ENV PG_VERSION=18.7
# Thu, 12 Nov 2026 20:53:55 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Thu, 12 Nov 2026 20:53:55 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 20:56:28 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 20:56:28 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 20:56:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 20:56:28 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 12 Nov 2026 20:56:28 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 20:56:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 20:56:28 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 20:56:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 20:56:28 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 20:56:28 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 20:56:28 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2525a34656336d28d8b21c75f1a94b075958141db52e36ae45b241635990a6e5`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a149c7f1f2d8a18ff966adccd7aa94b919281b0cdfd78ce83ff90b92097ecffc`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 868.1 KB (868052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e01f215ec52b08912275bf25711ee0d9d99d53d11e295f1cfe3dee33e08e922`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72a7af3ccbaf02d0a4cdf71eb2f0b54b23fdb1ca55490e938a2d710dacef054`  
		Last Modified: Thu, 12 Nov 2026 20:56:47 GMT  
		Size: 122.0 MB (121986241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330c31c2eaa440c0dde5e04af2d8666f8b32672673f081991d2dae7fcf8a97ac`  
		Last Modified: Thu, 12 Nov 2026 20:56:45 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03660ada09aae0f103dd53a0ed28532ff7162ee5dff5fdc902640d7678f8b596`  
		Last Modified: Thu, 12 Nov 2026 20:56:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1acc3c8403fbe192f48ccf169baaa1eba7cdac678bbd5c4e030c9c48d489af5b`  
		Last Modified: Thu, 12 Nov 2026 20:56:45 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12cd3f3fb52dcd3d394e1d411f7cb6a17a94bf019e5c10f3b2746b5870bb540`  
		Last Modified: Thu, 12 Nov 2026 20:56:46 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:06f438c595c29abe592d726e17c4e7b01a30a565a20d3bb7851b6f08e627aefa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **656.4 KB (656442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbde0728c2fbb46791c7023b4eda82b799deaefc1b1698d875d11b64d0949b9b`

```dockerfile
```

-	Layers:
	-	`sha256:76e0dea5ebb5a726f4713682437ffdc932a9fe5cff8b92098af6cc759f8ff5e9`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 616.4 KB (616356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9ab55ada53f42f5cea4711049a2badfe9b929d5f87d7e9c191a2d7bc7950969b`  
		Last Modified: Thu, 12 Nov 2026 20:56:44 GMT  
		Size: 40.1 KB (40086 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:d69411a6090c594a09e4a45380eccc9126e6229580d8ce707c31a4c313d33fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122722992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06de65ba2dc63196cdc098fd78b7c4b3be42fbbcfe462977a95b03813d4c070`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 22:53:28 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 22:53:32 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 22:53:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 22:53:32 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 22:53:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 22:53:32 GMT
ENV PG_MAJOR=18
# Thu, 05 Nov 2026 22:53:32 GMT
ENV PG_VERSION=18.7
# Thu, 05 Nov 2026 22:53:32 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Thu, 05 Nov 2026 22:53:32 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:14:33 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:14:34 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:14:34 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:14:34 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 12 Nov 2026 21:14:34 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:14:35 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:14:35 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:14:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:14:35 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:14:35 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:14:35 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071198e7a6c5bc35e8684057b10d5e2ab20dd5b6b0ba5724546a6330c1a09e5b`  
		Last Modified: Thu, 05 Nov 2026 22:58:23 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb559504d9116e508da7fcc2c8bb6977ad36affaf739b312588aeacc98bef42e`  
		Last Modified: Thu, 05 Nov 2026 22:58:23 GMT  
		Size: 857.2 KB (857217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f704b55547b274191b98a94b3fc1b1d255ee05a8b8969750310c1bf4e29b9c71`  
		Last Modified: Thu, 05 Nov 2026 22:58:23 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2fe09262be6f40fe2b17b3b92d6a8218b9e07174efa58d07ea09f13c924a035`  
		Last Modified: Thu, 12 Nov 2026 21:15:41 GMT  
		Size: 118.0 MB (118020241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193812cfa2915c20f7bff9c0917d28c66d6cfaa253b7130bf808cc4e88fb238c`  
		Last Modified: Thu, 12 Nov 2026 21:15:38 GMT  
		Size: 19.0 KB (19018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972c349d6bf9a1d2d1661ff52deb1190bbb92cdf6aa2a4c5c765bc45549d48a4`  
		Last Modified: Thu, 12 Nov 2026 21:15:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58cf1abe7bd714a42ecdac1938479e5c2a46dc55e9619a31c284c1fd325ce1b`  
		Last Modified: Thu, 12 Nov 2026 21:15:38 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b93e8ff0894a48f5ca1767458df07df85aba1deec55a383253825928ba1bae1`  
		Last Modified: Thu, 12 Nov 2026 21:15:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6150b82d842fd1109530aa0faf3a7c04eff5186f5917a10c5521e8ca32419bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.3 KB (654267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f392154de489c39a1554657ac1bdf6bc4394dcb8b02f494bd317b8de96e80e85`

```dockerfile
```

-	Layers:
	-	`sha256:bdf15e1b144e137e49f70a712296d9a0613d4dd1f8d2246fb8040ca2f1cc6631`  
		Last Modified: Thu, 12 Nov 2026 21:15:38 GMT  
		Size: 614.1 KB (614091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c70bd369a14d6517ad8e6a157e235bfe396f957ef8659f9264196ac91fb5e999`  
		Last Modified: Thu, 12 Nov 2026 21:15:38 GMT  
		Size: 40.2 KB (40176 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:6aaa0f7cb87a243d64c524268e4aed190149695d81371138be73a6b4868fb02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122112632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08237036dfd5778a3a937a638550b3a913be2d3f5b05b07e883054a0b76a923`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 08:23:14 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 11 Nov 2026 08:23:25 GMT
ENV GOSU_VERSION=1.19
# Wed, 11 Nov 2026 08:23:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 11 Nov 2026 08:23:25 GMT
ENV LANG=en_US.utf8
# Wed, 11 Nov 2026 08:23:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 11 Nov 2026 08:23:26 GMT
ENV PG_MAJOR=18
# Wed, 11 Nov 2026 08:23:26 GMT
ENV PG_VERSION=18.6
# Wed, 11 Nov 2026 08:23:26 GMT
ENV PG_SHA256=555610c24d53e4316da5b7d3fc25c279d96856d5e0e23ee308c328c5fa881d9f
# Wed, 11 Nov 2026 08:23:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 11 Nov 2026 11:18:27 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 11 Nov 2026 11:18:28 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 11 Nov 2026 11:18:28 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 11 Nov 2026 11:18:28 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 11 Nov 2026 11:18:28 GMT
VOLUME [/var/lib/postgresql]
# Wed, 11 Nov 2026 11:18:28 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 11:18:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 11 Nov 2026 11:18:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 11:18:29 GMT
STOPSIGNAL SIGINT
# Wed, 11 Nov 2026 11:18:29 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 11 Nov 2026 11:18:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13c2749923b9e8ed5f827f94ca4f0b0f0870f61011a9ae745b3916ded7e85852`  
		Last Modified: Wed, 11 Nov 2026 09:22:09 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f948ca450048c06e160bf303171f98b9946df3f241215111e600f9cb1f87632c`  
		Last Modified: Wed, 11 Nov 2026 09:22:09 GMT  
		Size: 844.7 KB (844720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c759d03526a7fb23dabbefd994c2c3a510bd741c4ac90890f560ee10047b3496`  
		Last Modified: Wed, 11 Nov 2026 09:22:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb4f93847c49464a2170e0ee44f2abfc135d37c7675f6809dd29532a5528cc4`  
		Last Modified: Wed, 11 Nov 2026 11:22:03 GMT  
		Size: 117.7 MB (117661263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:384b8f55a9a6753f11e5589a1a9dad8219137b76a814b8d509677bc0e65b0b97`  
		Last Modified: Wed, 11 Nov 2026 11:21:45 GMT  
		Size: 19.0 KB (19013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd20aa124133beae835d2fa6104b81deb139eb0cd15ee22dfbf8e70d58a25983`  
		Last Modified: Wed, 11 Nov 2026 11:21:45 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eae80c6f25135365edabbdfb97f1240e58683f0b04e566b55ee5e90fdfe0c4d`  
		Last Modified: Wed, 11 Nov 2026 11:21:45 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1059baba0339ade8832a7036d528c71af40aefb602b6df62c8e8fadabaf35b93`  
		Last Modified: Wed, 11 Nov 2026 11:21:47 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:32140c1a1df36e91a28f18505c7d66f36bf31283f95f5478535f71a60ede4c2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15916bdb65207f29ffa47cca7ac544e1f7dc4d70a3b8682171476a643cee63fc`

```dockerfile
```

-	Layers:
	-	`sha256:c658cf3a7257b7f41d802e8e1c6299b20653e6b31565a9bfd647096eb4383d13`  
		Last Modified: Wed, 11 Nov 2026 11:21:46 GMT  
		Size: 615.7 KB (615749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9d279ae823ba32d29f7c1378537471b273770b5dd2a04d4f5075ddfbc9b831f`  
		Last Modified: Wed, 11 Nov 2026 11:21:46 GMT  
		Size: 40.2 KB (40176 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:8d64396f2ba983c2eff345cc684061946f66caa516003e735768b365f786141a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126337955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b00e9688eb33957415b99135cb4054ce39e308d274d84363d4518e020410c7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:56:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:56:05 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:56:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:56:05 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:56:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_MAJOR=18
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_VERSION=18.7
# Thu, 05 Nov 2026 18:56:06 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Thu, 05 Nov 2026 18:56:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 12 Nov 2026 21:01:14 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 12 Nov 2026 21:01:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 12 Nov 2026 21:01:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 12 Nov 2026 21:01:14 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Thu, 12 Nov 2026 21:01:14 GMT
VOLUME [/var/lib/postgresql]
# Thu, 12 Nov 2026 21:01:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 12 Nov 2026 21:01:14 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 12 Nov 2026 21:01:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 21:01:14 GMT
STOPSIGNAL SIGINT
# Thu, 12 Nov 2026 21:01:14 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 12 Nov 2026 21:01:14 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23392f00b42ded9769f724a44617cba4f1fc3627256d4f9963958ab2b957f045`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d772e6aa8962e2e52ca1e1b45dfa9444c8eda769027973f1976557c204a518`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 874.2 KB (874226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cc501d30e5371cc3683d955500c83da4b3a7694cafbb1433dfc0fa9fcb735c`  
		Last Modified: Thu, 05 Nov 2026 19:00:18 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de0aa034d230adb6baf528cda7fde7a442e151dbf94402e86591e81ec6f850d`  
		Last Modified: Thu, 12 Nov 2026 21:01:49 GMT  
		Size: 121.7 MB (121718862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0ca35f4429f0d81e1d638e94eb5a3c0c1862268ed687afffcd38e2e0bcffa9`  
		Last Modified: Thu, 12 Nov 2026 21:01:45 GMT  
		Size: 19.0 KB (19009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb3782fbb24e79f3be6deb823c5665b8df779fb3e9cc6cf7f85feabca1e5b2f`  
		Last Modified: Thu, 12 Nov 2026 21:01:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5e4bcf5a9aeaefe45a7f798390a7448ba220ca0c035b05e7045acf4ca4e631`  
		Last Modified: Thu, 12 Nov 2026 21:01:45 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313bf73a9d428552475f1694550f097f33e118ae16f1cf57c4b81765b2ec911e`  
		Last Modified: Thu, 12 Nov 2026 21:01:47 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:2a73cb760f1935f72d2507b2bfd3bc6ebb0f317c955bd916661462ce073fbf05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed8d74cdb24c7797b29b70c5c9b559d45ae8f1997c48b8d51382962bb7bcc99a`

```dockerfile
```

-	Layers:
	-	`sha256:8669a9d03c86baf72de2cb1b727419fca37de7eb6b5ec6e405f9051bcdeafbdb`  
		Last Modified: Thu, 12 Nov 2026 21:01:45 GMT  
		Size: 615.7 KB (615725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1dd95f47b91f7161e66373b83429a20f31e76a6c74b225d14324f17d3afb6047`  
		Last Modified: Thu, 12 Nov 2026 21:01:45 GMT  
		Size: 40.1 KB (40126 bytes)  
		MIME: application/vnd.in-toto+json
