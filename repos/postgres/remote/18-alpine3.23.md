## `postgres:18-alpine3.23`

```console
$ docker pull postgres@sha256:339a86bf416979bb4d3d2e30a1f9e096e7302564faff4151b804cf53463059d5
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

### `postgres:18-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:e3e4bb0e8e79a27c00ae2e3c9af7893fab214df6d98b145ad8e3623fe060496e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119756714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb09e8e8158643bf8fa23bb6ef40355b3bccb74d1bf1b8d44aca1ccf9b867d51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:13 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:16 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:16 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:16 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:16 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 21:29:16 GMT
ENV PG_VERSION=18.7
# Wed, 18 Nov 2026 21:29:16 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Wed, 18 Nov 2026 21:29:16 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:29 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:29 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:29 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 18 Nov 2026 21:31:29 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:29 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:29 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:29 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:29 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b94523846a36e591deb6575955d81466950f8e5c8ed40da197950cd26e0e039`  
		Last Modified: Wed, 18 Nov 2026 21:31:45 GMT  
		Size: 997.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2300cc72de0b83b1b1bb3a55d7756ba6de1a80aacb5d9dcfb81b6d2f62063956`  
		Last Modified: Wed, 18 Nov 2026 21:31:45 GMT  
		Size: 901.1 KB (901104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3058bdafdbabb11a3517ec92f9d04139924b28ae17efb599628a8bafbcd5928f`  
		Last Modified: Wed, 18 Nov 2026 21:31:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f7e2a1bb06dc608dca796058ee33f0eb6b6c299c1df183ae1a2015f62be3abc`  
		Last Modified: Wed, 18 Nov 2026 21:31:48 GMT  
		Size: 115.0 MB (114976609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c803bd0c21751b7fffbc2841f3023ed463f8fea66a0747f34a4446585edd62fb`  
		Last Modified: Wed, 18 Nov 2026 21:31:46 GMT  
		Size: 19.0 KB (19008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f6911557ac95134f620c660abed3010b16b5cbc0ead8a0bce8b4793de27b7b`  
		Last Modified: Wed, 18 Nov 2026 21:31:46 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86204a5348f4a11c710294aeff3fe418273398ff273ae22e0eff0fcded58ee93`  
		Last Modified: Wed, 18 Nov 2026 21:31:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:ee2ea2c89108787bf9da806deb0d617efd82ab58bec9f1a5deb1e6b6c98a7d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.8 KB (654801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5826209a8f1429ca9f754d560dda14b27b73fff499fbe9b88c713f82db74ee`

```dockerfile
```

-	Layers:
	-	`sha256:ca1e91ecf961e393fe2a91221aac7b7957c679084ecfb3e40d70a78a46f38f50`  
		Last Modified: Wed, 18 Nov 2026 21:31:45 GMT  
		Size: 616.4 KB (616376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb494a9c58acf7f7b8fec74341754af36ee3ff8c4c01e1e4996de4754acb6e9d`  
		Last Modified: Wed, 18 Nov 2026 21:31:44 GMT  
		Size: 38.4 KB (38425 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:ac801e77a50dadff8e53fdd876232d649bb8535abe6c3cc21bccc7f7ecd69598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.9 MB (115920505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:428ff66bd8b71e92800245903bb7d44544732b07752028ffb6859cc6dfe65e33`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:28:22 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_VERSION=18.7
# Wed, 18 Nov 2026 21:28:26 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Wed, 18 Nov 2026 21:28:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:34:39 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:34:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:34:39 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 18 Nov 2026 21:34:39 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:34:39 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:34:39 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:34:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:34:39 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:34:39 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:34:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd028fa41cd2875e7696d7f3987d89eaf52c8a44cdb43621c6acb3855bdee32`  
		Last Modified: Wed, 18 Nov 2026 21:31:39 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5668ae2832f4ecf50d48b0b53e4805c76c442c045000b4b03b6846af9dbe4d3`  
		Last Modified: Wed, 18 Nov 2026 21:31:39 GMT  
		Size: 865.4 KB (865403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dc7785754370ff76a3f2bf76d1ff2b08e170bd66611d13cdc69ca4220cb6a4`  
		Last Modified: Wed, 18 Nov 2026 21:31:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb4cd2dad24364cef3c879046345735291d1694659c6d470e06089988e53985`  
		Last Modified: Wed, 18 Nov 2026 21:34:54 GMT  
		Size: 111.5 MB (111470450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9d60e04793f8f8989240534982831300871cb7d46f5412b9a5ba5b5df162c1`  
		Last Modified: Wed, 18 Nov 2026 21:34:51 GMT  
		Size: 19.0 KB (19007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0564287797388d5c332eaf931a315b40819be24338c3c063faab2ba02341b5`  
		Last Modified: Wed, 18 Nov 2026 21:34:51 GMT  
		Size: 6.1 KB (6100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ae7ce458069dcbaf023c009ddce5b172d546461664167743d3fe0e25422604`  
		Last Modified: Wed, 18 Nov 2026 21:34:51 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:53fe803f3c6ef73bfb687b48bb457c47835cf8d618516180b6b3a1b106e5b4e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1313e7559105ef90253af7e1f59709da2d038ec65088e0540d39091b17a23364`

```dockerfile
```

-	Layers:
	-	`sha256:f1ce97f1268bff5d7e23b94742ae59fccc77ee41c97c3e730777d9b0a7924cc0`  
		Last Modified: Wed, 18 Nov 2026 21:34:51 GMT  
		Size: 38.3 KB (38347 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:64b8d8cbf015bf0a8ba3a7caedec77bd2a8fe9acd163f9498528ca7e47577968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109465541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ca792df93214ce4299d3b70a77adba1469026915c1be0092e7215f321c58b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:41:10 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:41:13 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:41:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:41:13 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:41:13 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:41:13 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 21:41:13 GMT
ENV PG_VERSION=18.7
# Wed, 18 Nov 2026 21:41:13 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Wed, 18 Nov 2026 21:41:13 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:44:00 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:44:00 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:44:00 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 18 Nov 2026 21:44:00 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:44:00 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:44:00 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:44:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:44:00 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:44:00 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:44:00 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5602ca06e3f711ef3c95c07ea8ec1f733055e5d51d4e587f26af7d92a93e6a5b`  
		Last Modified: Wed, 18 Nov 2026 21:44:13 GMT  
		Size: 997.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0accc3865ea90fde9485d1058b3145dff141ca0f05b97744b8775275b03d0137`  
		Last Modified: Wed, 18 Nov 2026 21:44:13 GMT  
		Size: 865.4 KB (865405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de59215804705e2153b5446f42b7a7c6174520ecdbb89b397d0fa816b1662a85`  
		Last Modified: Wed, 18 Nov 2026 21:44:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8673e812aaa4214c5b2dcbc414114d8f3dcb8ec4f564a080522d5b714f7a35ba`  
		Last Modified: Wed, 18 Nov 2026 21:44:16 GMT  
		Size: 105.3 MB (105306895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22081c95409022b2f636d5afe8ecf6b11b446b94b648205ca7ebe551c3445c26`  
		Last Modified: Wed, 18 Nov 2026 21:44:14 GMT  
		Size: 19.0 KB (19011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5599c050806bcb38b994f21d1a2b9289a5e7e0ef06ebc05ed96d341f8f8a98f`  
		Last Modified: Wed, 18 Nov 2026 21:44:14 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ab402b49946742be2415bc80228c5ab423fe736b42f568b4c1e509a4ab9d7fb`  
		Last Modified: Wed, 18 Nov 2026 21:44:15 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:1a490631073a8e2419540f136561a57d8525a3702b93ad82b7d9976ee5e637d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.3 KB (654316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f688d326be772d8dc2b2c7f55635745c72495cac54faf97ee3cdf120872a6d3a`

```dockerfile
```

-	Layers:
	-	`sha256:6e25ea1f67ea1cee4153e76fc6a76fb195fc302055ec45e270e45ed0179ca04a`  
		Last Modified: Wed, 18 Nov 2026 21:44:13 GMT  
		Size: 615.8 KB (615754 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26e69833720daf9a4739fca2e1c4d84c66b0fab231a6a4b2be580830fc1ef379`  
		Last Modified: Wed, 18 Nov 2026 21:44:13 GMT  
		Size: 38.6 KB (38562 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:8b6d069b32603a59e738bd6fb6be6bb86d9c7fd410f98ec5859fa02e5f604c0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117577869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e053c56124684f78d353018cbfc066bea8b9cca4da50d13732e6c47dd1d3591`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:22 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:24 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:24 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:25 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 21:29:25 GMT
ENV PG_VERSION=18.7
# Wed, 18 Nov 2026 21:29:25 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Wed, 18 Nov 2026 21:29:25 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:31:48 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:31:49 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:31:49 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 18 Nov 2026 21:31:49 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:31:49 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:31:49 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:31:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:31:49 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:31:49 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:31:49 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bc2c7b3ae5cda54600197ccf859b3dfbfac869087e3c8dc5697c352d3738606`  
		Last Modified: Wed, 18 Nov 2026 21:32:04 GMT  
		Size: 997.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917c10d3f3061278b29f5ebece8b357f8e1a96140183b89ccc79225ddf8c1601`  
		Last Modified: Wed, 18 Nov 2026 21:32:04 GMT  
		Size: 852.8 KB (852821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77f9a0500e9c0004b4457143f5e9f3918d0407a9f13acc3d2274c3660d72967`  
		Last Modified: Wed, 18 Nov 2026 21:30:03 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab05a51a35980b773d42066e868398caecc56c3fc28b9e9be075be30ad606298`  
		Last Modified: Wed, 18 Nov 2026 21:32:07 GMT  
		Size: 112.5 MB (112508413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bced5405d0f3ebbf6cb32cda76dfee45f27f6f6d55ae688e1b2ba68041e5a98e`  
		Last Modified: Wed, 18 Nov 2026 21:32:05 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba13970c6957952a14f06b6dfccdcea90f384cc04b95703bd27b6d3790880d9`  
		Last Modified: Wed, 18 Nov 2026 21:32:06 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf66c45a7e1f313098053439349514d092a2594c210573058d7f32372eb6dbd7`  
		Last Modified: Wed, 18 Nov 2026 21:32:06 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:8b6ffdb94d9d87da61606982edfd288943f05a00ee0219932fd539e24c6f25fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.4 KB (654362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369da28c77a7dce17757624878d5b9b8ec9a21f6ff35b6239e5f460fac4ff157`

```dockerfile
```

-	Layers:
	-	`sha256:b6f91d90d28c0253252993988fbe62f493a914bed321135d8b77e76f9bc99c08`  
		Last Modified: Wed, 18 Nov 2026 21:32:04 GMT  
		Size: 615.8 KB (615770 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2937a087e54d2335793b618e324ecbcbd39317183315cbb59de8448979ae6776`  
		Last Modified: Wed, 18 Nov 2026 21:32:04 GMT  
		Size: 38.6 KB (38592 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:c8e580d3e2b7530cc6ee75f51a23a77cbebded4aaa72f6912a2444ad4857d602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126561445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48ccdce19c35d4045f8e8993f34cf42e8fcae56b34a0e825f64a868298874ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:28:02 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:28:06 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:28:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:28:06 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:28:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_VERSION=18.7
# Wed, 18 Nov 2026 21:28:06 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Wed, 18 Nov 2026 21:28:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:30:51 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:30:52 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:30:52 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 18 Nov 2026 21:30:52 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:30:52 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:30:52 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:30:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:30:52 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:30:52 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:30:52 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f99188ba7219a5f1952e7cc06556195beb86f9b707a0e82247564aa8bbfb40f`  
		Last Modified: Wed, 18 Nov 2026 21:31:09 GMT  
		Size: 994.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb8ae4b3084a3ad66387640d145da63d00032ee220aeba1607d283641d1ea2cc`  
		Last Modified: Wed, 18 Nov 2026 21:31:09 GMT  
		Size: 869.9 KB (869852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12c10e1f1140f6014ae9647c28234bf579556d138df4bff6d01cc3affe432f9f`  
		Last Modified: Wed, 18 Nov 2026 21:28:52 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f46560f79a2527c52af179f1ccccce4b911539ada8361d6c7cdf38b30582e0e6`  
		Last Modified: Wed, 18 Nov 2026 21:31:12 GMT  
		Size: 122.0 MB (121986604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036f5c0cfed8426292340330b4c779aa752118dbc093c34cdf19ef3fd42f2f6d`  
		Last Modified: Wed, 18 Nov 2026 21:31:10 GMT  
		Size: 19.0 KB (19010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9cd0751c6a1c89d348046f490c5d03487dacc4ce762c8b13dc5dd251b06b1b`  
		Last Modified: Wed, 18 Nov 2026 21:31:10 GMT  
		Size: 6.1 KB (6104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a76ebe84d2301d00757c2bcd76bb73c8c7c733ab084449bcccb9a61099244be`  
		Last Modified: Wed, 18 Nov 2026 21:31:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:4cd8d5608ce4af121039da0d3396cb87023f1eab4fe1e0820944b10a3ecc3fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.7 KB (654744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e022b8523d503c72eb8f2263358951de05a011025c85ebc549bcb2447dfd13`

```dockerfile
```

-	Layers:
	-	`sha256:ad38cce092152998378b49eab1c118a7e91ff365d780defb00e9442a69532555`  
		Last Modified: Wed, 18 Nov 2026 21:31:09 GMT  
		Size: 616.4 KB (616356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6762b7907a54b4494051abfc5634165ac498b2718d5011aa68cfda29b2ae0c4c`  
		Last Modified: Wed, 18 Nov 2026 21:31:09 GMT  
		Size: 38.4 KB (38388 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:2db764a2007d403b46b6e05a30ad0687c5578486eecc514dc95200b3fb160023
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122723589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df48b42e3732b279a5a8db1f3bc5f3306757c92c17f5434ee0b0a9cb7d0998af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 21:29:47 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 21:29:52 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 21:29:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 21:29:52 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 21:29:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 21:29:52 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 21:29:52 GMT
ENV PG_VERSION=18.7
# Wed, 18 Nov 2026 21:29:52 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Wed, 18 Nov 2026 21:29:52 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 21:42:47 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 21:42:47 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 21:42:47 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 18 Nov 2026 21:42:47 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 21:42:47 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 21:42:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 21:42:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 21:42:48 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 21:42:48 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 21:42:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2572512faf44921b4f2e08a12ebfef96eb7e9dbf824bf6c2eaa7c08b58f33dbb`  
		Last Modified: Wed, 18 Nov 2026 21:35:34 GMT  
		Size: 996.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1562691096b268fde369c737d70906fe35f53d520ad6879d78f987fff1021524`  
		Last Modified: Wed, 18 Nov 2026 21:35:35 GMT  
		Size: 858.0 KB (858016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479fd5ff861ee3c29f828ea0dbb98cfb3a2b54e92f476906322ced8c86166a32`  
		Last Modified: Wed, 18 Nov 2026 21:35:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4040f4d464a13450fecb7ec13d8247d2459f1a5046b01ea778e3df9cadc920f3`  
		Last Modified: Wed, 18 Nov 2026 21:43:29 GMT  
		Size: 118.0 MB (118020156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a7953207ab5a345b244f8152dd070b2ef8db829d16ca6de10c728c751036f8`  
		Last Modified: Wed, 18 Nov 2026 21:43:26 GMT  
		Size: 19.0 KB (19014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ad1274d6f19f6847545e2311c61b34fd7b86ee98dbbee429f7f1a1f9ae80ff`  
		Last Modified: Wed, 18 Nov 2026 21:43:26 GMT  
		Size: 6.1 KB (6101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d88a578eeae66b12c576f26d5b15acb6fb43702ae81212952d5fc880c2b9a9b`  
		Last Modified: Wed, 18 Nov 2026 21:43:26 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:7f1a0b4e3549ca1d3762cc86cbfbd90aa90e283519a84ae28107c0deda21f86a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.6 KB (652564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d990f8093bd8f1c11058690ac282a9d7bc3608e82ba8898e2a9c6aab3126db12`

```dockerfile
```

-	Layers:
	-	`sha256:5390ce18cd0ef7674507ac600293014335287f29b43d93dd61d9c975a39d7e83`  
		Last Modified: Wed, 18 Nov 2026 21:43:26 GMT  
		Size: 614.1 KB (614091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50ec44db4a9d4624320b2d8c600b6a9beb24bb7372d4fde0a06fd7e8bca62460`  
		Last Modified: Wed, 18 Nov 2026 21:43:26 GMT  
		Size: 38.5 KB (38473 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:f1da9734808010a2e22236411e04c692df1ba7c8cabc670bb8416b78032ce090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.2 MB (122219768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94326447d2f630a348a769b0cd3666f6504c1a164dd34aadb86407ac6a61a66d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Sat, 21 Nov 2026 15:19:33 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Sat, 21 Nov 2026 15:19:46 GMT
ENV GOSU_VERSION=1.20
# Sat, 21 Nov 2026 15:19:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sat, 21 Nov 2026 15:19:46 GMT
ENV LANG=en_US.utf8
# Sat, 21 Nov 2026 15:19:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sat, 21 Nov 2026 15:19:46 GMT
ENV PG_MAJOR=18
# Sat, 21 Nov 2026 15:19:46 GMT
ENV PG_VERSION=18.7
# Sat, 21 Nov 2026 15:19:46 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Sat, 21 Nov 2026 15:19:46 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sat, 21 Nov 2026 16:13:17 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sat, 21 Nov 2026 16:13:18 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sat, 21 Nov 2026 16:13:18 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Sat, 21 Nov 2026 16:13:18 GMT
VOLUME [/var/lib/postgresql]
# Sat, 21 Nov 2026 16:13:18 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sat, 21 Nov 2026 16:13:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sat, 21 Nov 2026 16:13:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 21 Nov 2026 16:13:19 GMT
STOPSIGNAL SIGINT
# Sat, 21 Nov 2026 16:13:19 GMT
EXPOSE map[5432/tcp:{}]
# Sat, 21 Nov 2026 16:13:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52145500990c5fc0edd56beddab46bdbe28c66e96ccb0ceb9e9e9f49807650d`  
		Last Modified: Sat, 21 Nov 2026 16:16:26 GMT  
		Size: 998.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154cce95e0aab987fbb7f039bd9ec698c89f0bd420398649c1fdf94d7d423dba`  
		Last Modified: Sat, 21 Nov 2026 16:16:26 GMT  
		Size: 845.5 KB (845524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077961011a6ccb48ff28c022e342c67316e96e179e9d1aaa40f25dda9eae8d7f`  
		Last Modified: Sat, 21 Nov 2026 16:16:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba16cd48bc77d72ced8dbe35488d095e236de40dfa02d048bb434feacbc4a08b`  
		Last Modified: Sat, 21 Nov 2026 16:16:44 GMT  
		Size: 117.8 MB (117767689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:186e60a08a19459ab444625c1a894816fea5edcd7836fc9e446d43ecac12cd8a`  
		Last Modified: Sat, 21 Nov 2026 16:16:28 GMT  
		Size: 19.0 KB (19017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8b22ec8494057fb3b70f0a240067357f7d2a70d26f0b09a68c9bb1ab2b61ca`  
		Last Modified: Sat, 21 Nov 2026 16:16:28 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efec2f394086f422e0a416bc5d4b5476365007058f3c1cef3fc4b6a6410de234`  
		Last Modified: Sat, 21 Nov 2026 16:16:28 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:d4b1bf24bea3478e74f11cb7ff460714b7c3bb19d840ca17f6e2db69065d87e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd620192bdfe69a6f9d991d0fcf51f2adb6440b4ab27f10df02f251c08c804c6`

```dockerfile
```

-	Layers:
	-	`sha256:6193a4348cb592d22c78c820fa7464227666050155c16d3ec7d6ada0de89b040`  
		Last Modified: Sat, 21 Nov 2026 16:16:27 GMT  
		Size: 615.4 KB (615433 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a09c9e50dbf6923153c66a10d4bc21af9fd8b97a6c8f3812bc42f4a1a0ad47f`  
		Last Modified: Sat, 21 Nov 2026 16:16:26 GMT  
		Size: 38.2 KB (38157 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:18-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:3d8a0047fce16c307c32085265b09238ead58d8010f7feb40c143e4fce4744bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.3 MB (126339259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb6bfe25b976d016710f1136f8bc9ca5dff25e78e131207e975d91c15b76c833`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 22:53:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 		install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql; 		install --verbose --directory --owner postgres --group postgres --mode 3777 /run/postgresql # buildkit
# Wed, 18 Nov 2026 22:53:52 GMT
ENV GOSU_VERSION=1.20
# Wed, 18 Nov 2026 22:53:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 18 Nov 2026 22:53:52 GMT
ENV LANG=en_US.utf8
# Wed, 18 Nov 2026 22:53:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 18 Nov 2026 22:53:54 GMT
ENV PG_MAJOR=18
# Wed, 18 Nov 2026 22:53:54 GMT
ENV PG_VERSION=18.7
# Wed, 18 Nov 2026 22:53:54 GMT
ENV PG_SHA256=441dfae4280cae3e0425e5f876f80559fb0731c140f1aae22b3e5a54d0411bfd
# Wed, 18 Nov 2026 22:53:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 18 Nov 2026 22:59:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 18 Nov 2026 22:59:25 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 18 Nov 2026 22:59:25 GMT
ENV PGDATA=/var/lib/postgresql/18/docker
# Wed, 18 Nov 2026 22:59:25 GMT
VOLUME [/var/lib/postgresql]
# Wed, 18 Nov 2026 22:59:29 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 18 Nov 2026 22:59:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 18 Nov 2026 22:59:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 18 Nov 2026 22:59:32 GMT
STOPSIGNAL SIGINT
# Wed, 18 Nov 2026 22:59:32 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 18 Nov 2026 22:59:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771fc82017334b806e00ac663175ff8936fe7075273c30e3d524aa08d0313a9a`  
		Last Modified: Wed, 18 Nov 2026 23:01:12 GMT  
		Size: 995.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa383a24ad20b9ace12b460d1fd0337c2f47436ac60a464314dc51d12e9afe30`  
		Last Modified: Wed, 18 Nov 2026 23:01:11 GMT  
		Size: 875.4 KB (875355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ae1f70fb1e18d95e2d9dc607827149ce5ee195787739703e1737a1d910fe78`  
		Last Modified: Wed, 18 Nov 2026 22:55:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb52752fb755d0fbb0e506a988816a2312bbe17ad5cba5c1c16c8c869d9fc0a`  
		Last Modified: Wed, 18 Nov 2026 23:01:16 GMT  
		Size: 121.7 MB (121719135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d02334f0191d9c4bdd321595ced66ec57bae69eaf33aaeeaca93e8b48e437a`  
		Last Modified: Wed, 18 Nov 2026 23:01:13 GMT  
		Size: 19.0 KB (19019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc9baac3756927a0ca84be1a51ecf6ebb27d73fb4130197aa6c0608a7fdc2ff`  
		Last Modified: Wed, 18 Nov 2026 23:01:13 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5865793eebe37fa548c2597a0cbdd0cf46d0c50ec9f79e86b40a4924e9d116e6`  
		Last Modified: Wed, 18 Nov 2026 23:01:14 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:18-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:be57daf66aa3a4bfe3a6b3c952388fdb8143a3c1ad59a29e156073ae22d2b78e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **654.1 KB (654150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b21899bdfa460de80e4a5eedc0ef9fa2f9d3c6f44c7047f1134ea6f8765adaa`

```dockerfile
```

-	Layers:
	-	`sha256:e8737136fa4c2154b9d20a393abdcc7a80bf3fb6b1762f8977c02c6b51727977`  
		Last Modified: Wed, 18 Nov 2026 23:01:12 GMT  
		Size: 615.7 KB (615725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7896ac2056c0992d2fb73983793854e60b23fcd7160775fbc22b2a260cb60cfc`  
		Last Modified: Wed, 18 Nov 2026 23:01:11 GMT  
		Size: 38.4 KB (38425 bytes)  
		MIME: application/vnd.in-toto+json
