## `postgres:19rc1-alpine`

```console
$ docker pull postgres@sha256:6f3f7016b7dbe8544194c2e8c187a49e238ee24b64a34f1ba2b55f24ac03943c
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

### `postgres:19rc1-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:d9da2cdfda29f62a8da0363b8a663431f5b12fcab6c80673bc9768fa3abc2cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.1 MB (121112399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab43c72e79206bab35c05d041082948c6209508267771de638b06f67b6776c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:53:36 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 22:53:39 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 22:53:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 22:53:39 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 22:53:39 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 22:53:39 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 22:53:39 GMT
ENV PG_VERSION=19rc1
# Wed, 21 Oct 2026 22:53:39 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Wed, 21 Oct 2026 22:53:39 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 22:56:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 22:56:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 22:56:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 22:56:15 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 22:56:15 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 22:56:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:56:16 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 22:56:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:56:16 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 22:56:16 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 22:56:16 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920931ccc7cd57c4ac27cf07c2b09458e180dd0b13a745a57c9f0a7730ae0c87`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37d82e5bf0e9aba739f5c0a28e16e9f563de7cd01356de885eb7d36e52c98244`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 900.0 KB (900003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6452c4ad4f491331a3a4105af9c7c5bc25b30507e14fa7cd36ab6a843cf407dc`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aec7c35ee749ab1b66448d23dcaa8cb9b1df4d9681802488ee9be5ebc321f53`  
		Last Modified: Wed, 21 Oct 2026 22:56:35 GMT  
		Size: 116.3 MB (116330592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:065975fe03ebacfd6828ec604bd302f4619914e4c9f27db3e4d48a9300e21f63`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f4943643f635d5e75f67bed97a214b9a874cca6d267c180d10ab5b43911853`  
		Last Modified: Wed, 21 Oct 2026 22:56:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbccfa29ccc1b89f3b5d568f8eb9af6e6d635bb684cb84d3a4afa2d123fecb55`  
		Last Modified: Wed, 21 Oct 2026 22:56:34 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb6ed7ce61eaa2ced14e4074172a8d8581c1c7dc90a4293d6eac5ac14f986c00`  
		Last Modified: Wed, 21 Oct 2026 22:56:35 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:36f56b261fe21898c94494e8dd1881f5815595a9e475cc9e64d9432f9003fcde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbc16e9ac08f159b7465ac3dd75c91fbc605f181393c93b0e6a5ef3217ad823c`

```dockerfile
```

-	Layers:
	-	`sha256:e7c7dc4c17a064517acdbf8f2a675b2aa088e0761d30d1081d6b5e5aa9c1adde`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 616.0 KB (616036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64a52a52af5d8f18474f32e1617bac41bd7d968c8c005f502b11daab8ca0bd01`  
		Last Modified: Wed, 21 Oct 2026 22:56:32 GMT  
		Size: 39.8 KB (39820 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:99c018735abe1bb43ba6df1e450bf170e27ce0726141f6e0a7312a9c57540f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.3 MB (117316167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd8d41aab9dcba741b97d9523e56171929e42213a1ace8245c253103888f800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:24:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:24:15 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:24:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:24:15 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:24:15 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:24:15 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 23:24:15 GMT
ENV PG_VERSION=19rc1
# Wed, 21 Oct 2026 23:24:15 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Wed, 21 Oct 2026 23:24:15 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:27:15 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:27:15 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:27:15 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:27:15 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 23:27:15 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:27:15 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:27:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:27:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:27:15 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:27:15 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:27:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeaf84d901362a72a6c0ca058c29e66001aa84aa285c3c6a4997817fe693585f`  
		Last Modified: Wed, 21 Oct 2026 23:27:27 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca47119d8704eda3a5f6971bc389808a6e84dd76f3692c302e7158fbe41782b8`  
		Last Modified: Wed, 21 Oct 2026 23:27:28 GMT  
		Size: 864.5 KB (864499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5599b016bbcb98c6122cba42b253cfe8d4a737384ad3541e138066115f8f434d`  
		Last Modified: Wed, 21 Oct 2026 23:27:27 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd833db7aa441a994950cac5ccfcfa6e9a2444a7ea5ea8be1f0db442ba9d5bb`  
		Last Modified: Wed, 21 Oct 2026 23:27:30 GMT  
		Size: 112.9 MB (112864681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6fdf6d16dc8d6f77c2409f4a1318862eb9057fd920d1cf3356962633557f467`  
		Last Modified: Wed, 21 Oct 2026 23:27:28 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546dabf3d152dad326c4a7dd2aaab4ccdd80e397c3fd9d49e0f61050d329b5e4`  
		Last Modified: Wed, 21 Oct 2026 23:27:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd28de4fa02a3d70e202b31455f9e8afaeb5e204c2b9cc978fc3a883f64f9a3a`  
		Last Modified: Wed, 21 Oct 2026 23:27:29 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c5a031125c24c001e3d1f5e9de3810d42c015c54a18eda8ffcb877e3275000`  
		Last Modified: Wed, 21 Oct 2026 23:27:30 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:4bee1f3c2805d40a5970c414e4cc63118066921842a7992c318b661bea3dc908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a43459dc3d204cd68e21287610f140e8c2a0740fc4dcf4b420b33a6de7d2f6c`

```dockerfile
```

-	Layers:
	-	`sha256:81a40b9cf2201b49ca2bf6154356ba39b3bde00ec328dcce7078f1676329694e`  
		Last Modified: Wed, 21 Oct 2026 23:27:27 GMT  
		Size: 39.7 KB (39747 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:a986be939e07a206b2f7c4dcc9d44ba81f69f8fb2e6470d83180d5981dbd848c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.9 MB (110857692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7009c6cb9d4c94ccc97c310cdd7742392df5ab9ea99f298963b17489a06fd47b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:28:02 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:28:06 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:28:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:28:06 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:28:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:28:06 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 23:28:06 GMT
ENV PG_VERSION=19rc1
# Wed, 21 Oct 2026 23:28:06 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Wed, 21 Oct 2026 23:28:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:31:10 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:31:10 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:31:10 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:31:10 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 23:31:10 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:31:10 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:31:11 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:31:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:31:11 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:31:11 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:31:11 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c6f53453d4ada429366606d8370119412f684e148678dc8dcdae77bf38a4c5`  
		Last Modified: Wed, 21 Oct 2026 23:31:25 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b601841043b50ff7c7d7a2e3697e1c57f02d53c40e7ef2a6b7e294b078b269`  
		Last Modified: Wed, 21 Oct 2026 23:31:25 GMT  
		Size: 864.5 KB (864507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a905e2b7f2f10c87788cd0c8ffb8e5e5bfcf0df8d3b14156014f86ab84fbf9d5`  
		Last Modified: Wed, 21 Oct 2026 23:31:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb83a6e9da70b2dfd51b2476e5564ccdb1751ab65663f6f4daaa1d2781e40f8b`  
		Last Modified: Wed, 21 Oct 2026 23:31:27 GMT  
		Size: 106.7 MB (106697820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f0b5d4a799577b49f6b776139f97729ba171cbb363da7df4ff1aed03946891`  
		Last Modified: Wed, 21 Oct 2026 23:31:26 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3759b1cec59ab41cb23e7531e39a3b94bf2501d9903da8ff70004b7a23c1011`  
		Last Modified: Wed, 21 Oct 2026 23:31:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c345d970742347b472c778550949891ac269745dd0aa4ea46642bafcec9c35df`  
		Last Modified: Wed, 21 Oct 2026 23:31:26 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c999785cfaf18dc5c7cc8395ce525695c5474c618c8f0fb01195c1ff2ed553e`  
		Last Modified: Wed, 21 Oct 2026 23:31:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:8a3fa4f32c709e69a9e3aa903585075211482f75eea9a59dbdd88c634fe45b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3b9e2c673b206468de20b148741988ae7626307e2f0518575c9d94b7538e3d`

```dockerfile
```

-	Layers:
	-	`sha256:9c1e53a7b76f9fcccb6a0e82954acf689e09699d11b314c69511e9e5ed03d768`  
		Last Modified: Wed, 21 Oct 2026 23:31:25 GMT  
		Size: 615.4 KB (615406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4265d582fede266bab4c71de8a3179f2dfa215c5b2e406c748bb4e141a708317`  
		Last Modified: Wed, 21 Oct 2026 23:31:25 GMT  
		Size: 40.0 KB (39962 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:10a125ee6067fdfdcb6efed797d88ace5681b8e0dc94535f5c9fcf6fb93c39b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118889181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3a7509e29112520f6b864beff25a5db65080eede5ef77f660ebbefd5ea83a53`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:16:45 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:16:48 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:16:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:16:48 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:16:48 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:16:48 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 23:16:48 GMT
ENV PG_VERSION=19rc1
# Wed, 21 Oct 2026 23:16:48 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Wed, 21 Oct 2026 23:16:48 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:19:17 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:19:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:19:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:19:17 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 23:19:17 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:19:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:19:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:19:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:19:17 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:19:17 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:19:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba15dff44afe30e0c6bc73524270db4e9270c2748107273e5a3b978bcdc462bc`  
		Last Modified: Wed, 21 Oct 2026 23:19:32 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a5354b9fbc18271fdd8f26f2ff58fc53e50f5a28941d6fe361921dd9a87f19a`  
		Last Modified: Wed, 21 Oct 2026 23:19:32 GMT  
		Size: 852.0 KB (852040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27dcec204c39bbbcf1ddd416aca8d32fb211638a5780b0310153a2755854c33`  
		Last Modified: Wed, 21 Oct 2026 23:19:32 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdd2775e41f86cab8b7c108c726faf844df8cb71b8ba80026c674b30908f7d97`  
		Last Modified: Wed, 21 Oct 2026 23:19:35 GMT  
		Size: 113.8 MB (113817949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3ea3e0ae45d60b467496e4992fddc10fc9e3a83f1742fe4ac7d9d103f4708f`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 21.2 KB (21197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db4fdd74da69bc82b2c07b11eea093c89d88172ed8e9947cc0cd81274faac230`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4e7402fb764ad9c617b6cfb2f56ca39d1c9e4c1a3db21ae3bc1ca42131f8b6e`  
		Last Modified: Wed, 21 Oct 2026 23:19:34 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a786b7180052a1c23897ecea524f308397ebf7d4709ce700c72b59b9741fb4a6`  
		Last Modified: Wed, 21 Oct 2026 23:19:35 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:701b7ded44b980125ce1aea3257301129d698c874aa902771db1ea9d764ed2ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:974ded3aea90e3cf22c54df7d25ba659d7ae8ae6e1efb685d3e74d1a6cbfe6fb`

```dockerfile
```

-	Layers:
	-	`sha256:903605cd99f18c183553a0b72fe8ee3fae563431030d120791012e5702137f59`  
		Last Modified: Wed, 21 Oct 2026 23:19:33 GMT  
		Size: 615.4 KB (615418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47bdb604dc06d941bedf7f300661b86d12af2d0e9bd25fc6512344f299c3362d`  
		Last Modified: Wed, 21 Oct 2026 23:19:32 GMT  
		Size: 40.0 KB (39990 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; 386

```console
$ docker pull postgres@sha256:c46502a343d1783b6f193363f3ede7c7da1a4ad732447e089fa20c26a55f072b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.0 MB (128044056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1456a01df63078b64aedb9f58e96da357939d127d4fb138582f5ac46d8b3d496`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:29 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:17:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:17:32 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:17:32 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 23:17:32 GMT
ENV PG_VERSION=19rc1
# Wed, 21 Oct 2026 23:17:32 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Wed, 21 Oct 2026 23:17:32 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:20:31 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:20:31 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:20:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:20:31 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 23:20:31 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:20:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:20:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:20:31 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:20:31 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:20:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dfe1e98de0ddc926b583849713116e9aa1aa83fb5e4680cff40d1acf57d252c`  
		Last Modified: Wed, 21 Oct 2026 23:20:48 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:543edc1fa4e85bed31c94fd48a1039b34702fc86aea67d650352e5481ab90974`  
		Last Modified: Wed, 21 Oct 2026 23:20:48 GMT  
		Size: 868.0 KB (868021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39867a75dba75f2b9b2283ea843ab3c5afd9ba809f5b9e011f03fdd30647a53d`  
		Last Modified: Wed, 21 Oct 2026 23:20:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349973aa590f2eda155634480ed80cd4ac5c17a3a84714ba8d288534cafebdb9`  
		Last Modified: Wed, 21 Oct 2026 23:20:51 GMT  
		Size: 123.5 MB (123468338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c37a394547032f3bdb4983d8384baa4d6785bce15316ac7a0d2eda69627802`  
		Last Modified: Wed, 21 Oct 2026 23:20:50 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb449fdbe1f544f68ba8776e80f75aa424b7302e3d91745e97fcc14ead493acb`  
		Last Modified: Wed, 21 Oct 2026 23:20:50 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b173f45277b4fa7d559de2b357721d57a78df683c91331dac8a803f9365a3665`  
		Last Modified: Wed, 21 Oct 2026 23:20:50 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea75e1bafdb57c406eed63fe01be76a4f1293c5d8162cefbfb157ba29d3a3d0`  
		Last Modified: Wed, 21 Oct 2026 23:20:51 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:57d8907be7cdc4fc8e354a533cbd553a75390116473824f1924a9da41a4b2a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aee46455a7aa423fe365880acb1e13df379144252e2a6d6651b47fe5bbe402b2`

```dockerfile
```

-	Layers:
	-	`sha256:90593545444c7fa76f4efe623ee88c7b20d4bef4cc3a70d6720d822cab565d65`  
		Last Modified: Wed, 21 Oct 2026 23:20:48 GMT  
		Size: 616.0 KB (616021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1428a805f8c4fd0b6535b684d93d20aba2920f08c08a83f899bb987d1c0b94c6`  
		Last Modified: Wed, 21 Oct 2026 23:20:48 GMT  
		Size: 39.8 KB (39786 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; ppc64le

```console
$ docker pull postgres@sha256:96be7f2fa39d79f128ba31359fd26ad870c0e92e312d4c8f56a1cbd213530a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.6 MB (126557730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff2d7f63f2a6062db51b56fedb40e9fd05a89792010ac578ba62462e046bd97`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:29:46 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:29:56 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:29:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:29:56 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:29:59 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:29:59 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:29:59 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:29:59 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:29:59 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:35:06 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:35:06 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:35:07 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:35:07 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:35:07 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:35:08 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:35:09 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:35:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:35:09 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:35:09 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:35:09 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d99205a245bb242a7eafea877c671bee0b28786fd9cfbd5ec2d86d0377d1c52`  
		Last Modified: Fri, 16 Oct 2026 20:36:09 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af7f917dd5301511eaa7c70991bbe4e3a7b819f3f7afc00f4cfe39062aa2a5a`  
		Last Modified: Fri, 16 Oct 2026 20:36:09 GMT  
		Size: 858.7 KB (858702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96949f1f0353749cea46f9480fef4ffe32beda5d4e17e6b3c4a4e463c9f9d44b`  
		Last Modified: Fri, 16 Oct 2026 20:36:09 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7a445f254b07f3cfe4dc1d599ea6d2b991aa7195d1bc2c6431bb337d9585bf`  
		Last Modified: Fri, 16 Oct 2026 20:36:13 GMT  
		Size: 121.9 MB (121852839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0124b2fd884ec977086ebe201a6352964fec22357fdf75de599e6fe24885f279`  
		Last Modified: Fri, 16 Oct 2026 20:36:11 GMT  
		Size: 21.2 KB (21200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2734e185ff717a78106a981b072bef10bf1ad02caefbaa47a5c3ee3a9a78d79`  
		Last Modified: Fri, 16 Oct 2026 20:36:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb2e7dba037da91ac541212839247617f764d313ff16c5a88fb17fa4ca486e9`  
		Last Modified: Fri, 16 Oct 2026 20:36:11 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0815b2cd028b7903ad5194d64bae094b109574a8affc1dcaaa732e973081595`  
		Last Modified: Fri, 16 Oct 2026 20:36:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:72fc21b053aa4001c297c6e2ececfeb2e65d7f64c115a8686ad9e628b7f34a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc2dbbafdbba362cc2dd8062ec0d3bfe3e004eb8c2bd316a6f6ef008001372a9`

```dockerfile
```

-	Layers:
	-	`sha256:854544deca43bce1bbf2e07ff961e907253fd6d0d755cbf42423c8a59320cbcb`  
		Last Modified: Fri, 16 Oct 2026 20:36:09 GMT  
		Size: 613.7 KB (613745 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:308f8e879d809d755f3e2a36870e1744a0ebcadf983dc17779d8caac43f57079`  
		Last Modified: Fri, 16 Oct 2026 20:36:09 GMT  
		Size: 39.9 KB (39864 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; riscv64

```console
$ docker pull postgres@sha256:fe3768dcc5094be4ce32f379756bb507f771d5e515be70817d35355b404f60a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.0 MB (125958909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb3e2f1a75f9236b6bc26dbb052808e8f14bce12f61476761ab61510518a815`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 22:57:11 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 22:57:21 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 22:57:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 22:57:21 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 22:57:21 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 22:57:21 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 22:57:21 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 22:57:21 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 22:57:21 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 23:51:13 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 23:51:14 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 23:51:14 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 23:51:14 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 23:51:14 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 23:51:14 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 23:51:15 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 23:51:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 23:51:15 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 23:51:15 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 23:51:15 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b58c990b6e96bfd46bbbf6a2ae93925d5a0d612928eb13ea2d628df24e13dc`  
		Last Modified: Fri, 16 Oct 2026 23:54:25 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b1c7b97a07d51c1991ffcfaa99d52aeac4710abb35f8bb7d1ee1326bec95906`  
		Last Modified: Fri, 16 Oct 2026 23:54:25 GMT  
		Size: 846.3 KB (846290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1212c3f3e8caeaeaf28e254685b0cdf85cbf23721a8441814efe566e0b2c3a`  
		Last Modified: Fri, 16 Oct 2026 23:54:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbebbe76c65834ee091369764efc06fe8a61a0bb38d09834670698af15042a99`  
		Last Modified: Fri, 16 Oct 2026 23:54:44 GMT  
		Size: 121.5 MB (121508528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c12490f8136695a5b5dcbc0790aa01f95aeec3e7ff1aebfbff93c99d4a9eef`  
		Last Modified: Fri, 16 Oct 2026 23:54:27 GMT  
		Size: 21.2 KB (21203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814fd26cc584149d0b38f38148203d040799e96ded09a0ed5d0a7cd0e72d2bae`  
		Last Modified: Fri, 16 Oct 2026 23:54:27 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd7870995a8a703b773c48fc490a9a5e9394a2937af84e9085a93c4ee192e4fc`  
		Last Modified: Fri, 16 Oct 2026 23:54:27 GMT  
		Size: 6.1 KB (6115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3302049957f7a6359d854be25c9ac137b26660dda61c1ed18faa3da38bed43b6`  
		Last Modified: Fri, 16 Oct 2026 23:54:28 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:1572410ba7c62d9ee3974dbbb6521a753d86b426d0be9940e489d69fdd60e8b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d37a46d0a79399c5de5244e60afda4ea7bcd8ebeab5abd8bfc78996242d2bbb`

```dockerfile
```

-	Layers:
	-	`sha256:af1ed7d4a46f79c54b6b7fb5e6c7d26d7da1836aa248df9ed1cd1171f49fb40b`  
		Last Modified: Fri, 16 Oct 2026 23:54:25 GMT  
		Size: 615.4 KB (615403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abb065603d8d71c29471cc711fc120d5f7b34ecf3d5cba7a2c9d42a77ef5b9a3`  
		Last Modified: Fri, 16 Oct 2026 23:54:25 GMT  
		Size: 39.9 KB (39864 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:7e1c9ff5d7041acdab515c23b3deb6bd3ac47cbd6ae8e510b8d484b7352333bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.7 MB (127658762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa52b817dc5dd813b1b760a52d67ee980ce76debfe4a93c85391838c129c77d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:33:48 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 23:33:51 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 23:33:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 23:33:51 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 23:33:51 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 23:33:51 GMT
ENV PG_MAJOR=19
# Wed, 21 Oct 2026 23:33:51 GMT
ENV PG_VERSION=19rc1
# Wed, 21 Oct 2026 23:33:51 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Wed, 21 Oct 2026 23:33:51 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 23:36:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 23:36:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 23:36:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 23:36:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Wed, 21 Oct 2026 23:36:54 GMT
VOLUME [/var/lib/postgresql]
# Wed, 21 Oct 2026 23:36:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:36:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 23:36:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 23:36:54 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 23:36:54 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 23:36:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b436f5b6f518b6e82c16a02d39c18707e7edb16769fe7e4e229512ef879939f`  
		Last Modified: Wed, 21 Oct 2026 23:37:20 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3ed657ed02cabb7d0004fb34f9ea8a7c700c079ecad245a57e0a9716fde5db`  
		Last Modified: Wed, 21 Oct 2026 23:37:20 GMT  
		Size: 874.2 KB (874208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5a94bec413a279ddeedf88936dc4e0597169c84cebdce5c34d27f781964a1d`  
		Last Modified: Wed, 21 Oct 2026 23:37:21 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e51f69db977a90aefafe22c0abee10322683f8894f96ae19e8cedbedff67ef2e`  
		Last Modified: Wed, 21 Oct 2026 23:37:23 GMT  
		Size: 123.0 MB (123036145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a574f808973879b3ef9f4f9f8e7e5be9bc6557b878ad6574777078b39f578e6d`  
		Last Modified: Wed, 21 Oct 2026 23:37:21 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a92080830eea124cf469440d479d15be0413d7c1a30cc5607ceb5255bb4bdd6`  
		Last Modified: Wed, 21 Oct 2026 23:37:21 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e2d836c731b59a09d9bd774835af979c0aba69fec9e09396e603a4a876952d9`  
		Last Modified: Wed, 21 Oct 2026 23:37:21 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44033198b509ef189246647f89411b98fa577851ab8eb3046621e2f4b19c8043`  
		Last Modified: Wed, 21 Oct 2026 23:37:22 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:fea6e37409c7426018393525603c83418f028e583a4026f72b75d6b83515167d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79918fed508006786b167ba48def4f00a4e84a0f9f2ddd719817d0bbba5bbf36`

```dockerfile
```

-	Layers:
	-	`sha256:c909d0ed3b144c2f4f2a916ca5d1612f142dd3d399efc12d12e71aadad0f0067`  
		Last Modified: Wed, 21 Oct 2026 23:37:20 GMT  
		Size: 615.4 KB (615385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f6cbb1eb8cfaf9e70dc66a58a5d301040511d179119954a0c3e453ea3b17eb9`  
		Last Modified: Wed, 21 Oct 2026 23:37:20 GMT  
		Size: 39.8 KB (39819 bytes)  
		MIME: application/vnd.in-toto+json
