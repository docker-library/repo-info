## `postgres:13-alpine3.17`

```console
$ docker pull postgres@sha256:46e0328440ac2b9bb0e22cd07eba248a95f1e575256850a0ef98995891bb9af6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 7
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `postgres:13-alpine3.17` - linux; amd64

```console
$ docker pull postgres@sha256:e2a179f4e4498e1e9560bbf745153196a5efdcccc455b53622acf389f1822e6f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.0 MB (91974245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e750948d39a619e482830c68605731d189c2ef95ad88dab16ac69ef36db0bd3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 19:21:00 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 09 Jan 2023 19:21:00 GMT
ENV LANG=en_US.utf8
# Mon, 09 Jan 2023 19:21:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Jan 2023 19:27:04 GMT
ENV PG_MAJOR=13
# Mon, 09 Jan 2023 19:27:04 GMT
ENV PG_VERSION=13.9
# Mon, 09 Jan 2023 19:27:04 GMT
ENV PG_SHA256=ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
# Mon, 09 Jan 2023 19:29:42 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		llvm-dev clang g++ 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb'; 	wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb'; 	./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-krb5 		--with-gssapi 		--with-ldap 		--with-tcl 		--with-perl 		--with-python 		--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 		--with-llvm 	; 	make -j "$(nproc)" world; 	make install-world; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version
# Mon, 09 Jan 2023 19:29:43 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 09 Jan 2023 19:29:44 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 09 Jan 2023 19:29:44 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 09 Jan 2023 19:29:44 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Mon, 09 Jan 2023 19:29:45 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 09 Jan 2023 19:29:45 GMT
COPY file:8532d121e17f2ce9a5f749e2bb1c2800d41f880daad16051150ea9824a2ed88f in /usr/local/bin/ 
# Mon, 09 Jan 2023 19:29:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 19:29:45 GMT
STOPSIGNAL SIGINT
# Mon, 09 Jan 2023 19:29:45 GMT
EXPOSE 5432
# Mon, 09 Jan 2023 19:29:45 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb286326f602388731b6b7d5ea90c1396c25225841d81c9a1e28c6020be1e322`  
		Last Modified: Mon, 09 Jan 2023 19:36:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63139c77dd7e81ef958b7ecd822c2f71cfa0a9920fd8f46a9bc6e98569b4c5b6`  
		Last Modified: Mon, 09 Jan 2023 19:36:00 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf0c69115526d13b0e28d224970abc0f82b6616bd8cc47805fc45801eda9505`  
		Last Modified: Mon, 09 Jan 2023 19:37:08 GMT  
		Size: 88.6 MB (88588018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ccd67cfd6aa572890bbff17ce9ffb7770271446ac82cea200c186e84992f9ae`  
		Last Modified: Mon, 09 Jan 2023 19:36:56 GMT  
		Size: 9.0 KB (9025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d825238af7aaf141851fff6f5007f813605b175d3c34a0824c8d38a6515c8b8d`  
		Last Modified: Mon, 09 Jan 2023 19:36:56 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99e003736e1650023b8a56c8416c2555c58bdb866cffa7623a358a4ae56f2436`  
		Last Modified: Mon, 09 Jan 2023 19:36:56 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:616766a2f35e3853c859f417d02d88ef032325990d21d47ea03a625b40541483`  
		Last Modified: Mon, 09 Jan 2023 19:36:56 GMT  
		Size: 4.8 KB (4783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:13-alpine3.17` - linux; arm variant v6

```console
$ docker pull postgres@sha256:58616381e8a274fd3775da4c77119f9db4828cd9cb99b685b2948c566cc4974d
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89792097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a9527bf0de2fa973d86177f53bad23b5208bd6be5aa62cef398239bfab1cf2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:54 GMT
ADD file:b15fd8e9f996815394e25f20c8459bfb4c2a8c4074592d6f4c75f4fe79ce537e in / 
# Mon, 09 Jan 2023 17:04:55 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 23:30:27 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 09 Jan 2023 23:30:27 GMT
ENV LANG=en_US.utf8
# Mon, 09 Jan 2023 23:30:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Jan 2023 23:37:38 GMT
ENV PG_MAJOR=13
# Mon, 09 Jan 2023 23:37:38 GMT
ENV PG_VERSION=13.9
# Mon, 09 Jan 2023 23:37:38 GMT
ENV PG_SHA256=ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
# Mon, 09 Jan 2023 23:40:27 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		llvm-dev clang g++ 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb'; 	wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb'; 	./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-krb5 		--with-gssapi 		--with-ldap 		--with-tcl 		--with-perl 		--with-python 		--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 		--with-llvm 	; 	make -j "$(nproc)" world; 	make install-world; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version
# Mon, 09 Jan 2023 23:40:28 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 09 Jan 2023 23:40:29 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 09 Jan 2023 23:40:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 09 Jan 2023 23:40:29 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Mon, 09 Jan 2023 23:40:29 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 09 Jan 2023 23:40:29 GMT
COPY file:8532d121e17f2ce9a5f749e2bb1c2800d41f880daad16051150ea9824a2ed88f in /usr/local/bin/ 
# Mon, 09 Jan 2023 23:40:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 23:40:30 GMT
STOPSIGNAL SIGINT
# Mon, 09 Jan 2023 23:40:30 GMT
EXPOSE 5432
# Mon, 09 Jan 2023 23:40:30 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:0269c10e600f3a375f36ddabdbd264ce9503a455f0d0969ce8a00f24eaecc032`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.1 MB (3107243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909c72a9df3baa262940fa4442cb689b379ea4290fcf09350e2be758d22abf63`  
		Last Modified: Mon, 09 Jan 2023 23:47:30 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0351a3586f66e0818c6c33de9468bf6f24569571ba6aa82f79d8b9d00413826`  
		Last Modified: Mon, 09 Jan 2023 23:47:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52c030b13e9edc3445b55823db75d5b979375adfa38454da0fd8f3168efad12`  
		Last Modified: Mon, 09 Jan 2023 23:48:58 GMT  
		Size: 86.7 MB (86669384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707d16e21ffacb0351cb2bb23007b78c1b56777037ddcec995c4fb1802d99dab`  
		Last Modified: Mon, 09 Jan 2023 23:48:42 GMT  
		Size: 9.0 KB (9025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20c019ad65a9e30d7c23667fedba5f20e49a03e12c909e3ba2718272fbe8264d`  
		Last Modified: Mon, 09 Jan 2023 23:48:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb7f6aa4ab6f35338fd00c482bf52b607375a354b910905e098d1149c751ca9d`  
		Last Modified: Mon, 09 Jan 2023 23:48:42 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a0f1060682209545a795c704945c0d0ce68d078af2a9988cbd97b7b190ee7a`  
		Last Modified: Mon, 09 Jan 2023 23:48:42 GMT  
		Size: 4.8 KB (4780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:13-alpine3.17` - linux; arm variant v7

```console
$ docker pull postgres@sha256:dbe6c72430d49b8367a71b30542c1c8ad9354648b9113ee563772062153bdc34
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.5 MB (84484927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e803f63b0762a72434c7eb54811c826391549eecb85974fab2e397a7cbd6a3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Jan 2023 17:06:27 GMT
ADD file:4696f25d0f019b27457c55b3b128b70bf153f38e3e4eb5bdfc21058543313e94 in / 
# Mon, 09 Jan 2023 17:06:27 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 21:46:30 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 09 Jan 2023 21:46:30 GMT
ENV LANG=en_US.utf8
# Mon, 09 Jan 2023 21:46:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Jan 2023 21:53:03 GMT
ENV PG_MAJOR=13
# Mon, 09 Jan 2023 21:53:03 GMT
ENV PG_VERSION=13.9
# Mon, 09 Jan 2023 21:53:03 GMT
ENV PG_SHA256=ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
# Mon, 09 Jan 2023 21:55:38 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		llvm-dev clang g++ 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb'; 	wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb'; 	./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-krb5 		--with-gssapi 		--with-ldap 		--with-tcl 		--with-perl 		--with-python 		--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 		--with-llvm 	; 	make -j "$(nproc)" world; 	make install-world; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version
# Mon, 09 Jan 2023 21:55:39 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 09 Jan 2023 21:55:40 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 09 Jan 2023 21:55:40 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 09 Jan 2023 21:55:41 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Mon, 09 Jan 2023 21:55:41 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 09 Jan 2023 21:55:41 GMT
COPY file:8532d121e17f2ce9a5f749e2bb1c2800d41f880daad16051150ea9824a2ed88f in /usr/local/bin/ 
# Mon, 09 Jan 2023 21:55:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 21:55:41 GMT
STOPSIGNAL SIGINT
# Mon, 09 Jan 2023 21:55:41 GMT
EXPOSE 5432
# Mon, 09 Jan 2023 21:55:41 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:c527615e4ffa2d5b9b777fd469b3b5ba7c1b1e9201c065be2c43569de48a3754`  
		Last Modified: Mon, 09 Jan 2023 17:07:17 GMT  
		Size: 2.9 MB (2865208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd4157fd012b33b3e7ad71ecb79e6bed245bc640c620f0976b111fc558b9afa2`  
		Last Modified: Mon, 09 Jan 2023 22:04:00 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4a6cf5c34a0f5b36fbe4cb9ff9e7a04f57e2c06d6b6e46a114bff6f6473005`  
		Last Modified: Mon, 09 Jan 2023 22:04:00 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a856913ef4315130225ba7763c291ccdf02aae8d5005ff7ed611f870b1bc2f2`  
		Last Modified: Mon, 09 Jan 2023 22:05:25 GMT  
		Size: 81.6 MB (81604247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d12d43e060260a8f167f40bed1b219b68957e755ba6302781ba0e2697f82fd50`  
		Last Modified: Mon, 09 Jan 2023 22:05:13 GMT  
		Size: 9.0 KB (9028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b353e1f2ee5cd58a7145b3b4115558cbecf5b0a5daf649f0cd9811288d1908`  
		Last Modified: Mon, 09 Jan 2023 22:05:13 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7758b00ab5d83a77c28f2ab3f737f1bfe7419570aed232387acfafe9a620431d`  
		Last Modified: Mon, 09 Jan 2023 22:05:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a2164ea2b131b0e0ec6d2a016959183c95719266144544f79ec16997a1a60b`  
		Last Modified: Mon, 09 Jan 2023 22:05:13 GMT  
		Size: 4.8 KB (4782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:13-alpine3.17` - linux; arm64 variant v8

```console
$ docker pull postgres@sha256:35c1ac0667b7a2eb705e7fd85463ceeda1cf9abfc30ddd95492af840644cbd12
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.7 MB (89745593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72a206914ca069907cadf35439aef7badd284a521f35a2ee25184b0e138040cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Jan 2023 17:04:48 GMT
ADD file:3080f19f39259a4b77cc53975de0184c78d4335ceb9ffb77a2838d0539ad6f85 in / 
# Mon, 09 Jan 2023 17:04:49 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:48:08 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 09 Jan 2023 18:48:08 GMT
ENV LANG=en_US.utf8
# Mon, 09 Jan 2023 18:48:08 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Jan 2023 18:52:41 GMT
ENV PG_MAJOR=13
# Mon, 09 Jan 2023 18:52:41 GMT
ENV PG_VERSION=13.9
# Mon, 09 Jan 2023 18:52:41 GMT
ENV PG_SHA256=ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
# Mon, 09 Jan 2023 18:54:36 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		llvm-dev clang g++ 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb'; 	wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb'; 	./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-krb5 		--with-gssapi 		--with-ldap 		--with-tcl 		--with-perl 		--with-python 		--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 		--with-llvm 	; 	make -j "$(nproc)" world; 	make install-world; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version
# Mon, 09 Jan 2023 18:54:37 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 09 Jan 2023 18:54:38 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 09 Jan 2023 18:54:38 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 09 Jan 2023 18:54:39 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Mon, 09 Jan 2023 18:54:39 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 09 Jan 2023 18:54:39 GMT
COPY file:8532d121e17f2ce9a5f749e2bb1c2800d41f880daad16051150ea9824a2ed88f in /usr/local/bin/ 
# Mon, 09 Jan 2023 18:54:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:54:39 GMT
STOPSIGNAL SIGINT
# Mon, 09 Jan 2023 18:54:39 GMT
EXPOSE 5432
# Mon, 09 Jan 2023 18:54:39 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:a9eaa45ef418e883481a13c7d84fa9904f2ec56789c52a87ba5a9e6483f2b74f`  
		Last Modified: Mon, 09 Jan 2023 17:05:12 GMT  
		Size: 3.3 MB (3259241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6004074ad02a4a75a55e9f9de3d1384503d5aaaeeaac87e22ef67302f57a7397`  
		Last Modified: Mon, 09 Jan 2023 18:59:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690395976a322335d42ab9b0d16f50a759c5f6fb5ffca7e4df22ee42c859325b`  
		Last Modified: Mon, 09 Jan 2023 18:59:54 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dad59e04dd33e37470bb166813a2dce714cabc3371b3d52dbc525c61268ffe`  
		Last Modified: Mon, 09 Jan 2023 19:00:58 GMT  
		Size: 86.5 MB (86470758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e866b011a0aabbe35d6d85256f3eea7f454314e322508a36ebcb5f491e45a90`  
		Last Modified: Mon, 09 Jan 2023 19:00:50 GMT  
		Size: 9.0 KB (9022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e4cc6c4f4d2cb05e8b445e2427d39322ca18ca9a86b3cb72e7683af50fa78f`  
		Last Modified: Mon, 09 Jan 2023 19:00:50 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:798484875325792cd793ff9de2f852f2f70f589620fc58213902b56e458c1c0d`  
		Last Modified: Mon, 09 Jan 2023 19:00:50 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1c9d2b9303593d1ab5811852de599865d0dd948e0b6d4c2078ba701ca14b78`  
		Last Modified: Mon, 09 Jan 2023 19:00:50 GMT  
		Size: 4.8 KB (4783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:13-alpine3.17` - linux; 386

```console
$ docker pull postgres@sha256:a2dce413ad6335481acb87f55b18693822cc325b89b69ceabe67ab2fe05ad073
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.7 MB (96730704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b02ad408ec47aee4a6809f8b63beae5df984607adc405a11484ba014cde20ba`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:00 GMT
ADD file:d03619a0ef81726c34189e849b80cc92da908eb36e116f28275d5765e6d0919a in / 
# Mon, 09 Jan 2023 17:05:00 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 18:36:20 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 09 Jan 2023 18:36:21 GMT
ENV LANG=en_US.utf8
# Mon, 09 Jan 2023 18:36:22 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Jan 2023 18:43:07 GMT
ENV PG_MAJOR=13
# Mon, 09 Jan 2023 18:43:08 GMT
ENV PG_VERSION=13.9
# Mon, 09 Jan 2023 18:43:09 GMT
ENV PG_SHA256=ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
# Mon, 09 Jan 2023 18:45:47 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		llvm-dev clang g++ 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb'; 	wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb'; 	./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-krb5 		--with-gssapi 		--with-ldap 		--with-tcl 		--with-perl 		--with-python 		--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 		--with-llvm 	; 	make -j "$(nproc)" world; 	make install-world; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version
# Mon, 09 Jan 2023 18:45:47 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 09 Jan 2023 18:45:48 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 09 Jan 2023 18:45:49 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 09 Jan 2023 18:45:50 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Mon, 09 Jan 2023 18:45:51 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 09 Jan 2023 18:45:53 GMT
COPY file:8532d121e17f2ce9a5f749e2bb1c2800d41f880daad16051150ea9824a2ed88f in /usr/local/bin/ 
# Mon, 09 Jan 2023 18:45:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 18:45:54 GMT
STOPSIGNAL SIGINT
# Mon, 09 Jan 2023 18:45:55 GMT
EXPOSE 5432
# Mon, 09 Jan 2023 18:45:56 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:40e5b0b2e2bde18974628cadecd8a2f190f45f06c32846c16885d69b2908bf68`  
		Last Modified: Mon, 09 Jan 2023 17:05:42 GMT  
		Size: 3.4 MB (3408318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:093d697a6418eb05c03bd1f2ec776ef43f3366c0b203e0b233d9e5fb3e07af37`  
		Last Modified: Mon, 09 Jan 2023 18:53:16 GMT  
		Size: 1.3 KB (1253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ef2d146cf2212827af5cf49a06f3ae223b858fc14efa4eef4a3544e262d439`  
		Last Modified: Mon, 09 Jan 2023 18:53:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e4133f187d6955c2dd9d68d436704e5ff414889466cc8e6c0a1439b758e167`  
		Last Modified: Mon, 09 Jan 2023 18:54:34 GMT  
		Size: 93.3 MB (93306916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:860fa5078ef9525b00fa1348b46bf622fe5bac5ca40ad24ae3823503e842f047`  
		Last Modified: Mon, 09 Jan 2023 18:54:23 GMT  
		Size: 9.0 KB (9023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21217f0c2f6c5cca5521434810b2de19d54fcb14532174cb8ca9856ef53f8a22`  
		Last Modified: Mon, 09 Jan 2023 18:54:23 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c6275307bb93df6233ff3c6ee20402cc8d569da6c38ad50d98a0b13a871d52`  
		Last Modified: Mon, 09 Jan 2023 18:54:23 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f3c21be0f934ceda6878b52d124160c382dd8d3ac60ba6d00669df1e529209`  
		Last Modified: Mon, 09 Jan 2023 18:54:23 GMT  
		Size: 4.8 KB (4779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:13-alpine3.17` - linux; ppc64le

```console
$ docker pull postgres@sha256:87685f26f3850339e38ec959222622cc785230c7de30bb10790781817f9023f3
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97671292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a19ddd8d5faa2bed45286b0680187069523aa08b7b07798262c5c1a83d00e395`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:13 GMT
ADD file:9a1d27fdc0c915f387f2446c85193d5215b18020b313114f0bf2799efcc1baae in / 
# Mon, 09 Jan 2023 17:05:13 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 22:29:04 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 09 Jan 2023 22:29:05 GMT
ENV LANG=en_US.utf8
# Mon, 09 Jan 2023 22:29:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Jan 2023 22:36:45 GMT
ENV PG_MAJOR=13
# Mon, 09 Jan 2023 22:36:46 GMT
ENV PG_VERSION=13.9
# Mon, 09 Jan 2023 22:36:46 GMT
ENV PG_SHA256=ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
# Mon, 09 Jan 2023 22:39:50 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		llvm-dev clang g++ 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb'; 	wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb'; 	./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-krb5 		--with-gssapi 		--with-ldap 		--with-tcl 		--with-perl 		--with-python 		--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 		--with-llvm 	; 	make -j "$(nproc)" world; 	make install-world; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version
# Mon, 09 Jan 2023 22:39:54 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 09 Jan 2023 22:39:55 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 09 Jan 2023 22:39:55 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 09 Jan 2023 22:39:56 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Mon, 09 Jan 2023 22:39:57 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 09 Jan 2023 22:39:57 GMT
COPY file:8532d121e17f2ce9a5f749e2bb1c2800d41f880daad16051150ea9824a2ed88f in /usr/local/bin/ 
# Mon, 09 Jan 2023 22:39:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 22:39:58 GMT
STOPSIGNAL SIGINT
# Mon, 09 Jan 2023 22:39:58 GMT
EXPOSE 5432
# Mon, 09 Jan 2023 22:39:58 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:f45bfda3aa14e255d9eb4c9a108eb3d8c6721946b4aa2e5808e5092242344a1c`  
		Last Modified: Mon, 09 Jan 2023 17:05:56 GMT  
		Size: 3.4 MB (3384562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1151129ee425b166e8a582e89a68f81d3abc38c488b7c2bc3df173fc6a7b0d`  
		Last Modified: Mon, 09 Jan 2023 22:48:42 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29c12e4681195d016bcf82fe4146b0530e49b0e81a229e7ed4581d30bd1bc76`  
		Last Modified: Mon, 09 Jan 2023 22:48:42 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c036a9b3b1cd9fe879a36335d8e66bf795175a8010707b4ac6a3411a3f55da4`  
		Last Modified: Mon, 09 Jan 2023 22:50:34 GMT  
		Size: 94.3 MB (94271135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a03d844cef2f4a398fd7545c6eb87cf587a783a79d61941a89fd1c7e42c1758f`  
		Last Modified: Mon, 09 Jan 2023 22:50:12 GMT  
		Size: 9.0 KB (9025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48dee528b8a7f0af0b7fe5c30b49428813203e24739743332ec167cd02bf0f0c`  
		Last Modified: Mon, 09 Jan 2023 22:50:12 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba1c600b80ecf0a35242c99befdf9961f0a5408fe024a09bb2cdb65687ea626`  
		Last Modified: Mon, 09 Jan 2023 22:50:12 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eeef38d54bef595d2e5ddb50e0592a6e42bebd95aebcbb7214ebf474f5ad08f`  
		Last Modified: Mon, 09 Jan 2023 22:50:12 GMT  
		Size: 4.8 KB (4781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `postgres:13-alpine3.17` - linux; s390x

```console
$ docker pull postgres@sha256:6f98798809234c39748a8caaa7ca0bcc524d57a376c4129a52321f235193fee1
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.5 MB (92520676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bace1bcfe91f53c2e86b0a636e175b0514041f94c9648f580f646eb584b13c30`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["postgres"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:44 GMT
ADD file:eabe7c3c368e65478b53ac35c1daf3b703f2bca4ecdab2d080a65e8b981d7d4a in / 
# Mon, 09 Jan 2023 17:05:46 GMT
CMD ["/bin/sh"]
# Mon, 09 Jan 2023 22:19:12 GMT
RUN set -eux; 	addgroup -g 70 -S postgres; 	adduser -u 70 -S -D -G postgres -H -h /var/lib/postgresql -s /bin/sh postgres; 	mkdir -p /var/lib/postgresql; 	chown -R postgres:postgres /var/lib/postgresql
# Mon, 09 Jan 2023 22:19:13 GMT
ENV LANG=en_US.utf8
# Mon, 09 Jan 2023 22:19:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 09 Jan 2023 22:28:29 GMT
ENV PG_MAJOR=13
# Mon, 09 Jan 2023 22:28:29 GMT
ENV PG_VERSION=13.9
# Mon, 09 Jan 2023 22:28:30 GMT
ENV PG_SHA256=ef1966c0a5e49fbed3370ad2824928cb6b1164617aeeae1606da283f7f33a415
# Mon, 09 Jan 2023 22:32:12 GMT
RUN set -eux; 		wget -O postgresql.tar.bz2 "https://ftp.postgresql.org/pub/source/v$PG_VERSION/postgresql-$PG_VERSION.tar.bz2"; 	echo "$PG_SHA256 *postgresql.tar.bz2" | sha256sum -c -; 	mkdir -p /usr/src/postgresql; 	tar 		--extract 		--file postgresql.tar.bz2 		--directory /usr/src/postgresql 		--strip-components 1 	; 	rm postgresql.tar.bz2; 		apk add --no-cache --virtual .build-deps 		bison 		coreutils 		dpkg-dev dpkg 		flex 		gcc 		krb5-dev 		libc-dev 		libedit-dev 		libxml2-dev 		libxslt-dev 		linux-headers 		llvm-dev clang g++ 		make 		openldap-dev 		openssl-dev 		perl-dev 		perl-ipc-run 		perl-utils 		python3-dev 		tcl-dev 		util-linux-dev 		zlib-dev 		icu-dev 	; 		cd /usr/src/postgresql; 	awk '$1 == "#define" && $2 == "DEFAULT_PGSOCKET_DIR" && $3 == "\"/tmp\"" { $3 = "\"/var/run/postgresql\""; print; next } { print }' src/include/pg_config_manual.h > src/include/pg_config_manual.h.new; 	grep '/var/run/postgresql' src/include/pg_config_manual.h.new; 	mv src/include/pg_config_manual.h.new src/include/pg_config_manual.h; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	wget -O config/config.guess 'https://git.savannah.gnu.org/cgit/config.git/plain/config.guess?id=7d3d27baf8107b630586c962c057e22149653deb'; 	wget -O config/config.sub 'https://git.savannah.gnu.org/cgit/config.git/plain/config.sub?id=7d3d27baf8107b630586c962c057e22149653deb'; 	./configure 		--build="$gnuArch" 		--enable-integer-datetimes 		--enable-thread-safety 		--enable-tap-tests 		--disable-rpath 		--with-uuid=e2fs 		--with-gnu-ld 		--with-pgport=5432 		--with-system-tzdata=/usr/share/zoneinfo 		--prefix=/usr/local 		--with-includes=/usr/local/include 		--with-libraries=/usr/local/lib 		--with-krb5 		--with-gssapi 		--with-ldap 		--with-tcl 		--with-perl 		--with-python 		--with-openssl 		--with-libxml 		--with-libxslt 		--with-icu 		--with-llvm 	; 	make -j "$(nproc)" world; 	make install-world; 	make -C contrib install; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 			| grep -v -e perl -e python -e tcl 	)"; 	apk add --no-cache --virtual .postgresql-rundeps 		$runDeps 		bash 		su-exec 		tzdata 		zstd 		icu-data-full 		$([ "$(apk --print-arch)" != 'ppc64le' ] && echo 'nss_wrapper') 	; 	apk del --no-network .build-deps; 	cd /; 	rm -rf 		/usr/src/postgresql 		/usr/local/share/doc 		/usr/local/share/man 	; 		postgres --version
# Mon, 09 Jan 2023 22:32:27 GMT
RUN set -eux; 	cp -v /usr/local/share/postgresql/postgresql.conf.sample /usr/local/share/postgresql/postgresql.conf.sample.orig; 	sed -ri "s!^#?(listen_addresses)\s*=\s*\S+.*!\1 = '*'!" /usr/local/share/postgresql/postgresql.conf.sample; 	grep -F "listen_addresses = '*'" /usr/local/share/postgresql/postgresql.conf.sample
# Mon, 09 Jan 2023 22:32:28 GMT
RUN mkdir -p /var/run/postgresql && chown -R postgres:postgres /var/run/postgresql && chmod 2777 /var/run/postgresql
# Mon, 09 Jan 2023 22:32:29 GMT
ENV PGDATA=/var/lib/postgresql/data
# Mon, 09 Jan 2023 22:32:30 GMT
RUN mkdir -p "$PGDATA" && chown -R postgres:postgres "$PGDATA" && chmod 777 "$PGDATA"
# Mon, 09 Jan 2023 22:32:31 GMT
VOLUME [/var/lib/postgresql/data]
# Mon, 09 Jan 2023 22:32:31 GMT
COPY file:8532d121e17f2ce9a5f749e2bb1c2800d41f880daad16051150ea9824a2ed88f in /usr/local/bin/ 
# Mon, 09 Jan 2023 22:32:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 09 Jan 2023 22:32:32 GMT
STOPSIGNAL SIGINT
# Mon, 09 Jan 2023 22:32:33 GMT
EXPOSE 5432
# Mon, 09 Jan 2023 22:32:33 GMT
CMD ["postgres"]
```

-	Layers:
	-	`sha256:ae982806674c51a962c0fdd6e19f464ebd673df529c5cfb7c1d049e0b618d384`  
		Last Modified: Mon, 09 Jan 2023 17:06:50 GMT  
		Size: 3.2 MB (3170744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662a09d3140efd92c8236e927cd76468e6a9e6ec85e642c8be853af8115fc86b`  
		Last Modified: Mon, 09 Jan 2023 22:43:22 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5fdcfa24c97962c73bfbc6153d69d967abd53e8d047f34419139a3f3802614`  
		Last Modified: Mon, 09 Jan 2023 22:43:21 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f73a884302f3a69b910a9a2c74a460576025dd9721c48f56ee8ea4ca4be078`  
		Last Modified: Mon, 09 Jan 2023 22:44:30 GMT  
		Size: 89.3 MB (89334329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03410f2ddd1da653f96d39b7e02e3b93c8e1356bfeb08378fc2471873cf717`  
		Last Modified: Mon, 09 Jan 2023 22:44:20 GMT  
		Size: 9.0 KB (9028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb67a8d98f4769d330f84421595287744dd624782f790beeae982cd14db16f7`  
		Last Modified: Mon, 09 Jan 2023 22:44:20 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0274871bbc356b44d24a466272eed4e2893015667794c515f6c5d0ddc8e4981`  
		Last Modified: Mon, 09 Jan 2023 22:44:20 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e6d599950556fac66f7581adc40df1da4d01ee3ce58644f043aaf6320f12a6a`  
		Last Modified: Mon, 09 Jan 2023 22:44:20 GMT  
		Size: 4.8 KB (4783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
