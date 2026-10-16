## `postgres:19rc1-alpine`

```console
$ docker pull postgres@sha256:68a6031448b0d35f28bb0a8afbacb840ff381a48804812641184a522c948a48a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `postgres:19rc1-alpine` - linux; amd64

```console
$ docker pull postgres@sha256:c7e1ca7c3073b56db283aea7ad65bc7f74fb65215b3d2324c933f83eae389ee6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.6 MB (123641551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c562bd25cd02d3043399c65fb079d097c6bf41c5f423841c60cdf2882953da1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:26:51 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:54 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:26:54 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:26:54 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:29:19 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:29:19 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:29:19 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:29:19 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:29:19 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:29:19 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:29:19 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:29:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:29:19 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:29:19 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:29:19 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc4e30f829f35960b0bf735132415379810bc714273560f3428b6ae8e47beb9`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:480a905ce205035a4f20e4523299f2569cc7a2109eb7e5fde5d6a3b0e7ecc716`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 901.4 KB (901423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:390afec221cea9a25a2f78100fe5ccba5e927a74d9870a0823f2fe65c03788b8`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded7b1630a0d0d15855dec992d65a5ec38caf939fdd0211359eee5b4178ca4be`  
		Last Modified: Fri, 16 Oct 2026 20:29:39 GMT  
		Size: 118.9 MB (118861688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a58224a8225f61f160c6f4bc31a5b22426d8c2cbda3f39b740a4410cb8d7ca`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0386d9fb774388922b2caa510c3f7e25a7e323dffac16539eab29495211068`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3027220e71d42729559c086a29c1f9f740fcbcb0ad35ecd8af4fce5f1093020`  
		Last Modified: Fri, 16 Oct 2026 20:29:37 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46898cbab2af0577c6080bbf6270e5fdb6a32457779130fe7cf441d19f863ed5`  
		Last Modified: Fri, 16 Oct 2026 20:29:39 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:f2a7c6cc5a89859d65291723946041f541e3ff0774966d7a1c9f972d61eaf758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.9 KB (655856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d36f3003fa12382239908fdf28d0cbe794d8a11e3ee5c1b9416889330face77`

```dockerfile
```

-	Layers:
	-	`sha256:7c0ed4dc1bbb8a9bd80a4dead444ad806785272f3cdac80a0f727b2b7e1a0f02`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 616.0 KB (616036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c61e6cf16adbd499e1ff17a9df72f930fa4670ff7c7eb47105f36c6235c92bed`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 39.8 KB (39820 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; arm variant v6

```console
$ docker pull postgres@sha256:7141f8a3fd7e324def84a51ec1ee3ada6696971dad42509c19d81a5d68b0bc64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.5 MB (119467128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57e849f677df27202ba17b750142a633f1cccbf19f4d0fc1622644daf91b457e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:27:01 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:05 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:05 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:05 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:05 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:05 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:27:05 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:27:05 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:30:37 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:30:37 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:30:37 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:30:37 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:30:37 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:30:37 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:30:37 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:30:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:30:37 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:30:37 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:30:37 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c7897b7e8ce565e84af40b9d77e54e4e9b71197caed0f70d0497d1470e7df33`  
		Last Modified: Fri, 16 Oct 2026 20:30:50 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d12fad83f6294672186359b0d4ccc0e2a5cd0c2bc85f243d911599f5325ca6b`  
		Last Modified: Fri, 16 Oct 2026 20:30:50 GMT  
		Size: 865.1 KB (865052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015bdb1756a99c96eb7ad557131c97941b703af0880d7a8d7efa16187db430e9`  
		Last Modified: Fri, 16 Oct 2026 20:30:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6646690bb9300e57013f73a64e2eb86e0b9000d4bce9da8f49363c96eb8ef553`  
		Last Modified: Fri, 16 Oct 2026 20:30:53 GMT  
		Size: 115.0 MB (115018262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d476de4154b8f75ca0bba49c830990b1be42f4caabc49a7ae352366d2cc48368`  
		Last Modified: Fri, 16 Oct 2026 20:30:51 GMT  
		Size: 21.2 KB (21195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d109f72632dd709083b75c0959398cfd8bec91c379e00793062491ef4fa9c4f`  
		Last Modified: Fri, 16 Oct 2026 20:30:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183f658f622e5d33301e0abb8d1047e180ee477a3c0119d0ddf5cea0939835e5`  
		Last Modified: Fri, 16 Oct 2026 20:30:52 GMT  
		Size: 6.1 KB (6107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b79dd8be4caf10a943fe3fe1ab1d5425b88e74728ffdbaa08940ea00b7dc2923`  
		Last Modified: Fri, 16 Oct 2026 20:30:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:8108b1604bfa27ba97bd792f750eb9942427257a4c78f34858f6a3d5af054246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9255a2a750362a9bdbaa6c201e0e4240dd1e22164fd172077fa421696baace1e`

```dockerfile
```

-	Layers:
	-	`sha256:386fdfed4096d775870275979dd873d02700e8934e424ec23283b1b61deddfdc`  
		Last Modified: Fri, 16 Oct 2026 20:30:50 GMT  
		Size: 39.7 KB (39747 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; arm variant v7

```console
$ docker pull postgres@sha256:03c8fe779c7f84d896c8501ee99c1e4cab427d5a6e90294dd4bf250e57a43491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112828593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346a079b075a73e3ec0fbd8f4fd5e1861f2f20284722467c9f708d0e360e6aa8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:27:17 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:20 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:20 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:20 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:20 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:20 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:27:20 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:27:20 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:30:20 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:30:20 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:30:20 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:30:20 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:30:20 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:30:20 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:30:20 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:30:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:30:20 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:30:20 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:30:20 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109b37e772b0398ffef8dea69e20fe8f1c871cd57437a89f678d81e4d64e7584`  
		Last Modified: Fri, 16 Oct 2026 20:30:34 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bdb45d83fd966e0e0004963614c7bc94624295b0e252dbe93d01bab3486d415`  
		Last Modified: Fri, 16 Oct 2026 20:30:34 GMT  
		Size: 865.1 KB (865064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07407d9aec7a4b16c660bc5659c060352b42da99c36b2e0c3f910b523a5e779d`  
		Last Modified: Fri, 16 Oct 2026 20:30:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03399448a9b95a6848b43f6afa7291946e4b33608872c65081717062303acd5`  
		Last Modified: Fri, 16 Oct 2026 20:30:37 GMT  
		Size: 108.7 MB (108669631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b559066bd545adef0387978d7689ddd961851437f846d71f0118a54618bb1b`  
		Last Modified: Fri, 16 Oct 2026 20:30:35 GMT  
		Size: 21.2 KB (21192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c3696bf9501a2f22735e8764db84351424621523cbbaaa2d6256cb7c187ac7`  
		Last Modified: Fri, 16 Oct 2026 20:30:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44761d533c30828ef5261be35fad633746ce004be7052dbc2047dff4f7a5a261`  
		Last Modified: Fri, 16 Oct 2026 20:30:35 GMT  
		Size: 6.1 KB (6105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f125d5e7cf0bc4a34c189d4d9e703ba759780797fb3c45155e4bedc04736d2`  
		Last Modified: Fri, 16 Oct 2026 20:30:36 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:885181638354332e18f4614fab948c26ec0f7a471c23fd2c1674d267d0cb6d9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:209cbd02e199ef1d93d386736012af6d1e638f8fbd0aac02461460efef8cf939`

```dockerfile
```

-	Layers:
	-	`sha256:023fc2375aa3e4378e342c4b739b6d5ae7c753bcd997171855597e40c04406c0`  
		Last Modified: Fri, 16 Oct 2026 20:30:34 GMT  
		Size: 615.4 KB (615406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7ef807a3408da981ebc579de1280ed77ee50343918386856370e75c70c6cbd5`  
		Last Modified: Fri, 16 Oct 2026 20:30:34 GMT  
		Size: 40.0 KB (39962 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:1deab1d9ddd8daa54dd201ab090b4f7b80439c6e554e8d724fbf3882d77dcb62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.7 MB (121715003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:263d6dd6f13f84330760e42882744eda45214846cc986b0397145718041a2257`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:26:44 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:26:46 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:26:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:26:46 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:26:46 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:26:46 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:26:46 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:26:46 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:26:46 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:29:17 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:29:17 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:29:17 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:29:17 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:29:17 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:29:17 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:29:17 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:29:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:29:17 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:29:17 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:29:17 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090c4fac0f47577096c3b3d9082d33c11f5e81d0eb309e72499ee79cb10435c7`  
		Last Modified: Fri, 16 Oct 2026 20:29:33 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd299723cc5af88554a185f028fcfb161b8742e8a10fd53360f7e16e6e6ef58`  
		Last Modified: Fri, 16 Oct 2026 20:29:33 GMT  
		Size: 853.4 KB (853411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd33a69ef36cf4b0a50b6a35c9b038aa9b1e8d43e56acae178030ebd54a5599`  
		Last Modified: Fri, 16 Oct 2026 20:29:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5983dff5e3b401f7a0ec655030426fef4311f0666a2d0ad1ea7cae5c164cd485`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 116.6 MB (116645233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203008f925870b1526bc78d7fdcdf1d0d7614f0604db09eb2f263d0adb52510e`  
		Last Modified: Fri, 16 Oct 2026 20:29:35 GMT  
		Size: 21.2 KB (21194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c0763bb9406b56957075a86febd118705d6af6bce173c8e6c44da4555cbe56`  
		Last Modified: Fri, 16 Oct 2026 20:29:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153bfb809ce7c5153321c8b2a7c291a2a61a6409f3b9113eb32e0403b66aba2f`  
		Last Modified: Fri, 16 Oct 2026 20:29:35 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365cd4d0b628668896eb1f90570f3e9b5a16d5b7a83aa51d36f225d3dc88772b`  
		Last Modified: Fri, 16 Oct 2026 20:29:36 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:5ed5f470ca1061c1160ad3b0c469565c7273b4478cb77011880117e86058c28a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.4 KB (655408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a58477861fbd978113f337a0456a23cd736dc46f5247f16d4ce5a0c259d6ca53`

```dockerfile
```

-	Layers:
	-	`sha256:7494ab088979735aff30c080f4f5b34aeccd5861c5025434ca4229c9444d1e94`  
		Last Modified: Fri, 16 Oct 2026 20:29:33 GMT  
		Size: 615.4 KB (615418 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc1d208d31ae9044a66c028e26ba04f48631e007f89a1ea322c3442dbd7c8eb0`  
		Last Modified: Fri, 16 Oct 2026 20:29:33 GMT  
		Size: 40.0 KB (39990 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:19rc1-alpine` - linux; 386

```console
$ docker pull postgres@sha256:35e2aeb4ced2d8f2b7a82d39a9d8b78b3f5dc9dd29ecd9c107d2ad30ccb1e64a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130374988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d586c7ca56d8d22d03d81b5b38827ec5305fec2bce8da50e8cec486180c328`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:27:28 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:27:31 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:27:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:27:31 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:27:31 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:27:31 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:27:31 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:27:31 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:27:31 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:30:42 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:30:42 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:30:42 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:30:42 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:30:42 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:30:42 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:30:42 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:30:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:30:42 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:30:42 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:30:42 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:370853c34b8089eee1417e10d686b3b367ef788344c3733e24ef5061a435b509`  
		Last Modified: Fri, 16 Oct 2026 20:31:00 GMT  
		Size: 975.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6230ad2691af00feff53d61c2f5207f08d427d2166afb82b43718ae02f7924c2`  
		Last Modified: Fri, 16 Oct 2026 20:31:00 GMT  
		Size: 870.3 KB (870299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26053a9954b2085828f4cf9a33afb742dec4946031fa6794856c4855b6d202ed`  
		Last Modified: Fri, 16 Oct 2026 20:31:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283ec11d91fa36a01e6f5840cfd42dae831fea5ed951f15490cdf0948a5f285f`  
		Last Modified: Fri, 16 Oct 2026 20:31:03 GMT  
		Size: 125.8 MB (125799197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baaeb1641d91591cea0e88d632ccd764cd09fdf94abef5327a593b2fd58189eb`  
		Last Modified: Fri, 16 Oct 2026 20:31:01 GMT  
		Size: 21.2 KB (21196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648276e50306431e9ed63cdfb10e14632e60622a2f610a538a5afcae43ee5b23`  
		Last Modified: Fri, 16 Oct 2026 20:31:01 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d1e690874e750c3da2a6a2076bfebfcfb45b1e4b2fd38fee6b0d96585e0ab20`  
		Last Modified: Fri, 16 Oct 2026 20:31:01 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69133f60bb6e12ff75311eab334defa285d09d2159f622f5070a7028ed13589`  
		Last Modified: Fri, 16 Oct 2026 20:31:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:17b0f3633a38077879c722a08ffda88d0a37a33e3157194b869dfb9052c0e2f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.8 KB (655807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3af11b8064e6bc6bc069ed1915425bb08e4f92fcdecddb5d7b2741e62921df02`

```dockerfile
```

-	Layers:
	-	`sha256:8176a36f4c48b2191f2c48b9a38e3afa401a5379e1abacfcd8aec5c51be5206f`  
		Last Modified: Fri, 16 Oct 2026 20:31:00 GMT  
		Size: 616.0 KB (616021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fdc5e1b7eeb76ea034a5ba0aa465909b234571dd8f8dc86b8c3ab6e5878559e5`  
		Last Modified: Fri, 16 Oct 2026 20:31:00 GMT  
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

### `postgres:19rc1-alpine` - linux; s390x

```console
$ docker pull postgres@sha256:0268efa84c376d4e42ed43accc75d4fb62d6d9309ee64da4572a791c285f57d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129950611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2abc8c18f108fbf82b5c0805b6423e86c8cd0fc548cb68b32e20827ebb0fb18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:25:34 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Fri, 16 Oct 2026 20:25:37 GMT
ENV GOSU_VERSION=1.19
# Fri, 16 Oct 2026 20:25:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Fri, 16 Oct 2026 20:25:37 GMT
ENV LANG=en_US.utf8
# Fri, 16 Oct 2026 20:25:37 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Fri, 16 Oct 2026 20:25:37 GMT
ENV PG_MAJOR=19
# Fri, 16 Oct 2026 20:25:37 GMT
ENV PG_VERSION=19rc1
# Fri, 16 Oct 2026 20:25:37 GMT
ENV PG_SHA256=af105fc8e960fc836a09fc2cd7f582b49fd17675d9d36631abe3a565bfd7d701
# Fri, 16 Oct 2026 20:25:37 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Fri, 16 Oct 2026 20:29:26 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 		curl-dev 		liburing-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libcurl 		--with-liburing 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Fri, 16 Oct 2026 20:29:26 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Fri, 16 Oct 2026 20:29:26 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Fri, 16 Oct 2026 20:29:26 GMT
ENV PGDATA=/var/lib/postgresql/19/docker
# Fri, 16 Oct 2026 20:29:26 GMT
VOLUME [/var/lib/postgresql]
# Fri, 16 Oct 2026 20:29:26 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:29:26 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Fri, 16 Oct 2026 20:29:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:29:26 GMT
STOPSIGNAL SIGINT
# Fri, 16 Oct 2026 20:29:26 GMT
EXPOSE map[5432/tcp:{}]
# Fri, 16 Oct 2026 20:29:26 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37e6a926cd9007540a78c9cca4871e17e271f9b270a6df1d00f796bec4a4f45`  
		Last Modified: Fri, 16 Oct 2026 20:29:50 GMT  
		Size: 970.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8494ded91545d9823f67254a6e2d8c0a2f3b97deab904de6746e81bfea420510`  
		Last Modified: Fri, 16 Oct 2026 20:29:50 GMT  
		Size: 875.7 KB (875737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517f53e8f630b260658480c9b8eddc6485971f70e1aa0e2f8fa4ccba2fe40e05`  
		Last Modified: Fri, 16 Oct 2026 20:29:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682c77d1a705a664fff4de4fb41d02388611672c653f9bdf1dcd3ffdabe7627c`  
		Last Modified: Fri, 16 Oct 2026 20:29:53 GMT  
		Size: 125.3 MB (125330829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb49b8f729ee8247f985e5b1d73296ec3dae520343ead955239cf95c6a08c9d`  
		Last Modified: Fri, 16 Oct 2026 20:29:52 GMT  
		Size: 21.2 KB (21197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af30c8731af593852db622943fa6fc6b6904942556da94cbc70d064c6091ad88`  
		Last Modified: Fri, 16 Oct 2026 20:29:52 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8489288efa43b03c9ee4c14779c01390e5966e08d93cccc55359850d5fec0e32`  
		Last Modified: Fri, 16 Oct 2026 20:29:52 GMT  
		Size: 6.1 KB (6109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7adff7503e09850fbf20d03950b2c98615bf26d3f37878de50537ee6d7ae6e9d`  
		Last Modified: Fri, 16 Oct 2026 20:29:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:19rc1-alpine` - unknown; unknown

```console
$ docker pull postgres@sha256:5c840a3eec1afb6144e44e9105097c924a52dd6a0de48e9421d2a077ceaa2053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **655.2 KB (655205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7a52dad8b42317c5238bebd870d46b9f5e2376a5a5811674e852608d586169`

```dockerfile
```

-	Layers:
	-	`sha256:7cd7da139d4038437f62072dd711aa822c41a5cbca7690684a837a607f933683`  
		Last Modified: Fri, 16 Oct 2026 20:29:50 GMT  
		Size: 615.4 KB (615385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cf9da62fa07f81beb4c46a61bca5c7c31da06a76d519f1378fc34c87cdcb06b`  
		Last Modified: Fri, 16 Oct 2026 20:29:50 GMT  
		Size: 39.8 KB (39820 bytes)  
		MIME: application/vnd.in-toto+json
