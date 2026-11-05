## `postgres:15-alpine3.23`

```console
$ docker pull postgres@sha256:d93e1d86431e8724a18f26a5e2ef0bf0b9b0266ab5cbf0db28904993e3f05528
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

### `postgres:15-alpine3.23` - linux; amd64

```console
$ docker pull postgres@sha256:031f734c375228d25dc805a9924512ecb4c27311d7eb3fa8b08e99c54859df81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114751204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04191a30cf90f26fc6e958850bb990e1e479c75a6bac03f6b1886af34805bed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:11:35 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:11:38 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:11:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:11:38 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 21:11:38 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:11:38 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:11:38 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 21:11:38 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 21:11:38 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 21:11:38 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:13:45 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:13:45 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:13:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:13:45 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:13:45 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:13:45 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:13:45 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:13:45 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:13:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:13:45 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:13:45 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:13:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b933d95712678beed0cfe88228f87daf40fa856958b3b3bc0be45d91feb5ed9`  
		Last Modified: Wed, 21 Oct 2026 21:14:01 GMT  
		Size: 968.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e0600b2ea2f975a940bf5dd2a2b77b614d2d0ca9f6b42be6caf4d6cb7d80aa`  
		Last Modified: Wed, 21 Oct 2026 21:14:01 GMT  
		Size: 900.0 KB (900013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2bd77cce7e01d8624da3bc7dc6814096e6dcf748f6d015b71da1082c673e01f`  
		Last Modified: Wed, 21 Oct 2026 21:14:01 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc30e1f75d5d146ab70fa29a8ae1b2eec51d8e770a089c0db16dbff709e0aa0`  
		Last Modified: Wed, 21 Oct 2026 21:14:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1846acfacc1069dbc49d2fd9ec0bd204185ac2f47d62abd7bc4f3b3b212285d3`  
		Last Modified: Wed, 21 Oct 2026 21:14:05 GMT  
		Size: 110.0 MB (109981631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627c5ec3f44c455ef538d76e24e6fb561c50ed8eedfe42e9d4d8f45cbe82fb2f`  
		Last Modified: Wed, 21 Oct 2026 21:14:03 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5859a6043af33485d7769eb89974047b4f9f2e1fe6811833f5bf2fa84c892769`  
		Last Modified: Wed, 21 Oct 2026 21:14:03 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f62c036d1003d8594f75577ef70b4b86890230bc53ac244ca8d3b710d0c25491`  
		Last Modified: Wed, 21 Oct 2026 21:14:03 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708757c43a12b39658a2e3cdd99fbb7f853bace1b5f53ec6ee2976482a922327`  
		Last Modified: Wed, 21 Oct 2026 21:14:04 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c5b3aba58c9046439785f5bb38e2162d571ac255335780ba0d50676fb31342`  
		Last Modified: Wed, 21 Oct 2026 21:14:04 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c7dba00dc6a1629832d4ceaec0c7f798b0938b2aa8cd64260d328f7472b12065
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 KB (641226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:310d2a16f30de5dc646b9c66d88b225a0d7346ad8b91687707a358228c09f9dc`

```dockerfile
```

-	Layers:
	-	`sha256:eafb3d95696ea89071d3afe092cf3c6743e6e3da95601f7bb513caeab704b870`  
		Last Modified: Wed, 21 Oct 2026 21:14:01 GMT  
		Size: 597.5 KB (597458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0d1a65d3579575e9dbf916c64b06b426d08d3a403f81681a6878d891e2d4188`  
		Last Modified: Wed, 21 Oct 2026 21:14:01 GMT  
		Size: 43.8 KB (43768 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; arm variant v6

```console
$ docker pull postgres@sha256:9309fe2a0b0a6b7cad23abfb45f6d654b16dcedf041426c81e9bd39170ac3852
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111048790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da326b6dd007a7b7d49bf0475cf33fa0a9946491053e6f212b8a6bd91787e821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:43:59 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:44:02 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:44:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:44:02 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:44:02 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:44:02 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:44:02 GMT
ENV PG_MAJOR=15
# Thu, 05 Nov 2026 18:44:02 GMT
ENV PG_VERSION=15.19
# Thu, 05 Nov 2026 18:44:02 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 05 Nov 2026 18:44:02 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:46:53 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:46:53 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:46:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:46:53 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:46:53 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:46:53 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:46:53 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:46:54 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:46:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:46:54 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:46:54 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:46:54 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5d07fdcaa355e3f0b498e8b757768dbb80e5432341057bea7bec7c260ce8f06`  
		Last Modified: Thu, 05 Nov 2026 18:47:07 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29749c075edef3785e231da27317b74ef320ebeffec0ea19171a9ffd4753e517`  
		Last Modified: Thu, 05 Nov 2026 18:47:07 GMT  
		Size: 864.5 KB (864521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760c49a69f92066221b9318d0995570f863926ee457743d3b9c18c74812cece8`  
		Last Modified: Thu, 05 Nov 2026 18:47:07 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b814028e2a3166f6309982f55ff4e0ef5436ac74fc72f82fedac2911decb4b06`  
		Last Modified: Thu, 05 Nov 2026 18:47:07 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81c6b1d3ea013129d05d0366c6ad83dd5592eaf7dd0613aa657a7ff401c96c7f`  
		Last Modified: Thu, 05 Nov 2026 18:47:11 GMT  
		Size: 106.6 MB (106608692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da969bc35f87fca18e2973d2ccf1403a0f32adbcdf8de2d103ac5661f183b63`  
		Last Modified: Thu, 05 Nov 2026 18:47:08 GMT  
		Size: 9.5 KB (9487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97feddfec052725e222125a446f62aee9b24edb4e07d056f96782b98d9f4a87`  
		Last Modified: Thu, 05 Nov 2026 18:47:08 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f72dac22f240a696a87dc54f917b1c77f219b02e6bf9698c3c4efd16da4298`  
		Last Modified: Thu, 05 Nov 2026 18:47:08 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddd673e94fa2fad498fd6c50951b63931355cc839ca7e6fa59c0ba3b7c65c72`  
		Last Modified: Thu, 05 Nov 2026 18:47:10 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d273e36eeb3f5ab24636eed42a70fa869356b96e4e835f36a30181e90376a63a`  
		Last Modified: Thu, 05 Nov 2026 18:47:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:233dc45f5649ee2f4302feff419f531eadf1b74491a72b3b28c0856efcc43418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.7 KB (43721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8fdfa0fec1925ff4d13c95e473e8850d7a01581dc2937a127f843740381dbcb`

```dockerfile
```

-	Layers:
	-	`sha256:bb2214588ae374058b320366cf1ca37ab9f40c52f80ebc30b1429fa88e352ad4`  
		Last Modified: Thu, 05 Nov 2026 18:47:07 GMT  
		Size: 43.7 KB (43721 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; arm variant v7

```console
$ docker pull postgres@sha256:825081201cdc62ba75357889ad1efb5ceac562c6259473847ca8461bdb422db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.8 MB (104766045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7319ec1373418c140742cfae0f143c826369084a55754d2b76946d9a9c1e3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:43:04 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:43:07 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:43:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:43:07 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:43:07 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:43:07 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:43:07 GMT
ENV PG_MAJOR=15
# Thu, 05 Nov 2026 18:43:07 GMT
ENV PG_VERSION=15.19
# Thu, 05 Nov 2026 18:43:07 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 05 Nov 2026 18:43:07 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:45:54 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:45:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:45:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:45:54 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:45:54 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:45:54 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:45:54 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:45:55 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:45:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:45:55 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:45:55 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:45:55 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42daee3f166ee8ce9b9a34a19166a0620ae5364b8a8c8d227fba3964be47a0f5`  
		Last Modified: Thu, 05 Nov 2026 18:46:07 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2a66c6d02098028ec6e808714d69ebe2d8d2c4f156b6ca1d57a7eca9ecbf5f`  
		Last Modified: Thu, 05 Nov 2026 18:46:08 GMT  
		Size: 864.5 KB (864526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67e5339b60a60ea799612ba6531cc50d8a0afc42a6ee285ad6513e5962b8fc5`  
		Last Modified: Thu, 05 Nov 2026 18:46:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dcbf586c2130b0795c651c54c090f1523dacd0ebebd4a0625babee79ed328f`  
		Last Modified: Thu, 05 Nov 2026 18:46:08 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8582d06dd0d9de1659161a9805b20c9ac2fa13d61129fba47a58a7c85bcbbbf4`  
		Last Modified: Thu, 05 Nov 2026 18:46:11 GMT  
		Size: 100.6 MB (100617358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901150dd220b3e320aaadf307174b807a03b92399ac6f091aae01e754bd9af0d`  
		Last Modified: Thu, 05 Nov 2026 18:46:09 GMT  
		Size: 9.5 KB (9490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b36397ed44a9ea784c2fbb653e5847b0a46c56f8a6fe7e265521eb0b6e426b5`  
		Last Modified: Thu, 05 Nov 2026 18:46:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6f01554f1307690b070d1433d6387e69eca23d3acdb4206722056f05906015`  
		Last Modified: Thu, 05 Nov 2026 18:46:09 GMT  
		Size: 166.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758555c5a3d128f8bdadfd265241967dd50f922daeb30206756f53d4cfa3a03a`  
		Last Modified: Thu, 05 Nov 2026 18:46:10 GMT  
		Size: 6.1 KB (6106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4c0001a493d689e1957250afdb48ad450c9693d388703eb894c554a053725a`  
		Last Modified: Thu, 05 Nov 2026 18:46:10 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:6f97510e2a2295664149ca81f514013a61924554795556dc97b9c9eb146a86b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.8 KB (640764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24bdfc33b5f7718a025e2795c1f62cd7011fe68acbe76361cc41419c55ef43a1`

```dockerfile
```

-	Layers:
	-	`sha256:07db3b89079edf1cf33ff6fc3a47982713a9be71753ee4e79f57074f5f503fa1`  
		Last Modified: Thu, 05 Nov 2026 18:46:08 GMT  
		Size: 596.8 KB (596828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57e91d69227b60888009acccfefa2b0050969fc2e3966f331f19e763643147ae`  
		Last Modified: Thu, 05 Nov 2026 18:46:08 GMT  
		Size: 43.9 KB (43936 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:73c52dce7c11dfce66693d4aabe71bbf9011a4afffb50d163df7c92573c20f93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.6 MB (112578927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8384fc52b559f1e7691303a54728b14686f9fbb8d132d0adc5c95c259b13eba5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:25 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:10:34 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:10:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:10:34 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 21:10:34 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:10:34 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:10:34 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 21:10:34 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 21:10:34 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 21:10:34 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:12:48 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:12:48 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:12:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:12:48 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:12:48 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:12:48 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:12:48 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:12:48 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:12:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:12:48 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:12:48 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:12:48 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8c289577c1da607356a96f62e9aa4989de837d502a196d1f1d7ab3c83c4cdf`  
		Last Modified: Wed, 21 Oct 2026 21:13:03 GMT  
		Size: 967.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b2378377cfa45a31999930ac90eb688ed2ede734b414b0262f560b22b6807c5`  
		Last Modified: Wed, 21 Oct 2026 21:13:04 GMT  
		Size: 852.0 KB (852032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7afaed3ca0a728b09ead9e31b37d7c35d525870d714eb05cc0c147189c596ffc`  
		Last Modified: Wed, 21 Oct 2026 21:13:03 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5281ad0b0c93fc386949201398c2e5aca777cf3ec80f51af4f2a6943dc8de2e`  
		Last Modified: Wed, 21 Oct 2026 21:13:04 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13721feab44837bede4bf0f0f201859d3a0e9c8ed8dba8985067e8a84b53b6c`  
		Last Modified: Wed, 21 Oct 2026 21:13:07 GMT  
		Size: 107.5 MB (107520075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f76758882b88372ffe1e70132f1dff0d42bec897158153dbc59c5b3b28b20e`  
		Last Modified: Wed, 21 Oct 2026 21:13:05 GMT  
		Size: 9.5 KB (9488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9999948c3953f89b6ed43b204822225fda6eaeed0c2720acbb0fd6cbff920062`  
		Last Modified: Wed, 21 Oct 2026 21:13:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76542d09cf3ad7aeb758a705571e881faeb87e8ded5e52a8ff0fe3c81879fa4f`  
		Last Modified: Wed, 21 Oct 2026 21:13:05 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659d375beb923b34795700e02ea835a0e9c3653211a7d661ad86926823198c74`  
		Last Modified: Wed, 21 Oct 2026 21:13:06 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e794191cceb4eabd71f37d32ee39524fcb88573e804ca05f326ca01bad46afac`  
		Last Modified: Wed, 21 Oct 2026 21:13:06 GMT  
		Size: 183.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:c52cd8fe82ec075b248430ada783e85d1a726513f45b09a3655378e5a6721623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.8 KB (640808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeb345124f4bb5320caf9733fdf39e76730b42c89b72ee7200c080425b39659f`

```dockerfile
```

-	Layers:
	-	`sha256:677f42fdce5e7c3ba764f56bfc64d5012a6e800439a60b80a6bf8608fdf520b2`  
		Last Modified: Wed, 21 Oct 2026 21:13:04 GMT  
		Size: 596.8 KB (596840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:43743ebf97cd8140c2f3a33dda3e55452054e572271285ef351f2ac9670e1088`  
		Last Modified: Wed, 21 Oct 2026 21:13:04 GMT  
		Size: 44.0 KB (43968 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; 386

```console
$ docker pull postgres@sha256:3de3b4a7eb84df0d4bba2570f2ceefb905e6a7b7991dddd0ccb8a091afa6676f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121439119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9cbfec043c4ba20b9b5689c49e5c295b20f3ce4300530537ddfb29b0f7a40e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:28:05 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 05 Nov 2026 18:28:08 GMT
ENV GOSU_VERSION=1.19
# Thu, 05 Nov 2026 18:28:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 05 Nov 2026 18:28:09 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 05 Nov 2026 18:28:09 GMT
ENV LANG=en_US.utf8
# Thu, 05 Nov 2026 18:28:09 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 05 Nov 2026 18:28:09 GMT
ENV PG_MAJOR=15
# Thu, 05 Nov 2026 18:28:09 GMT
ENV PG_VERSION=15.19
# Thu, 05 Nov 2026 18:28:09 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 05 Nov 2026 18:28:09 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 05 Nov 2026 18:30:39 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 05 Nov 2026 18:30:40 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 05 Nov 2026 18:30:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 05 Nov 2026 18:30:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 05 Nov 2026 18:30:40 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 05 Nov 2026 18:30:40 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 05 Nov 2026 18:30:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:30:40 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 05 Nov 2026 18:30:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:30:40 GMT
STOPSIGNAL SIGINT
# Thu, 05 Nov 2026 18:30:40 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 05 Nov 2026 18:30:40 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849d6dd6bdeae3ca8006886c875064092f4095195653fe1af1b32942d03d3da1`  
		Last Modified: Thu, 05 Nov 2026 18:30:56 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:999e5696c1d088833096c1d2234f5bdce64d16f49d6992b4a43f6f906a6856da`  
		Last Modified: Thu, 05 Nov 2026 18:30:56 GMT  
		Size: 868.0 KB (868037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88762673ec03013d38da5e968105d4202f810bbfbd4ae26ef6e0ec141d9081c1`  
		Last Modified: Thu, 05 Nov 2026 18:30:56 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e8f453a2a08697b9de7be3ef9901fa9edc0b0da1f90321deae6e788506c4bdd`  
		Last Modified: Thu, 05 Nov 2026 18:30:56 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1510920cd18316db3545b270296f6ec0a81926cf65b07820fa55fea2cd5b83c2`  
		Last Modified: Thu, 05 Nov 2026 18:31:00 GMT  
		Size: 116.9 MB (116875164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c23ccfb15ec04c155c88b5ec5966053fa2ee621a79530c6e22338144ddce20`  
		Last Modified: Thu, 05 Nov 2026 18:30:57 GMT  
		Size: 9.5 KB (9491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0ce5df7a796e68318557294e93845df21776cf390a130852e2a47de8c246f1`  
		Last Modified: Thu, 05 Nov 2026 18:30:58 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01495210dc417f57659c4ce5dee7d40b80be68d102ca07fd04cbc7f6fd23781`  
		Last Modified: Thu, 05 Nov 2026 18:30:58 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3dd2b4617cb48ab409153ff0bb9abf11f139d89ee1e6bae6b7b95dc32d5e9d`  
		Last Modified: Thu, 05 Nov 2026 18:30:59 GMT  
		Size: 6.1 KB (6108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a34d73b37bdcb921a1e6343c388a0c8f43695311b0e0bbdbe04c509f126b5062`  
		Last Modified: Thu, 05 Nov 2026 18:30:59 GMT  
		Size: 184.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b354bacbc0351d98bac3f510c9ea40341bc153704d0f2603a16bdd45e16096b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.2 KB (641173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e44c2c87ab9c0890be3145d7e4edbff12659874ed85d6fc9857334b21e4ee43e`

```dockerfile
```

-	Layers:
	-	`sha256:e18e8c73e540e1c519b10222640eafb051e67f30f34493e12f1669c3e7e27a62`  
		Last Modified: Thu, 05 Nov 2026 18:30:56 GMT  
		Size: 597.4 KB (597443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2454008fc65b385b236445d17cafcf24afc1df28c3bf43e281f41c02b0934c9b`  
		Last Modified: Thu, 05 Nov 2026 18:30:56 GMT  
		Size: 43.7 KB (43730 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; ppc64le

```console
$ docker pull postgres@sha256:e3f852e7af3857c1475c097483bc3ca35dfb377227d4225894a8bd580340d367
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117410052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc25e368a5faabdabe410990e0f1f8afd0020a7de16bb09c5d77fd71ef744856`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 12:49:40 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Thu, 22 Oct 2026 12:49:46 GMT
ENV GOSU_VERSION=1.19
# Thu, 22 Oct 2026 12:49:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 22 Oct 2026 13:11:25 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Thu, 22 Oct 2026 13:11:25 GMT
ENV LANG=en_US.utf8
# Thu, 22 Oct 2026 13:11:26 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Thu, 22 Oct 2026 13:11:26 GMT
ENV PG_MAJOR=15
# Thu, 22 Oct 2026 13:11:26 GMT
ENV PG_VERSION=15.19
# Thu, 22 Oct 2026 13:11:26 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Thu, 22 Oct 2026 13:11:26 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Thu, 22 Oct 2026 13:21:38 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Thu, 22 Oct 2026 13:21:38 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Thu, 22 Oct 2026 13:21:38 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Thu, 22 Oct 2026 13:21:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Thu, 22 Oct 2026 13:21:39 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Thu, 22 Oct 2026 13:21:39 GMT
VOLUME [/var/lib/postgresql/data]
# Thu, 22 Oct 2026 13:21:40 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 13:21:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Thu, 22 Oct 2026 13:21:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 22 Oct 2026 13:21:41 GMT
STOPSIGNAL SIGINT
# Thu, 22 Oct 2026 13:21:41 GMT
EXPOSE map[5432/tcp:{}]
# Thu, 22 Oct 2026 13:21:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29016c1b0c37476485c6723fd1c22e3f326493672403f562f01b5a78a8f816fa`  
		Last Modified: Thu, 22 Oct 2026 12:58:43 GMT  
		Size: 969.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f8b483870d9789ff989a9dcde8a3893be2f44050551868e03326dc77d67191e`  
		Last Modified: Thu, 22 Oct 2026 12:58:43 GMT  
		Size: 857.2 KB (857209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d29b8295d043d34affaef90abf88865472bacf55ad4de58ee599ac04aaddcb2`  
		Last Modified: Thu, 22 Oct 2026 13:16:44 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed409809b3f561c9911badc126896c369e7d1fb3fb645f68e6598d829f7c6fe`  
		Last Modified: Thu, 22 Oct 2026 13:16:44 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6e725d7a3835320dec744d505136d6528181d85157e12e66b6266d134cbf41`  
		Last Modified: Thu, 22 Oct 2026 13:22:29 GMT  
		Size: 112.7 MB (112717123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f613e14e9d1efd9620569ade5475cf15848db835737e19407ea3bb1b7d01a23`  
		Last Modified: Thu, 22 Oct 2026 13:22:26 GMT  
		Size: 9.5 KB (9491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512356724a907cdec7b832e15bd1261d5b72e6c7075a0de37428364a0fc28f5f`  
		Last Modified: Thu, 22 Oct 2026 13:22:26 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc37b3f35f91579667a25afc56ef65300228323f5704d267d62d7840dfe9d630`  
		Last Modified: Thu, 22 Oct 2026 13:22:26 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9214c7afc739c8272c9b7a768f23a32802ab8c8a15f3bde3be897354819367`  
		Last Modified: Thu, 22 Oct 2026 13:22:28 GMT  
		Size: 6.1 KB (6110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805d6ad9284bb3ab889d895136670e60d61dc6eb5077d3fea5f1d57ff911a68d`  
		Last Modified: Thu, 22 Oct 2026 13:22:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:7bbcb70cb262d12127b9d822494b9793f0158bafce85d13241e6ebe52aced0c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.0 KB (638983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb0c96cbc573e488fa8cc253a90f689e97164c91d5bcd23a1e5fe76e45f56c24`

```dockerfile
```

-	Layers:
	-	`sha256:5bb9c2fffdfabbe8a27e4d9ef1fa8859bee397b7b0e91befb193e1f8828f94b2`  
		Last Modified: Thu, 22 Oct 2026 13:22:26 GMT  
		Size: 595.2 KB (595167 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7235c5678c5dd7bec32c6f2bec4d4d3b92da432ec9e6bc3f191da09e18b51171`  
		Last Modified: Thu, 22 Oct 2026 13:22:26 GMT  
		Size: 43.8 KB (43816 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; riscv64

```console
$ docker pull postgres@sha256:b3e5f4fa24248c040c7475df20266781c915eef891cfdb8263245a412811443e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116745294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ea5c1b0f62d9df3ab1c1cab2b947831f12e1392bb66686b5aedb3e492d0f6f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sun, 25 Oct 2026 23:44:52 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Sun, 25 Oct 2026 23:45:04 GMT
ENV GOSU_VERSION=1.19
# Sun, 25 Oct 2026 23:45:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 05:51:01 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Mon, 26 Oct 2026 05:51:01 GMT
ENV LANG=en_US.utf8
# Mon, 26 Oct 2026 05:51:01 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Mon, 26 Oct 2026 05:51:01 GMT
ENV PG_MAJOR=15
# Mon, 26 Oct 2026 05:51:01 GMT
ENV PG_VERSION=15.19
# Mon, 26 Oct 2026 05:51:01 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Mon, 26 Oct 2026 05:51:01 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Mon, 26 Oct 2026 08:40:23 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Mon, 26 Oct 2026 08:40:23 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Mon, 26 Oct 2026 08:40:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Mon, 26 Oct 2026 08:40:24 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 26 Oct 2026 08:40:24 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Mon, 26 Oct 2026 08:40:24 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 26 Oct 2026 08:40:24 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Mon, 26 Oct 2026 08:40:24 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Mon, 26 Oct 2026 08:40:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Oct 2026 08:40:24 GMT
STOPSIGNAL SIGINT
# Mon, 26 Oct 2026 08:40:24 GMT
EXPOSE map[5432/tcp:{}]
# Mon, 26 Oct 2026 08:40:24 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdf3bb30336e9099930e9c06bafc263dbcd40ea9bf0a5e1a08cd19e0ed3dc21`  
		Last Modified: Mon, 26 Oct 2026 00:43:24 GMT  
		Size: 973.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e3038e9a84d63a662f38e4cbf10530f85f4ada662aba3b30cbe1f2733e0481`  
		Last Modified: Mon, 26 Oct 2026 00:43:24 GMT  
		Size: 844.7 KB (844712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:828d204675428ec9a966506d926dcffb6fb06eb6acf32b346d4a0c42d6b3ffeb`  
		Last Modified: Mon, 26 Oct 2026 06:48:13 GMT  
		Size: 177.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efb14ab5ddb051b82e9e810ae5e8dcb063b96edf00e1460a7797287bd4347a3`  
		Last Modified: Mon, 26 Oct 2026 06:48:13 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e757abcc6e77a1063cfdd586a48872b083d9d1ccff9e82e4aa528381039968`  
		Last Modified: Mon, 26 Oct 2026 08:43:54 GMT  
		Size: 112.3 MB (112303610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1fca9bae214ce125905f53c58e731d9bc96d1a9e2e4fb2582e3fcdf3dceaaf`  
		Last Modified: Mon, 26 Oct 2026 08:43:37 GMT  
		Size: 9.5 KB (9498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d538e024e4f79cff1b91f1c83cc1f29e18ab94c81ca1f5df069a0bb1f8e87a`  
		Last Modified: Mon, 26 Oct 2026 08:43:37 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411296c1a618e4b1cd7acaa6533cafe25339e0cd3525c51a1e48df25f8a85bd1`  
		Last Modified: Mon, 26 Oct 2026 08:43:37 GMT  
		Size: 169.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83dc5c78d14e8c6b6349a54f00783213c7eeac0bf8e6b07da93508d80da04722`  
		Last Modified: Mon, 26 Oct 2026 08:43:39 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c3e74fe9541b2f2719ad99f60297edf19402ea46903a9e5db2884519f1133f`  
		Last Modified: Mon, 26 Oct 2026 08:43:39 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:b616ad0cef0d87720e53211c048cd8e7a1ac57894a23a463ee225324a6054a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.6 KB (640641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7125afd90e516934d22185d7da3093e20c01e3dc1babbc3f6cff685ab42039eb`

```dockerfile
```

-	Layers:
	-	`sha256:570e0260a3e11fcd6732c8ebdecb792bfc98a956780b1753fb08e506fdd98f3a`  
		Last Modified: Mon, 26 Oct 2026 08:43:37 GMT  
		Size: 596.8 KB (596825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5498795adaf80e8c943d76a7da483ef476b0e5fcb3a3671a6abda9b27002eda`  
		Last Modified: Mon, 26 Oct 2026 08:43:37 GMT  
		Size: 43.8 KB (43816 bytes)  
		MIME: application/vnd.in-toto+json

### `postgres:15-alpine3.23` - linux; s390x

```console
$ docker pull postgres@sha256:9819f20a62c32b807548dff28d43805d5f86a4a32980eddc7a69d956e52a51c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121231894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b37727d0f376cc1191e308ad9450506fe6e5da531394987a6df86620ca16888`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Wed, 21 Oct 2026 20:45:54 GMT
ADD alpine-minirootfs-3.23.7-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:45:54 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:20:32 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	install --verbose --directory --owner postgres --group postgres --mode 1777 /var/lib/postgresql # buildkit
# Wed, 21 Oct 2026 21:20:35 GMT
ENV GOSU_VERSION=1.19
# Wed, 21 Oct 2026 21:20:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 21 Oct 2026 21:24:40 GMT
RUN set -eux; ln -svf gosu /usr/local/bin/su-exec; su-exec nobody true # backwards compatibility (removed in PostgreSQL 17+) # buildkit
# Wed, 21 Oct 2026 21:24:40 GMT
ENV LANG=en_US.utf8
# Wed, 21 Oct 2026 21:24:40 GMT
RUN mkdir /docker-entrypoint-initdb.d # buildkit
# Wed, 21 Oct 2026 21:24:40 GMT
ENV PG_MAJOR=15
# Wed, 21 Oct 2026 21:24:40 GMT
ENV PG_VERSION=15.19
# Wed, 21 Oct 2026 21:24:40 GMT
ENV PG_SHA256=e1a64a87a46b825b88c082e4518161a47aab53c45694964f8ba1df28f7859f89
# Wed, 21 Oct 2026 21:24:40 GMT
ENV DOCKER_PG_LLVM_DEPS=llvm21-dev 		clang21
# Wed, 21 Oct 2026 21:27:40 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		$DOCKER_PG_LLVM_DEPS 		bison 		coreutils 		dpkg-dev dpkg 		flex 		g++ 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 		lz4-dev 		zstd-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 		export LLVM_CONFIG="/usr/lib/llvm21/bin/llvm-config"; 	export CLANG=clang-21; 		./configure 		--enable-option-checking=fatal 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-gssapi 		--with-icu 		--with-ldap 		--with-libxml 		--with-libxslt 		--with-llvm 		--with-lz4 		--with-openssl 		--with-perl 		--with-python 		--with-tcl 		--with-zstd 	; 	make -j "$(nproc)" world-bin; 	make install-world-bin; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version # buildkit
# Wed, 21 Oct 2026 21:27:41 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample # buildkit
# Wed, 21 Oct 2026 21:27:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 3777 /var/run/postgresql # buildkit
# Wed, 21 Oct 2026 21:27:41 GMT
ENV PGDATA=/var/lib/postgresql/data
# Wed, 21 Oct 2026 21:27:41 GMT
RUN install --verbose --directory --owner postgres --group postgres --mode 1777 "$PGDATA" # buildkit
# Wed, 21 Oct 2026 21:27:41 GMT
VOLUME [/var/lib/postgresql/data]
# Wed, 21 Oct 2026 21:27:41 GMT
COPY docker-entrypoint.sh docker-ensure-initdb.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:27:41 GMT
RUN ln -sT docker-ensure-initdb.sh /usr/local/bin/docker-enforce-initdb.sh # buildkit
# Wed, 21 Oct 2026 21:27:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 21:27:41 GMT
STOPSIGNAL SIGINT
# Wed, 21 Oct 2026 21:27:41 GMT
EXPOSE map[5432/tcp:{}]
# Wed, 21 Oct 2026 21:27:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:4f7b52b02a0ce5cc0125984e2e978bec03762b154ac5233175a21828f25dac5c`  
		Last Modified: Wed, 21 Oct 2026 20:46:02 GMT  
		Size: 3.7 MB (3717119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c950a25b78997e86d5b309c637cdddccfeb5d98a343b24b813c3fcd6ef1a6ce6`  
		Last Modified: Wed, 21 Oct 2026 21:24:19 GMT  
		Size: 971.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd4c1edeb4d0228176bf3bfb345bbee5f3af911d694a978042ac01deb24a5b0`  
		Last Modified: Wed, 21 Oct 2026 21:24:19 GMT  
		Size: 874.2 KB (874209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70488854d323ca8825d05dc1ffc2c95f862bbf80fcb985797c90c23b108a6855`  
		Last Modified: Wed, 21 Oct 2026 21:28:05 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63a5c6499dacc801a7b600d0e33f37645509576a3a18d9d42989c488feb3572`  
		Last Modified: Wed, 21 Oct 2026 21:28:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27263101cc89c5c19547a450abf6eb794c985f39a3ee76c64fadf4b5c655d62f`  
		Last Modified: Wed, 21 Oct 2026 21:28:08 GMT  
		Size: 116.6 MB (116623217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:940e973bd548bc66023d8c7e9eab21c62c4e3f9fedb96cc7ac7ace51481f338b`  
		Last Modified: Wed, 21 Oct 2026 21:28:06 GMT  
		Size: 9.5 KB (9495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208578157fb6d1cf2ff3aaa8d04143a3944832b70b71a12f3025bc3006f0cd79`  
		Last Modified: Wed, 21 Oct 2026 21:28:07 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bfe5bd56e8914c29b79afc7e5ce2cd4cf057fc02c796b5f9360fcbb4df3d8b`  
		Last Modified: Wed, 21 Oct 2026 21:28:07 GMT  
		Size: 167.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c74e415b5e04cac800473475649368dab4a6a95c2025436d4bb1f293c91b4e5a`  
		Last Modified: Wed, 21 Oct 2026 21:28:07 GMT  
		Size: 6.1 KB (6113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf31ee98c74dbe7049196884adcfcd6e00a89967716d9f4f50e9243eda48aa0`  
		Last Modified: Wed, 21 Oct 2026 21:28:08 GMT  
		Size: 186.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postgres:15-alpine3.23` - unknown; unknown

```console
$ docker pull postgres@sha256:4a6a7b69f21d601860fec71c7d96f86a94d0a709befca080e329a5629aa89c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.6 KB (640575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3fe32ba018d074cbea987a3f292ffa2b46ac001f599068abab1c3b5061b1207`

```dockerfile
```

-	Layers:
	-	`sha256:88ac7ba2024a46cb5dba854aa009d30ba6f2cd65f384bca3753a480bd0248626`  
		Last Modified: Wed, 21 Oct 2026 21:28:06 GMT  
		Size: 596.8 KB (596807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a25dca390bba94df27ee07ee11f617d5bc2ccc1b5fbf52aad39f146b781b139`  
		Last Modified: Wed, 21 Oct 2026 21:28:05 GMT  
		Size: 43.8 KB (43768 bytes)  
		MIME: application/vnd.in-toto+json
