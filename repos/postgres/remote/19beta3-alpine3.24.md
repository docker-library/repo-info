## `postgres:19beta3-alpine3.24`

```console
$ docker pull postgres@sha256:b8e68149dff78f8c379e7d8d6b3dd3c3cff74c9d4dad83118ed11b9d4e9ba3e9
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

### `postgres:19beta3-alpine3.24` - linux; amd64

```console
$ docker pull postgres@sha256:8482244622d54b5a34b6edd51d0976425634158c5db052b30c4f65683a97f900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.3 MB (121348105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:427a233051626d6cceef8be96ad3fe5fe6227a4182faa4cf9c914aba9db44db9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:27:03 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:27:06 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:27:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:27:06 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:27:06 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:27:06 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:27:06 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:27:06 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:27:06 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:29:30 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:29:30 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:29:31 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:29:31 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:29:31 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:29:31 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:29:31 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:29:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:29:31 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:29:31 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:29:31 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813e3c6cd7fdbcf773a33b2e37597951113a17ea728997ab8aa1134e0d589036`  
		Last Modified: Thu, 17 Sep 2026 21:29:47 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72ad3a9c86a88d571a95010ce530fdc1d74c3c5fd3fb63860c20e9dc946e975`  
		Last Modified: Thu, 17 Sep 2026 21:29:47 GMT  
		Size: 901.4 KB (901408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57bfddf4d452a5fd53474042b6295118ef0e04186b293877e8653c12661f960d`  
		Last Modified: Thu, 17 Sep 2026 21:29:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09712a0295d6e737a60af867c8853ccf76b4d5deaf571ffbe1384028711c470a`  
		Last Modified: Thu, 17 Sep 2026 21:29:50 GMT  
		Size: 116.6 MB (116568289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe35096425fef3f4155505eafd8138f984dea0c5387d7b6f49fddb8b772b62ca`  
		Last Modified: Thu, 17 Sep 2026 21:29:49 GMT  
		Size: 21.2 KB (21162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c66a266e6f43158ddda30d3ae7ccc9044d1f41c5667441de1987b67fe9aa44`  
		Last Modified: Thu, 17 Sep 2026 21:29:49 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05bf64036d468e1219b1f3834d037c21b7d94793ff478deb75027e505ba3130`  
		Last Modified: Thu, 17 Sep 2026 21:29:48 GMT  
		Size: 6.1 KB (6111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1821c8c63847bca51c0fd80329bb1da92f75f456d477db721faca8ccb52c93`  
		Last Modified: Thu, 17 Sep 2026 21:29:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:4d47d30d8fc18ee7e4af4ba700458e87a2fa49fcaa7b81ba653eaa1ccf94b649
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39a25e568601f4777af7908ea894864c0f6676ddf980a977f71014562a727e70`

```dockerfile
```

-	Layers:
	-	`sha256:c912eba94a603f32a383a692372d166105ae3a2e227e6ef64c233f8701271e6d`  
		Last Modified: Thu, 17 Sep 2026 21:29:47 GMT  
		Size: 616.0 KB (616048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d34ad71cfaff43239de79a61b06f7b4c12e90c51e17900cb3869fc9a2fa7f24`  
		Last Modified: Thu, 17 Sep 2026 21:29:47 GMT  
		Size: 39.8 KB (39840 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.24` - linux; arm variant v6

```console
$ docker pull postgres@sha256:6b6e8d00ca7a6e47cc90460e4c2d01f3773d6006a104be68208303d0ed2831ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117547720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df89563260365aa6877fa2ce83c1e993bc85de5369c7bdb0a1d408b8a4b1ffa7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:42:21 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:42:25 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:42:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:42:25 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:42:25 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:42:25 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:42:25 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:42:25 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:42:25 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:45:22 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:45:23 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:45:23 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:45:23 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:45:23 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:45:23 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:45:23 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:45:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:45:23 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:45:23 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:45:23 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45335ab6a3ea5b2ad86e95967f2635579ba5e18fd45f672f5327023bd478bd10`  
		Last Modified: Thu, 17 Sep 2026 21:45:36 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ad195d1b8afe739b1f97c0b568ab0605dd010759bb261a64653617fcdfeb5b`  
		Last Modified: Thu, 17 Sep 2026 21:45:36 GMT  
		Size: 865.0 KB (865041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd28383f1dee4f5d703dc29c53624a6cbaf8be2800f251a5951cd0f9c5b3df3`  
		Last Modified: Thu, 17 Sep 2026 21:43:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8613ae145553d88158e44075c15fa83c413e7b8b2bc9ef16442640868b61fd4f`  
		Last Modified: Thu, 17 Sep 2026 21:45:39 GMT  
		Size: 113.1 MB (113098895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5da05a960ba3292373e73baa3ff96a4dc8fb45ab02e611312f23d63158cc76`  
		Last Modified: Thu, 17 Sep 2026 21:45:37 GMT  
		Size: 21.2 KB (21163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc1ab68e0ec2ba6eb23379bb5b0fe95a697b53037f03df7ddcc7834bde8404a`  
		Last Modified: Thu, 17 Sep 2026 21:45:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c06b52b93595c83652ae71e6abdcd1dbcbde831959eaf64ca5eef980729ac24`  
		Last Modified: Thu, 17 Sep 2026 21:45:38 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b25141475c9eb0b15ea6180c6406b99fa07ee8a5d31b01e7750cb1febebfec4`  
		Last Modified: Thu, 17 Sep 2026 21:45:39 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:490c2ef99ec99657cf5ae583ef041bbe8003164d1ab29c239c13e5512477c4d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.8 KB (39767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8af4646d26737a7e9557dd819e4994dce3ff4bd85b50e7c83f92140c2b3904a1`

```dockerfile
```

-	Layers:
	-	`sha256:7e4ab3b64d92d350a722cc7f4f397fc92114a0c062c9efcdbb7804d0e7b23ae2`  
		Last Modified: Thu, 17 Sep 2026 21:45:36 GMT  
		Size: 39.8 KB (39767 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.24` - linux; arm variant v7

```console
$ docker pull postgres@sha256:384dd577a9fced2262b9da13eec5b845097c40c24caa3ddb15ca8056bd61c085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111073686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:effbba294268d45699dd46468b7a3dfa25baa4a0b3884c9a1f7d6c2c17f838f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:41:37 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:41:41 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:41:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:41:41 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:41:41 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:41:41 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:41:41 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:41:41 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:41:41 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:44:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:44:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:44:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:44:45 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:44:45 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:44:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:44:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:44:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:44:45 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:44:45 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:44:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5922434debadacda83e1227c4e9c688a5e5ec911c71eb027daab7b4fb62c7b08`  
		Last Modified: Thu, 17 Sep 2026 21:44:59 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532accba67fc3237bc7d8348a12f219722a0c80ea797e7bed120bebf80b94517`  
		Last Modified: Thu, 17 Sep 2026 21:44:59 GMT  
		Size: 865.0 KB (865050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e546b0342a5c34abbfada3fa6f2929e52eaa3b11414209843808a70484bf10`  
		Last Modified: Thu, 17 Sep 2026 21:44:59 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2a38ebdbcdd11a63ccfef45797094e79b1189ef4765f623a1bfd464a920f45`  
		Last Modified: Thu, 17 Sep 2026 21:45:01 GMT  
		Size: 106.9 MB (106914764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba0a3c81e6631239e0cef8274930b65a96aa186bbd1b9832430cfd07a4efc55`  
		Last Modified: Thu, 17 Sep 2026 21:45:00 GMT  
		Size: 21.2 KB (21162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd86e96f0c01c54dc19d7f5c4a767d263654edc6b19768e670367c8b372813c4`  
		Last Modified: Thu, 17 Sep 2026 21:45:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa4db6513fcd8523d9b48b2038c0f8f781583da51fb5983adafc35d281e2363`  
		Last Modified: Thu, 17 Sep 2026 21:45:00 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe0028cd51ca46e391eedc2974a9d9b666ecdc4ef8dc97ea5b7a7dee1e748547`  
		Last Modified: Thu, 17 Sep 2026 21:45:01 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:313d2bfa79da708511aead76f8c4e22c8dbb3034dda83923b64152aebb25161d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80af1b0838267194aabda82eb82f5e88e8cc7e86eefc5def782967878f8e9b9`

```dockerfile
```

-	Layers:
	-	`sha256:b371c924a9b28eb575c4a09eab431ad715f5013aca74f349bca3e8e7dd24124d`  
		Last Modified: Thu, 17 Sep 2026 21:44:59 GMT  
		Size: 615.4 KB (615418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ca54befbc15e61ccb777b4040f3578ae14a098ca79d735f28c3952055db1b29`  
		Last Modified: Thu, 17 Sep 2026 21:44:59 GMT  
		Size: 40.0 KB (39982 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:613002c9fce0c739e2fafa991b3e821f34e7379daae4ff5e07851abdf8eda83b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119124249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190e58a0b4bee96603a6afb3a0ef37510eef6e05701c04587c1c1cf49828e749`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:28:24 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:28:27 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:28:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:28:27 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:28:27 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:28:27 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:28:27 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:28:27 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:28:27 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:30:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:30:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:30:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:30:54 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:30:54 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:30:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:30:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:30:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:30:54 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:30:54 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:30:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42522e794927cd773482dcf49bd02efdd2513d445523826483832fa2eea848f0`  
		Last Modified: Thu, 17 Sep 2026 21:31:10 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d97d74e2c3bd08f61f8f6056c6141823f9c9b467ccd1a0cd422aecbe07a2b0`  
		Last Modified: Thu, 17 Sep 2026 21:31:10 GMT  
		Size: 853.4 KB (853401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5400477d18747818e5866505026a6bccbf88af29db916473ddb5e48858e3b78`  
		Last Modified: Thu, 17 Sep 2026 21:31:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419a8a2d8691d265879175fb810e7b91d426b62ca7677190477933f27d429de8`  
		Last Modified: Thu, 17 Sep 2026 21:31:13 GMT  
		Size: 114.1 MB (114054527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b38647dc62cfa1fb29293f9b0091fbad4aae64bdfc658c8937d84d453f84306`  
		Last Modified: Thu, 17 Sep 2026 21:31:11 GMT  
		Size: 21.2 KB (21161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dddcd86f0b736e65c3da5082babaa472f2cfd85fe2f722806271ba6c09b6bc6`  
		Last Modified: Thu, 17 Sep 2026 21:31:11 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcca4b8541cad2ce34cfa9e094b5ff20aec51ec40e4777d2f2c73d82baad28f8`  
		Last Modified: Thu, 17 Sep 2026 21:31:12 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6241baf0fde99d6317e4ef2b8a925d6a15b3d8d6036bc2be0ec00dbc016ed30f`  
		Last Modified: Thu, 17 Sep 2026 21:31:12 GMT  
		Size: 182.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:08b65c0c3354d1279368fa913682f49f3c395c33e565d9d54940cde0e587d799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44faa1f12d0340a568d1c574d0276d9a24e192b7953964a6e8e1a195bb7c753`

```dockerfile
```

-	Layers:
	-	`sha256:d32b2a0ebac2474fe01dd3fd9e45c488b43c6bcb310651ecf05c827650233422`  
		Last Modified: Thu, 17 Sep 2026 21:31:10 GMT  
		Size: 615.4 KB (615430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e310b5d65a3242eec5f24dcb1a3f078cd2fadb6616b5069f07aebd2af5647e34`  
		Last Modified: Thu, 17 Sep 2026 21:31:10 GMT  
		Size: 40.0 KB (40010 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.24` - linux; 386

```console
$ docker pull postgres@sha256:ee90ca6b7f9c5269be91708bc303c24dec8b00a5fa399481a5b5f2376f6cfa0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.3 MB (128298488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6d83caf75070e9ed13034120a0dc8a177e05b587922b0e83eb77101d8575940`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:26:49 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 21:26:52 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 21:26:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 21:26:52 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 21:26:52 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 21:26:52 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 21:26:52 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 21:26:52 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 21:26:52 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 21:29:42 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 21:29:42 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 21:29:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 21:29:42 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 21:29:42 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 21:29:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:29:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 21:29:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:29:42 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 21:29:42 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 21:29:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c534af16f12ee35208001a2a55a6307426d34f7737240e7065575cf6c57946`  
		Last Modified: Thu, 17 Sep 2026 21:29:58 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b8b47df97a3044a0602ee11794f3cd922cc86002568f5e271cac653daa90e3`  
		Last Modified: Thu, 17 Sep 2026 21:29:58 GMT  
		Size: 870.3 KB (870290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c35cd1e4b0a546b5130b8195d5a0cbaa7d14f20ce9c21f231d44d58dbb2d25`  
		Last Modified: Thu, 17 Sep 2026 21:29:58 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cafd1a84aff841b0ef55bb9889970db0e030c328507bc142e50356d9e01185c8`  
		Last Modified: Thu, 17 Sep 2026 21:30:01 GMT  
		Size: 123.7 MB (123722738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bb11906ec866a15732555beb228926560e6f195358974458f280932b69d4d6`  
		Last Modified: Thu, 17 Sep 2026 21:29:59 GMT  
		Size: 21.2 KB (21166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc37b3350e3468688af1fb051fc6d418afb7c0cf6df91c1bdea9ff2efb4cddf`  
		Last Modified: Thu, 17 Sep 2026 21:29:59 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13009d9c59dd56c3f6da7e7ee4b46d360a43e4c6f91239734d5f2e97f47e1357`  
		Last Modified: Thu, 17 Sep 2026 21:30:00 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440d714effc796692b889cc7c3055cff132b0b1cd93b74b0b8b79d06b6b10c8d`  
		Last Modified: Thu, 17 Sep 2026 21:30:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:3539b271895d2a715a667cd8702aea5cba0bd961c26039aa4ec2f9e09e877fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf44717a2720846f3d9fb644019ba686eded557e30eb62d654e0b733a2d3e01`

```dockerfile
```

-	Layers:
	-	`sha256:192778ced981e03c4534462a294139ff0ac128468c2d961dc296a56693235d83`  
		Last Modified: Thu, 17 Sep 2026 21:29:58 GMT  
		Size: 616.0 KB (616033 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7928f4fce3bfba5b78c4f600a3248d103aa531f2831a2a2827b14d4ab867779f`  
		Last Modified: Thu, 17 Sep 2026 21:29:58 GMT  
		Size: 39.8 KB (39806 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.24` - linux; ppc64le

```console
$ docker pull postgres@sha256:4eccc845d373fea5354aa498dda47e29f5ab195719a12734b885e014350e22ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.4 MB (124425190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77141fd9b3804b55d935dc76bb61dfe476cce75bb90c2b2b1aeb488e3c5e94ec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:13:50 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:13:53 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:13:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:13:53 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:13:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:13:54 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 23:13:54 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 23:13:54 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 23:13:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:17:24 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:17:25 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:17:25 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:17:25 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 23:17:25 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 23:17:25 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:17:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:17:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:17:26 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:17:26 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:17:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598921e4e005583e7a6cb711133752474a367af1db89bff92b32c9aecb33e488`  
		Last Modified: Thu, 17 Sep 2026 23:17:57 GMT  
		Size: 966.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e08bc4edcb2784f2b2895f1aa6e80ad405c7b6dd5d509ad933749e3d5e533`  
		Last Modified: Thu, 17 Sep 2026 23:17:58 GMT  
		Size: 858.7 KB (858697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e696912752ddd4834eee170a3a3959e53eb0ddf2a2d8c3de5236c5714b2767`  
		Last Modified: Thu, 17 Sep 2026 23:17:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5160ba1b0f1b047fb48993f9ae5b37d44e622b767442ffbbb577cde8b9157b07`  
		Last Modified: Thu, 17 Sep 2026 23:18:00 GMT  
		Size: 119.7 MB (119720344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34974567ce44f7e7cbd17abcd9f552c39cbc4c20d0557c42588f85d1c768b434`  
		Last Modified: Thu, 17 Sep 2026 23:17:59 GMT  
		Size: 21.2 KB (21167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6111b58acbfcc53577f9e3b47c9b18d9b2ce0249dd2439847d3bd4fec6eda42b`  
		Last Modified: Thu, 17 Sep 2026 23:17:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99023c7a5906cd3abcd6e2c8f913fce1cfa20100b7cf9281ae7d93bcabf081ed`  
		Last Modified: Thu, 17 Sep 2026 23:17:59 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c4469e8d57f48f6bd77e2da71bbc1283388463dabae9018cf038a38c0b601f`  
		Last Modified: Thu, 17 Sep 2026 23:18:00 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:97ee524fd423fecb890309807ff40b583bcab386abdd2f94b30351bcc188c03c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.6 KB (653641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c895531996bdbdad2573f36fdf3f1bda5bacf1a4e80da4cba2655844cfd993f`

```dockerfile
```

-	Layers:
	-	`sha256:190ace67853a734cb7cbb0c9d3852be2021f77757e8e5558dc5d3e3b8681f90c`  
		Last Modified: Thu, 17 Sep 2026 23:17:58 GMT  
		Size: 613.8 KB (613757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75d09a6476b604101d5c5c72197789693283fb3dbee4e08f27c07510a64f759a`  
		Last Modified: Thu, 17 Sep 2026 23:17:57 GMT  
		Size: 39.9 KB (39884 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.24` - linux; riscv64

```console
$ docker pull postgres@sha256:55a0e2fc863020288f277ab9215ce67585e986f2878e31db3b034f42dec052d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (124024392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:754c04cf867588f2d0e3b8f4e8a67a82b479a4493d81b8ae4851ea8609c17cf4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sun, 20 Sep 2026 19:32:43 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV GOSU_VERSION=1.19
# Sun, 20 Sep 2026 19:32:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV LANG=en_US.utf8
# Sun, 20 Sep 2026 19:32:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_MAJOR=19
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_VERSION=19beta3
# Sun, 20 Sep 2026 19:32:54 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Sun, 20 Sep 2026 19:32:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Sun, 20 Sep 2026 20:27:31 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Sun, 20 Sep 2026 20:27:31 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Sun, 20 Sep 2026 20:27:32 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Sun, 20 Sep 2026 20:27:32 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Sun, 20 Sep 2026 20:27:32 GMT
VOLUME [/var/lib/postgresql]
# Sun, 20 Sep 2026 20:27:32 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Sun, 20 Sep 2026 20:27:32 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Sun, 20 Sep 2026 20:27:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 20 Sep 2026 20:27:32 GMT
STOPSIGNAL SIGINT
# Sun, 20 Sep 2026 20:27:32 GMT
EXPOSE map[5432/tcp:{}]
# Sun, 20 Sep 2026 20:27:32 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6e8f6cc689b5a966301671334e29cbee0f06b74064549ee24393aec57187b2`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 972.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ec9352b57bff085fb0a8f2fcff7e1c43c56221519b792aa6ea943bdea75820a`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 846.3 KB (846279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f38a78ad5cdc11334a5a5244b4ce336823fa996ba02ae7b8209481ae5772819`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f676affc29f4a5e04278d9f418a687b120afd153a47efa88621283f323055c3b`  
		Last Modified: Sun, 20 Sep 2026 20:30:55 GMT  
		Size: 119.6 MB (119574053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb9be6e22bbda725110795cc2c3fa48efcd6fbe8380b09f398e4861201a26736`  
		Last Modified: Sun, 20 Sep 2026 20:30:39 GMT  
		Size: 21.2 KB (21171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63fe5383021ef765d4c0cb0ad5f458136527b2a59d6fb039fd6c7198aad91d66`  
		Last Modified: Sun, 20 Sep 2026 20:30:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e086cbee4dc3e684043332108bd21e6e6b84ee4be85f816a383740b7f9dd1047`  
		Last Modified: Sun, 20 Sep 2026 20:30:39 GMT  
		Size: 6.1 KB (6115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be859eb684379bc0e2d766b77eb276339f2a5cf90e7450bbd2b8c32bdaa2b1bc`  
		Last Modified: Sun, 20 Sep 2026 20:30:40 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:8a96986f90112a3f0f2942f2c23cebf21ec06ae3ff97c5fc67cfd41e4cf640f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.3 KB (655299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7a82333c7c9e561acf1fd5b98f599e44a7f549cb1b9684907a16297e831f87d`

```dockerfile
```

-	Layers:
	-	`sha256:e03dd1758ad56f4776c6fbb7278ec5658fe54407719ac142355744584d6df425`  
		Last Modified: Sun, 20 Sep 2026 20:30:38 GMT  
		Size: 615.4 KB (615415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78ee2df0da7ffb2384fefc2c5ec7c754cb9298b5c864d56ff9b037fd0f2b52c6`  
		Last Modified: Sun, 20 Sep 2026 20:30:37 GMT  
		Size: 39.9 KB (39884 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19beta3-alpine3.24` - linux; s390x

```console
$ docker pull postgres@sha256:15a493ed626623a26e1915b293ccb8194784cf1e85ae05e1d3658cf31350753a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127938168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06dea0096e14f6379e1fd545efbf507106b304aef02e8bede657baea92b1667`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 23:06:34 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 17 Sep 2026 23:06:36 GMT
ENV GOSU_VERSION=1.19
# Thu, 17 Sep 2026 23:06:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 17 Sep 2026 23:06:36 GMT
ENV LANG=en_US.utf8
# Thu, 17 Sep 2026 23:06:36 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 17 Sep 2026 23:06:36 GMT
ENV PG_MAJOR=19
# Thu, 17 Sep 2026 23:06:36 GMT
ENV PG_VERSION=19beta3
# Thu, 17 Sep 2026 23:06:36 GMT
ENV PG_SHA256=ea4ad8933121930a58f23c73dc99c26a4184faca26faefa77d15ce0fba7dfe2c
# Thu, 17 Sep 2026 23:06:36 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 17 Sep 2026 23:09:47 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 17 Sep 2026 23:09:47 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 17 Sep 2026 23:09:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 17 Sep 2026 23:09:48 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Thu, 17 Sep 2026 23:09:48 GMT
VOLUME [/var/lib/postgresql]
# Thu, 17 Sep 2026 23:09:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:09:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 17 Sep 2026 23:09:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 23:09:48 GMT
STOPSIGNAL SIGINT
# Thu, 17 Sep 2026 23:09:48 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 17 Sep 2026 23:09:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9041c599e6c0fe5d377e6f5809d953ee9176297e9ae9c144d63cc2b2f886f4`  
		Last Modified: Thu, 17 Sep 2026 23:10:10 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:891986bb8e0f45c41180e4e4e069c57cff5e24b42e9d7f40155317b6848fdabc`  
		Last Modified: Thu, 17 Sep 2026 23:10:10 GMT  
		Size: 875.7 KB (875711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbd61ac5d63acc8c6d9971a5cf9bdb82395b726ab6a0d632c0ea43faced1980`  
		Last Modified: Thu, 17 Sep 2026 23:10:10 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c2c890d9b1dea30b45f9bad3fe70bbe46c7859b90224fcacc146df30b16ea1`  
		Last Modified: Thu, 17 Sep 2026 23:10:12 GMT  
		Size: 123.3 MB (123318447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee059bcf5205aa19bd9f47606ffe0765fee8a566e5fbb79ec1935296f218f68a`  
		Last Modified: Thu, 17 Sep 2026 23:10:11 GMT  
		Size: 21.2 KB (21163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1554dcbc6622212c9dde078e98faca4ed9c78c485fd92ac5e12c3c42b74c8da4`  
		Last Modified: Thu, 17 Sep 2026 23:10:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f173ff29b8d44bad8001812780c899400d992cf4c09217275fc9f26cd06b41`  
		Last Modified: Thu, 17 Sep 2026 23:10:11 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e35b7a19d0e7b0838cd096e064da2561b7619d5598a2d7dae4b0b9c3e5972e5`  
		Last Modified: Thu, 17 Sep 2026 23:10:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19beta3-alpine3.24` - unknown; unknown

```console
$ docker pull postgres@sha256:9be419bad780bd8169b9583123ad44dd94e82fd8813bfc3f9f7ce3547673e9fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a861d3b079a0f5242abae7e7b72e55280de370327d6353b65ee92bac0c1cb0b`

```dockerfile
```

-	Layers:
	-	`sha256:94780fd9384d42239ae46864160792f70f96323c3c4d24263b73d0005f02b336`  
		Last Modified: Thu, 17 Sep 2026 23:10:10 GMT  
		Size: 615.4 KB (615397 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f7887ebf406930d56a634fd63f02c9c6f07d7e63f0adf6e7f0c2958443a0b13`  
		Last Modified: Thu, 17 Sep 2026 23:10:10 GMT  
		Size: 39.8 KB (39840 bytes)  
		MIME: application/vnd.in-toto+json
