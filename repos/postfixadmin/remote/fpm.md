## `postfixadmin:fpm`

```console
$ docker pull postfixadmin@sha256:c0efe8444cb9de5d1bc3ab419af17fe38d27409bfdaaa52cb90b7715eab14568
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `postfixadmin:fpm` - linux; amd64

```console
$ docker pull postfixadmin@sha256:30b16dacf3b06a7da263e74f7d4c70848c55fb6837b33ddaee42b08084a0ca42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200676144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bceaa97b9360802ae6b23f3b4851dc268abb1cd25ef2061e2ca04d8c5b432dd4`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:23:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:24:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:24:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:24:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:24:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:24:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:24:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:24:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:24:01 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:24:01 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:24:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:24:01 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:36:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:36:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:38:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:38:54 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:38:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:38:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:38:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:38:55 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:38:55 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:38:55 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:38:55 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:38:55 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 01:49:40 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 25 Aug 2026 01:49:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:49:57 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:49:57 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 01:49:57 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 01:49:57 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 01:49:57 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 01:49:58 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 25 Aug 2026 01:49:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:49:58 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:49:58 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 25 Aug 2026 01:50:05 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:50:05 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:50:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee555263eafbed1deaf1a3ac143ef138d413b6da6abf2a9457eedfc95c6de048`  
		Last Modified: Tue, 25 Aug 2026 00:26:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2276cdaf23a40850aa6a42b83ce2388c80eff070eb3838838b949d85dc8f7590`  
		Last Modified: Tue, 25 Aug 2026 00:26:52 GMT  
		Size: 117.8 MB (117839357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:176c8ce5e603ab861b01093444b30e3cb14674d64867d5fa9d934123e44faea6`  
		Last Modified: Tue, 25 Aug 2026 00:26:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26c3c18a40e70d1cd78e027aa145837ec33e725a6dd417e5d548d32602f3fe8`  
		Last Modified: Tue, 25 Aug 2026 00:39:06 GMT  
		Size: 12.8 MB (12769615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c7a042a8d4691962c3335f78a1d9815f4190f419ddba00ac135415d94acdfe`  
		Last Modified: Tue, 25 Aug 2026 00:39:06 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b295df78895d6d98636d43b1edd7e47595f90059108acd2a7655fa00b3707d`  
		Last Modified: Tue, 25 Aug 2026 00:39:06 GMT  
		Size: 11.9 MB (11904179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60415be0b9be84fd7cfe1b548ac439289bf4c452f442f10aee6d927f9aefb578`  
		Last Modified: Tue, 25 Aug 2026 00:39:05 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a530c37c59e554d0c061f60e71440661a6acd8d92b7aebcae242b5e995cdcf07`  
		Last Modified: Tue, 25 Aug 2026 00:39:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:183e9f971ccb34581bc77d040535505b0466aa4b00669a08a83c66f9baf0dce9`  
		Last Modified: Tue, 25 Aug 2026 00:39:07 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c30765bd0b4267a776d34aea05b90bf152b6a74912d32244878398f5723acf`  
		Last Modified: Tue, 25 Aug 2026 00:39:07 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c87733cdff8ddede888c98341d63a243213029fc4f0f3b7c9fb39a5acb7702b`  
		Last Modified: Tue, 25 Aug 2026 01:50:11 GMT  
		Size: 1.3 MB (1328895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28f991829ad18409cef743effafecc9b60d3eab2b8e25880d4af4684cf834288`  
		Last Modified: Tue, 25 Aug 2026 01:50:11 GMT  
		Size: 444.3 KB (444310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267d3ca0674f1d2b01d7f351a67188ba8bfde1abeed28c279247f217ab532596`  
		Last Modified: Tue, 25 Aug 2026 01:50:11 GMT  
		Size: 2.6 MB (2604055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdb116a04ac42c967c928442f6d3d4115f3fe8dcdbccc7caa2e3794bdf91b6a`  
		Last Modified: Tue, 25 Aug 2026 01:50:11 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9bc07d94d81a77e991970fd084ff3bfd34c20101f42ffae43551cba4145539`  
		Last Modified: Tue, 25 Aug 2026 01:50:12 GMT  
		Size: 832.3 KB (832290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0421b46b10dae5a063b739fc9780081682df882c4288300cac7bb28d8c6623`  
		Last Modified: Tue, 25 Aug 2026 01:50:13 GMT  
		Size: 23.1 MB (23145959 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:840e467bb8c6488e0e677132d2af5560cfc3bcbd2e96d6ce2824f01d450a3872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710d60e2834e217f882e4c7d71add09ee0515c0658745882f1b5709d2ef4876c`

```dockerfile
```

-	Layers:
	-	`sha256:121ccb384c6352d5e1587b8d9bd03b5be24faa180664c54fab1ed5fb52fa6961`  
		Last Modified: Tue, 25 Aug 2026 01:50:11 GMT  
		Size: 39.5 KB (39515 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; arm variant v7

```console
$ docker pull postfixadmin@sha256:8b75a5098ae6c532412155ade2da12feebaec8ddb9df557f72807b747a767d93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.6 MB (163587111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d4d429fe18d82ef8fc58a74e1664157aa4edce51798507353ba091438a1715`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:30:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:31:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:31:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:31:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:31:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:31:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:31:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:31:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:31:12 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:31:12 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:31:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:31:12 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 01:09:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 01:09:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:12:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 01:12:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:12:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 01:12:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 01:12:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 01:12:01 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 01:12:01 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 01:12:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 01:12:01 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 01:12:01 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 02:50:31 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 25 Aug 2026 02:50:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:50:58 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:50:58 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 02:50:58 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 02:50:58 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 02:50:58 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 02:50:59 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 25 Aug 2026 02:50:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:50:59 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:50:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 25 Aug 2026 02:51:10 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:51:10 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 02:51:10 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee10e31ae92dadb5c3bb7ffa80fe06e2e77777d9974765898b5845e4aeeabde`  
		Last Modified: Tue, 25 Aug 2026 00:34:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d8ca6d5193f40fa0eda5a9c023eb444a7f06a58bcc29b39456a6cedc3b6d15`  
		Last Modified: Tue, 25 Aug 2026 00:34:12 GMT  
		Size: 86.3 MB (86260354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7050d9b3f126aa28f9863b1479b5b273ab04ebc88f617d5893b522319fea0134`  
		Last Modified: Tue, 25 Aug 2026 00:34:09 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f98edd1e6c22f3e4183bc8d1799937d3fc50ec2bbf46aaaa31690949be9e4d`  
		Last Modified: Tue, 25 Aug 2026 01:12:11 GMT  
		Size: 12.8 MB (12758355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42cc76218314ee0a3c8e5bed32a3964e914e3b3b402fc7903514371d20166a5e`  
		Last Modified: Tue, 25 Aug 2026 01:12:10 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939eda6c947aa50197e0f07267e7f3ef35e4555bb06f3a9418caff92b29fa9af`  
		Last Modified: Tue, 25 Aug 2026 01:12:11 GMT  
		Size: 10.1 MB (10088189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095095bb9e93f3ed8ef0ff8cfdd0ebb7802e627c9bd0472b84608dfff1227f7f`  
		Last Modified: Tue, 25 Aug 2026 01:12:10 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b073a16376234f53c3a965aaa116bd06dc856b9a0ccdd501135f1ce3d69ac3`  
		Last Modified: Tue, 25 Aug 2026 01:12:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc13cee529b6d6dc4dfec0897b1d81c57342f34eb54085ab7e763e65e743918`  
		Last Modified: Tue, 25 Aug 2026 01:12:12 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e59ceb6d7e1ccd183e562df2cb9eb36bde7277741d390d80ef863c057f911c9`  
		Last Modified: Tue, 25 Aug 2026 01:12:12 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f919374ca807898005910d6b78571f5732656dc303e1862220548f98c523a3b8`  
		Last Modified: Tue, 25 Aug 2026 02:51:17 GMT  
		Size: 1.3 MB (1266169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dcbb323e4101310094605e120c17642ff8fc9e246d40ff461c45fdecd505714`  
		Last Modified: Tue, 25 Aug 2026 02:51:18 GMT  
		Size: 400.1 KB (400079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060b4dcaa648446f75e1753324040b8fb4dada4f6614817506fa7e9c80105f17`  
		Last Modified: Tue, 25 Aug 2026 02:51:17 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e730baa96d6b0642b7ce463ad17abc65226bcbfa7054907ba49d9e4fb6231b`  
		Last Modified: Tue, 25 Aug 2026 02:51:17 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed18e97466fd0210560c5c8d77e865fb056afc9b8295da69d56d6403605b4cc4`  
		Last Modified: Tue, 25 Aug 2026 02:51:18 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93088f9566d1bea9645da23ac37677ed30593ad71198c32323286f498e94d7d`  
		Last Modified: Tue, 25 Aug 2026 02:51:18 GMT  
		Size: 23.1 MB (23143648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:1b2515704abecd2e1343660efa313dfbc8fa384af4283534f98c10389c6663fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9cac5a437bd1ff1af6b1c14fa731f1a1fc3b4e3852b7ac366129c4fed07c5a`

```dockerfile
```

-	Layers:
	-	`sha256:10467e1b8c8bb6966ad5976853f3719ec56eb32e134d211e658ce75666f4c703`  
		Last Modified: Tue, 25 Aug 2026 02:51:16 GMT  
		Size: 39.6 KB (39649 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:9f7c6e494e32922ff0f97ff6481961e69f30a6ec881c9c4da7c7ad88265fb776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.3 MB (193298225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b9fc7e669e6ac711784d232daf72b984147f2a240498ee85e1ab2e5b7c535af`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:26:56 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:27:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:27:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:27:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:27:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:27:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:27:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:27:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:27:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:27:13 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:27:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:27:13 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:37:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:37:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:41:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:41:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:41:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:41:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:41:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:41:27 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:41:27 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:41:27 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:41:27 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:41:27 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 01:56:09 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 25 Aug 2026 01:56:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:56:34 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:56:34 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 01:56:34 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 01:56:34 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 01:56:34 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 01:56:34 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 25 Aug 2026 01:56:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:56:34 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:56:34 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 25 Aug 2026 01:56:43 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:56:43 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:56:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606e5741efe9636920831fd60cbc24d7cda3c6c89922ff4c84f9743456e61fb0`  
		Last Modified: Tue, 25 Aug 2026 00:30:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b889c0fcc035f31050bfd51a3717ce3ded4ca80022a44dad430efccefb9695`  
		Last Modified: Tue, 25 Aug 2026 00:30:53 GMT  
		Size: 110.2 MB (110171891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98450a8409b94822be4dbd4460357832130391a3413cbceb600a54596a3d581c`  
		Last Modified: Tue, 25 Aug 2026 00:30:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d722a9246d6838d31ec7bb756ae9e8bab90fe8e928f09df31868ca9aeb4a7232`  
		Last Modified: Tue, 25 Aug 2026 00:41:38 GMT  
		Size: 12.8 MB (12760129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8966f8319e865409b151eefb3625c5f0ef8060fb214202cf2696b3e5ecd3e422`  
		Last Modified: Tue, 25 Aug 2026 00:41:37 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ffedbeb320eb7e5a798893394b71feaaa9dd87034bd5a22145edff8194b8d6`  
		Last Modified: Tue, 25 Aug 2026 00:41:38 GMT  
		Size: 11.9 MB (11926728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6de7975a5ca161e0de9250a3e64021ae372bfc4fc7c52b8f02c15b67f470ba`  
		Last Modified: Tue, 25 Aug 2026 00:41:37 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcf26af27e3a845b60a2ad90c748a0a0e6469873bd8b993ff78c904bdec5b8b`  
		Last Modified: Tue, 25 Aug 2026 00:41:38 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e887a3d7d90c3053c7936d3cf9f937bf6f56da5bb4967b073e72a9d2f565f2`  
		Last Modified: Tue, 25 Aug 2026 00:41:38 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a2d3dc3778edf0166fea43a723b4acd356a5af5290e7dc01c6c58f1f98e645`  
		Last Modified: Tue, 25 Aug 2026 00:41:39 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4610ffe6593ae6f78dd174f7c421a7867f748a91093d55b23977ab2e97f5a01c`  
		Last Modified: Tue, 25 Aug 2026 01:56:49 GMT  
		Size: 1.2 MB (1242632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e4a522799759a64012a5b4174f4f210df0c2ac19fe343d2315f303e8845df2`  
		Last Modified: Tue, 25 Aug 2026 01:56:49 GMT  
		Size: 440.5 KB (440538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf9b3609aca3755685036d2d0217460669baa9cf4e0c9a4b54924bd06e3bd66`  
		Last Modified: Tue, 25 Aug 2026 01:56:49 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea6b4463e547a24054f047178a4751c263bc03a7c14abfa28ea80cf4f32a493`  
		Last Modified: Tue, 25 Aug 2026 01:56:49 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c79ed7c734eed82095ff09f15efc36028e5515661af63b5956f55064f4670c8`  
		Last Modified: Tue, 25 Aug 2026 01:56:50 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71c8027fc93d993ed10768b96a0e3e8d936ef5ada5ce7ba3d8c6ef897d7674b`  
		Last Modified: Tue, 25 Aug 2026 01:56:51 GMT  
		Size: 23.1 MB (23145542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:be11c0c05d576aba26562e908a071fc09e27315814e6b725925945cf219470fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29b402a71087544f1a27c4eb15ba76351fe2ea84dc04bcbaf3184bc79b8d40d`

```dockerfile
```

-	Layers:
	-	`sha256:d130b3ae89466c18e35f98221057871b759ca80e9ecb0bdb41e74bbe5950fe1b`  
		Last Modified: Tue, 25 Aug 2026 01:56:49 GMT  
		Size: 39.7 KB (39688 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; 386

```console
$ docker pull postfixadmin@sha256:1720818094b7879173004727f652daaa0de8e5bf2f2686672bfd8dc34224706e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200672780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1adfb6db8a69bbcfb54094f0c7d8820772587b52ae3f80cf9b9a46d70ef88de`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:22:57 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:23:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:23:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:23:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:23:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:23:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:23:15 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:23:15 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:23:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:23:15 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:34:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:34:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:36:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:36:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:36:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:36:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:36:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:36:47 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:36:47 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:36:47 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:36:47 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:36:47 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 01:53:21 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 25 Aug 2026 01:53:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:53:40 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:53:40 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 01:53:40 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 01:53:40 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 01:53:40 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 01:53:41 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 25 Aug 2026 01:53:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:53:41 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:53:41 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 25 Aug 2026 01:53:48 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 01:53:48 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 01:53:48 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d2feca63f051d92fede174878de90c8eaed1bf486f815fd249f711f806c755`  
		Last Modified: Tue, 25 Aug 2026 00:26:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295fc74296f3ea7016b091d275eb75d9e4e7dbee7ef968aedb00d11d4ecd607b`  
		Last Modified: Tue, 25 Aug 2026 00:26:58 GMT  
		Size: 116.1 MB (116143768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53aed9e74590c4e0652fa029764ddf20b8fba1dad41b3bdd4d498ad6ee8aaefd`  
		Last Modified: Tue, 25 Aug 2026 00:26:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76fcdea42f8d1cb9b4fb39330a087fd72b54d59237e60f69f7ecb589d6141215`  
		Last Modified: Tue, 25 Aug 2026 00:36:57 GMT  
		Size: 12.8 MB (12768632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac24765376fdae19e68c88d8fd01d8ac0da5c6501a03cce67a0f30df3e61d3d`  
		Last Modified: Tue, 25 Aug 2026 00:36:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d9bb3ba9e6b3482d7d703fbe7921ebe185647b770b8010af38d34fe9021dcd`  
		Last Modified: Tue, 25 Aug 2026 00:36:57 GMT  
		Size: 12.1 MB (12112213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:361e210158219169cb641a101f5193ec2d605ef98cb3f330dc10a4561cc88a4a`  
		Last Modified: Tue, 25 Aug 2026 00:36:56 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58535f40d2e10a949b55a43b195cafea46921b2a23f8088f5a83389ab2b84e19`  
		Last Modified: Tue, 25 Aug 2026 00:36:57 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206aa771ee57f8be220d0059f27d9d192474d018bbbdad8cdbb06821d80ffd2e`  
		Last Modified: Tue, 25 Aug 2026 00:36:58 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348d5ba21aaefe27cae704568c33847c79c9cf8a9cf48c8e0f41378cf72f1bff`  
		Last Modified: Tue, 25 Aug 2026 00:36:58 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a7eb064d764bf15dbd8485b436ad5be31ae1bc889b5077b2f8cc148ce2fa14`  
		Last Modified: Tue, 25 Aug 2026 01:53:54 GMT  
		Size: 1.3 MB (1287810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e9d67fab6e5d5ca0a956dba695f266f9e7af82a6ae531c403f6e060fc92d1c`  
		Last Modified: Tue, 25 Aug 2026 01:53:54 GMT  
		Size: 460.6 KB (460558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfed94bcac2f45a2e6dd2364665d3368629407afb2c794d9c13e106d000383c`  
		Last Modified: Tue, 25 Aug 2026 01:53:54 GMT  
		Size: 2.6 MB (2604061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79266dd232b97877659f79e59674c2ec2a35c92733bdb66beb2f7b5bcfcdd085`  
		Last Modified: Tue, 25 Aug 2026 01:53:54 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbccfffbb3d9693e48995dc90a9200b9d589908b565184379370805c61e85a3`  
		Last Modified: Tue, 25 Aug 2026 01:53:55 GMT  
		Size: 832.3 KB (832288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25c847377a48eaa827ceda439533014e1c96b4dbcf1ea9cf2c6a2d0f55a9282`  
		Last Modified: Tue, 25 Aug 2026 01:53:56 GMT  
		Size: 23.1 MB (23145226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:0f74c84de3c8b1fc7620ea32c0192c65be0ba2cc15abe61a79767af9b2d8be4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6175315d3ce79d042c3d08b2d754f74eabc59cbbbf8ab6e93f5628997423a1c`

```dockerfile
```

-	Layers:
	-	`sha256:bebedad8caffd63df40884cee42a156f2c79a794265f6da7a36d72d6a62fd08f`  
		Last Modified: Tue, 25 Aug 2026 01:53:54 GMT  
		Size: 39.5 KB (39470 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; ppc64le

```console
$ docker pull postfixadmin@sha256:2bd887927a445c7b62f85611911e041ed2300c20053be931edddf853467e4e83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196739143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb19b6ea5875ff60d2dd6add1d39c8cc92e77d5c42fe4cdaebac499cd00b42d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:46:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:46:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:46:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:46:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:46:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:46:21 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 02:29:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 02:29:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:38:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 02:38:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:38:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 02:38:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 02:38:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 02:38:42 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 02:38:42 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 02:38:42 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 02:38:42 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 02:38:42 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 12:09:26 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 25 Aug 2026 12:09:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 12:10:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:10:06 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 12:10:06 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 12:10:06 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 12:10:06 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 12:10:07 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 25 Aug 2026 12:10:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 12:10:07 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 12:10:07 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 25 Aug 2026 12:10:22 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 12:10:22 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 12:10:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885224ce44af93ea4dccfafa299151884dc46c11ad64d674fd2ba80305810472`  
		Last Modified: Tue, 25 Aug 2026 00:51:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a6823b5a4d064828b76b76e09984ab87742c5cbee856fcba92358bb8a7493d`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 109.6 MB (109601439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218e67ededf9f504cc5aa397a83521f96e71e1acefa9345936c925f269a24cec`  
		Last Modified: Tue, 25 Aug 2026 00:51:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2e336d7d29f461410ac2e4d4b24335c27f433f7b806a096710b7a85b0628af`  
		Last Modified: Tue, 25 Aug 2026 02:33:46 GMT  
		Size: 12.8 MB (12759568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:426508fd913bd28b486c556cda138721d2e74799a905303539e4d4726356901e`  
		Last Modified: Tue, 25 Aug 2026 02:33:46 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8430f4b5d8b4ccfaa689b860191b74c2e4c91190d509940ed080e649755cb3d`  
		Last Modified: Tue, 25 Aug 2026 02:39:02 GMT  
		Size: 12.4 MB (12441846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467595626a339d16f602836ff63fb0bdea2fe1348f7d61ae2daf0e8dde50dd56`  
		Last Modified: Tue, 25 Aug 2026 02:39:02 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f069b3aa6168da12c3e5968be64abb6eb936a8fd4766c4dddae50a61dd2364f`  
		Last Modified: Tue, 25 Aug 2026 02:39:02 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8072610dbe730350609ff7e30f7d873f8945fb4b9449599f7335544e39df0171`  
		Last Modified: Tue, 25 Aug 2026 02:39:02 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4830b645a3896e3e3d85a6fec50eb637eae6ca70e666c79cf7bec22cdde5c15e`  
		Last Modified: Tue, 25 Aug 2026 02:39:03 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:babdbc251d22b23923a0d0c046a5c59d106e0687ef4af1c4e3d6e8d7e7b1fc38`  
		Last Modified: Tue, 25 Aug 2026 12:10:33 GMT  
		Size: 1.2 MB (1244865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385e4f1a399dcb5010c8a00f2f375e970b0878dd649d18939521037f72bba9c5`  
		Last Modified: Tue, 25 Aug 2026 12:10:33 GMT  
		Size: 479.6 KB (479637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56940626ab0488d485e6de93f3e0652d46eeba9f108da57b1ebca8881266dea2`  
		Last Modified: Tue, 25 Aug 2026 12:10:33 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03494d462c144214d28401977ffdcbf8fb8ceac168f04c6ffed91926de9e05f0`  
		Last Modified: Tue, 25 Aug 2026 12:10:33 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3363986f787cb54bb5f2e6e93c698061acc186d68feaadbe10a463e8282e2c9`  
		Last Modified: Tue, 25 Aug 2026 12:10:34 GMT  
		Size: 832.3 KB (832291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb0872e85de2600f2d9431cfc90cd42e271693c815f2fa4b6e099a1e663fc2c`  
		Last Modified: Tue, 25 Aug 2026 12:10:35 GMT  
		Size: 23.1 MB (23145131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:04e00f5f95e74ffcb80f4ee9db57b85e5a280918f06aade18544a45fa2cca93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:489f8ec49cbeb9a8425d6054fbf0dac6b8d5c47b1720108bb4d03d7a00c77654`

```dockerfile
```

-	Layers:
	-	`sha256:05d9f4059eb94a755f9b3b57d8117a42353ea19b81e6dfbf456a110e09a099f1`  
		Last Modified: Tue, 25 Aug 2026 12:10:32 GMT  
		Size: 39.6 KB (39575 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; riscv64

```console
$ docker pull postfixadmin@sha256:8c0ee6a7b09f9f4c12b871758a9aa0f8f9eb361ca5b1a24971619443811e5a0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230452357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdf81060e00d704aab52d45219854c5d8b6d5eef4284f0b3bd2b8e81cc50c319`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:59:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 09:01:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 09:01:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 09:01:42 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 26 Aug 2026 05:01:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 26 Aug 2026 05:01:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 07:40:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 26 Aug 2026 07:40:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 07:40:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 26 Aug 2026 07:40:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 26 Aug 2026 07:40:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 26 Aug 2026 07:40:40 GMT
WORKDIR /var/www/html
# Wed, 26 Aug 2026 07:40:41 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 26 Aug 2026 07:40:41 GMT
STOPSIGNAL SIGQUIT
# Wed, 26 Aug 2026 07:40:41 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 26 Aug 2026 07:40:41 GMT
CMD ["php-fpm"]
# Sat, 29 Aug 2026 13:04:20 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Sat, 29 Aug 2026 13:04:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 29 Aug 2026 13:08:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 13:08:31 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Sat, 29 Aug 2026 13:08:31 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Sat, 29 Aug 2026 13:08:31 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Sat, 29 Aug 2026 13:08:31 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Sat, 29 Aug 2026 13:08:33 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Sat, 29 Aug 2026 13:08:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 29 Aug 2026 13:08:33 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Sat, 29 Aug 2026 13:08:33 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sat, 29 Aug 2026 13:09:52 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Sat, 29 Aug 2026 13:09:52 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Sat, 29 Aug 2026 13:09:52 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed1f058e041d97ac1f23c511dfbdcbda29ca286b8f0506fbf2a4b5b2bcf462`  
		Last Modified: Tue, 25 Aug 2026 10:00:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688c7db522e3fe4f249a63f14f9c5d5e910778c5bda8855e2c1fb2158e676de0`  
		Last Modified: Tue, 25 Aug 2026 10:00:38 GMT  
		Size: 146.6 MB (146592877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f643464284211cc08fd66fb85b4ffba1378df3b209243d0ce8e08b11652df73`  
		Last Modified: Tue, 25 Aug 2026 10:00:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf0301ceb31e1809a0170fc2eaab3540f882ded5d8b27503ffce853fe7ed190`  
		Last Modified: Wed, 26 Aug 2026 05:54:16 GMT  
		Size: 12.8 MB (12775819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979bef2dd3977be55c0b6fb376aafe3932af8c86a0cbf9a76f3a296dc5599d4e`  
		Last Modified: Wed, 26 Aug 2026 05:54:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a50d04664300588dee5d26b0ff8d018e153e932a564b807065f7f472ed10e8`  
		Last Modified: Wed, 26 Aug 2026 07:43:38 GMT  
		Size: 14.5 MB (14513696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58cfa123687ede1f67c64e99272be9ab96477cc8e113e3139b6df6e99d405b3`  
		Last Modified: Wed, 26 Aug 2026 07:43:35 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672fab3f23dc62c40f9782a32bf9d8d4218ec8e39d0679a8a76ae20b163337a2`  
		Last Modified: Wed, 26 Aug 2026 07:43:35 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a22219b36b10b3189fce419db759443dc1795ee26fdd416b826ebd2c94312285`  
		Last Modified: Wed, 26 Aug 2026 07:43:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a4ed909997c6f8b4c5b2da98e805aa92bbc8d2b1662bb49290623862fe95f5`  
		Last Modified: Wed, 26 Aug 2026 07:43:37 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e751eedd83afc1dcb5db7109e1fee8672cd03ae79e666a73c86238619b6b76c7`  
		Last Modified: Sat, 29 Aug 2026 13:11:03 GMT  
		Size: 1.2 MB (1242671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c6809ede57c401aa1d11c9d1521194bce4bcd90ac1c724ef924195e0ee3a0c9`  
		Last Modified: Sat, 29 Aug 2026 13:11:02 GMT  
		Size: 434.3 KB (434261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b186023975d4b3e070abd3f6005d6e31c009a485512baace5bdfb8c55a8115`  
		Last Modified: Sat, 29 Aug 2026 13:11:03 GMT  
		Size: 2.6 MB (2604064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e92bafc19342aa084daef95f06c39de0de114253f69d448de064e5c0ed0e80`  
		Last Modified: Sat, 29 Aug 2026 13:11:02 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d58c656611467bab99d3bb0d9e6940ca68cbc51bc505a762ac3c976d4abdf04`  
		Last Modified: Sat, 29 Aug 2026 13:11:04 GMT  
		Size: 832.3 KB (832290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fb2a5e8f7b4ea5306807f48a42f20cdc98a1aacae44b14c64f92f18561886c`  
		Last Modified: Sat, 29 Aug 2026 13:11:07 GMT  
		Size: 23.1 MB (23145378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:ba14932b99633c86f138bc73ccf124b538e6afb46be5bffc5450ceddb1eb7251
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de85305f763ce5bf55f2466975abbf4dc7c2968f6a21b810f2cd51fb23dcb6fd`

```dockerfile
```

-	Layers:
	-	`sha256:eaca281db9471c7a5d954adea4b1edef1072d07a6ee7ad5006180cd89b755018`  
		Last Modified: Sat, 29 Aug 2026 13:11:02 GMT  
		Size: 39.6 KB (39574 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; s390x

```console
$ docker pull postfixadmin@sha256:33823130c00a8927504fd04ad595d66ee2b7d54508ffe7fca84335c65105f1ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175304789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66234fe506417f5071175d2706347d309a09118298ba5497d0e20fe6f447d7fc`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:28:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:29:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:29:15 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:52:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:52:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:59:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:59:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:59:23 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:59:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:59:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:59:24 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:59:24 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:59:24 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:59:24 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:59:24 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 02:47:05 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 25 Aug 2026 02:47:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:47:25 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:47:25 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 02:47:25 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 02:47:25 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Tue, 25 Aug 2026 02:47:25 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 25 Aug 2026 02:47:26 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 25 Aug 2026 02:47:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:47:26 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:47:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 25 Aug 2026 02:47:35 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 02:47:35 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 25 Aug 2026 02:47:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b412cfe4760bdc7b56e741c7fe164da58050ce82034f50bf9549fe3d2a93fd5f`  
		Last Modified: Tue, 25 Aug 2026 00:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4520d77388744535c3707d5e6aeb9234458a611ab746b67e0d45f3a23d2e415`  
		Last Modified: Tue, 25 Aug 2026 00:32:58 GMT  
		Size: 92.6 MB (92572172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa86077d502df76a732077dd006459b037305fdfdba4c251caa06d6b9af520db`  
		Last Modified: Tue, 25 Aug 2026 00:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f527981c9b501173360ed94bac0c7ca4245defd6b42b26299b117faa034c1cc`  
		Last Modified: Tue, 25 Aug 2026 00:55:58 GMT  
		Size: 12.8 MB (12758910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d31d5b95908769b72ea20c0efcb19433bcd64d8cad202d2c80aae12f644d99b`  
		Last Modified: Tue, 25 Aug 2026 00:55:58 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7539819b7563699c64ad15d5918a883314a43a645472b0b4287d6031b46b6f67`  
		Last Modified: Tue, 25 Aug 2026 00:59:41 GMT  
		Size: 11.8 MB (11774642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc1044535a6e9c9e1d4f6dc97c30c0cf5372a1b971eecfe1953d2ad60579e56`  
		Last Modified: Tue, 25 Aug 2026 00:59:41 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb2a8dd4a884841e195c3fc18850efe9edb58c9aa94cebf18bac24fdd635b34`  
		Last Modified: Tue, 25 Aug 2026 00:59:41 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044ea69266ad1296770c694c715a1dd33e69dd095f30b0064b3aabb742fc2527`  
		Last Modified: Tue, 25 Aug 2026 00:59:41 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa3dd8363337a51d52f9174907188c161ae972190a3764c460644fc7abb28e7a`  
		Last Modified: Tue, 25 Aug 2026 00:59:42 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8dbd9fbc1b22fa9c65d554c00b85599961111c8856841a79e7b55f0c4e47586`  
		Last Modified: Tue, 25 Aug 2026 02:47:45 GMT  
		Size: 1.3 MB (1284289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0397207849234f4198be9de018564d332fcf5f4aea43362d8cefdf2b6033a2`  
		Last Modified: Tue, 25 Aug 2026 02:47:45 GMT  
		Size: 451.6 KB (451620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208d21ef0949a00d7f6aabeca449766e12193ec17a9ec256e6672fbd70ffb345`  
		Last Modified: Tue, 25 Aug 2026 02:47:45 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a1be30a03e4e70aadb17609270cd21d71abbe1e1250f6983fbdb2c07826cac`  
		Last Modified: Tue, 25 Aug 2026 02:47:45 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2df4c40287534a4f6ffa6a826828adbad990a041733ebaf29553e8a7c13ec917`  
		Last Modified: Tue, 25 Aug 2026 02:47:46 GMT  
		Size: 832.3 KB (832288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149e81d5d918cf6078a1ade4ff3253e3d58571128dab9191bb8869f9379cd420`  
		Last Modified: Tue, 25 Aug 2026 02:47:46 GMT  
		Size: 23.1 MB (23144266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:4d019c2b2f1c6b85e200115f7d486f09eca9c20f66b4c5bc6c324e2898ed7d46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50c42d0efaf3437e08fb39dd44bab54873583909003739653be47266756354c7`

```dockerfile
```

-	Layers:
	-	`sha256:d12e718ed93d2bb35def08dbe7a2ee64b2d5513b8d6e297c494fcdf692bbec4b`  
		Last Modified: Tue, 25 Aug 2026 02:47:45 GMT  
		Size: 39.5 KB (39506 bytes)  
		MIME: application/vnd.in-toto+json
