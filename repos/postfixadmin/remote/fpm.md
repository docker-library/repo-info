## `postfixadmin:fpm`

```console
$ docker pull postfixadmin@sha256:eddcc5ee12a7f3444553c7398b683d0da3bb7fe04093a1f0a745014a90b1b562
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
$ docker pull postfixadmin@sha256:8f70dffd91316c22b758a0c5380ed190573f4796c66c192ac9f865ad6253068a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200623692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:637b0aec9286dd63e1b7e603a74c56562429420260ca1438da749c0b79bbbe8b`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:35:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:35:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:35:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:35:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:35:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:35:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:35:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:35:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:35:36 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 22:35:36 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 22:35:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 22:35:36 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 22:49:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:49:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:51:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:51:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:51:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:51:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:51:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:51:45 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:51:45 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:51:45 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:51:45 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:51:45 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:11:46 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Fri, 31 Jul 2026 00:11:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:12:04 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 00:12:04 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 00:12:04 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 00:12:04 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 00:12:04 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 00:12:04 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Fri, 31 Jul 2026 00:12:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:12:04 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:12:04 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:12:12 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 00:12:12 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:12:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8977adb6ec864e8af9c3d00e855e75c68d0abe02644736040d6f5e3fbfaaa879`  
		Last Modified: Thu, 30 Jul 2026 22:38:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de23c1a300a84f3f5d42fe460fca812484bc3c5261292ae4d63709ab347b576`  
		Last Modified: Thu, 30 Jul 2026 22:38:43 GMT  
		Size: 117.8 MB (117838540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9feb5c9696b58f5ba860240f673cc75efe51ec6607ad92fdcdeeff25481e5208`  
		Last Modified: Thu, 30 Jul 2026 22:38:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb97eadaf8a502e7c09534a88e9df6040802acd90571296715dc6f17634ea486`  
		Last Modified: Thu, 30 Jul 2026 22:51:55 GMT  
		Size: 12.8 MB (12760558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb6bb9cd612d7ff472e5ca227d211699451701ba5660d2e7a39ce1d7667eaa53`  
		Last Modified: Thu, 30 Jul 2026 22:51:54 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e35b56a8ec7b2b569565787b33e450dac4e49eda912c7e5c8c044af8095593c`  
		Last Modified: Thu, 30 Jul 2026 22:51:55 GMT  
		Size: 11.9 MB (11904139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f05861623fc60f2631c10ab44ec49e82091047b7722562ffa4362ea9c9d6fbc`  
		Last Modified: Thu, 30 Jul 2026 22:51:54 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb40ac5f45aa94456db1073ed490b54a0c58e10093bc90e6fbcf23307031cf0a`  
		Last Modified: Thu, 30 Jul 2026 22:51:55 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21a175a742d36885aa18672d732f3e9b864a597f154842a17c1b54db3c9ba80`  
		Last Modified: Thu, 30 Jul 2026 22:51:56 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d382a15c0f6294ce9af419d061a838703fb80992cd6aa73a4d5fce9314497bb`  
		Last Modified: Thu, 30 Jul 2026 22:51:56 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56e5b1fd3cb3cadeac90f30d9d7eabe75b029ffbe65ac151ebac89bd820025b1`  
		Last Modified: Fri, 31 Jul 2026 00:12:18 GMT  
		Size: 1.3 MB (1328847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b748404e96be3da4e3388e5d716cd4b014b9948482a24c2db223637445eae40b`  
		Last Modified: Fri, 31 Jul 2026 00:12:18 GMT  
		Size: 443.4 KB (443450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b01938741f9f945a576045ad078685384a1fb65f85e613e537ae60edb261025`  
		Last Modified: Fri, 31 Jul 2026 00:12:18 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d070eb9d53d5faaae2faae77040589a8d4e0df274b5ccd0809c981d9972a791`  
		Last Modified: Fri, 31 Jul 2026 00:12:18 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7a979dd835e7404561c4d5ed9e773b9ac237197f59995c6fe283d5913acce2`  
		Last Modified: Fri, 31 Jul 2026 00:12:19 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b21af7dc52674d953b4a19cefb928246b575d0913d3fdbc9bc02d46943aa88`  
		Last Modified: Fri, 31 Jul 2026 00:12:20 GMT  
		Size: 23.1 MB (23116065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:4ef3a4873dd4c555071af6ad1bf3b43a441342cfd290d018b5cd958247263d7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defbbfe49e2746e2c289c3ec8cdfb8db6741c9b3128409d47b53bb1a875d031f`

```dockerfile
```

-	Layers:
	-	`sha256:94f4951da46114027ca54431719eaae0b63b45b266910b9a8ab823940176c98a`  
		Last Modified: Fri, 31 Jul 2026 00:12:17 GMT  
		Size: 39.5 KB (39515 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; arm variant v7

```console
$ docker pull postfixadmin@sha256:b39314d1b4edc43c6e5215b3e72d1f45012f79c90efb2136c674766030fe1bbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.5 MB (163541077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad4275a5ec22185264a8075cde867ef22aa6d27c48ffc75a95aa3787dec44d5`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:35:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:35:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:35:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:35:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 23:10:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:10:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:12:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:12:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:12:50 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:12:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:12:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:12:51 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:12:51 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:12:51 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:12:51 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:12:51 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:35:04 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Fri, 31 Jul 2026 00:35:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:35:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 00:35:29 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 00:35:29 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 00:35:29 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 00:35:29 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 00:35:29 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Fri, 31 Jul 2026 00:35:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:35:29 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:35:29 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:35:40 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 00:35:40 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:35:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:540784aed246c2934ceca2322ed6db5c3a310672be83d513b3fd43b444edba03`  
		Last Modified: Thu, 30 Jul 2026 22:38:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ccb842e4abdbc8bcf9c170bf55ba8e633b118cb8e6ef82539788c0d6c8fc8a`  
		Last Modified: Thu, 30 Jul 2026 22:38:29 GMT  
		Size: 86.3 MB (86258580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fa8ae656b44457253e1e8df90d4f7cab2711a81e1afd41ad3e7aaf3ba8d635`  
		Last Modified: Thu, 30 Jul 2026 22:38:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d7a417fbb778ceb5b9338d99b58c5b03b4fdb24b6daf6aa1a58ad7e8e19475`  
		Last Modified: Thu, 30 Jul 2026 23:13:01 GMT  
		Size: 12.8 MB (12758350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ad0b87c090991707d69438f27068a5e38fb93c0ee18c627f9278f22f9f4db7e`  
		Last Modified: Thu, 30 Jul 2026 23:13:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8fd7f98cb9d25484f0763295f04b5ba95db3710481a7c63e9413b785704dabc`  
		Last Modified: Thu, 30 Jul 2026 23:13:01 GMT  
		Size: 10.1 MB (10088173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5736677b567d461fb992cab522640a48a4674e4304e60c6fee51438577c1f6`  
		Last Modified: Thu, 30 Jul 2026 23:13:00 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920c371310cc57b3ef586e7089a698e7b394be141f29d7b82a403816e75d8687`  
		Last Modified: Thu, 30 Jul 2026 23:13:01 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34db9196f4cd463d58fc568540051174cd5be01fdee6748eef0f8f03fe971aa9`  
		Last Modified: Thu, 30 Jul 2026 23:13:01 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be779af2bb758c81e33b28e52d66c6bd50224a522d4e5e894df5993477f0345b`  
		Last Modified: Thu, 30 Jul 2026 23:13:02 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3328afd08b33f5c5b52b03e9fda61ba2a7e6c75c111382b0390173b10668bccd`  
		Last Modified: Fri, 31 Jul 2026 00:35:46 GMT  
		Size: 1.3 MB (1266159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0253c66146f30567006675f985df6dbd7fcc86f678dc2897e24e56d447103a`  
		Last Modified: Fri, 31 Jul 2026 00:35:46 GMT  
		Size: 398.6 KB (398604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a30afa4beb1b08d5cd05742fa9a4732547cc1331eb50295ed36e70296c616cd`  
		Last Modified: Fri, 31 Jul 2026 00:35:46 GMT  
		Size: 2.6 MB (2604063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6552b914bf7aa7f21678607785d503d94c2225fedb10358e1bf8ebba5026a4f9`  
		Last Modified: Fri, 31 Jul 2026 00:35:46 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaec2c71ea043378f72824820447dc93a55e14973b0be70fd4efbf1199debea3`  
		Last Modified: Fri, 31 Jul 2026 00:35:47 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719fc51f9836139ee03c035b1f6132ed4c8504143280ca8789c93c5446db7069`  
		Last Modified: Fri, 31 Jul 2026 00:35:48 GMT  
		Size: 23.1 MB (23113566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:71cfcbea4cc225df2a06519fb441ae7cce6ef6cb6317c0d847c12ea1a2028e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be4fe08cec83935748ea347a9b0bf3b6746d6a47f47d24c8e34f8408e0abd11`

```dockerfile
```

-	Layers:
	-	`sha256:179234363c911aba1f5c3147656a821225c62a0e49550b5c060261d4e919c90d`  
		Last Modified: Fri, 31 Jul 2026 00:35:46 GMT  
		Size: 39.6 KB (39649 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:b23f94f009b2d86832e601236117d9a1cbfd739ecb9bf1bb741ac7b38493a3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.2 MB (193249424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f257816ff7d188c02a2e6e2052d0a1ad0a6ab4be2dd1337c3a48b6e7c43f67aa`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:49:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:49:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:49:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:49:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:49:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:49:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:49:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:49:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:49:49 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 22:49:49 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 22:49:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 22:49:49 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 22:49:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:49:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:53:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:53:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:53:36 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:53:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:53:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:53:36 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:53:36 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:53:36 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:53:36 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:53:36 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:14:57 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Fri, 31 Jul 2026 00:14:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:15:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 00:15:18 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 00:15:18 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 00:15:18 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 00:15:18 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 00:15:19 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Fri, 31 Jul 2026 00:15:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:15:19 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:15:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:15:26 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 00:15:26 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:15:26 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705cdfa66d25923292faceb8cb8a7672c7502aca16b45d7b3ef2e2b651e984e7`  
		Last Modified: Thu, 30 Jul 2026 22:53:57 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9553798cea3e022804cac872dd9e3686b07d4b0e033ba6c8151c08977ef0bd9`  
		Last Modified: Thu, 30 Jul 2026 22:54:00 GMT  
		Size: 110.2 MB (110170125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a6781c80003f71269fc9f13a68fce0c3f8ba31d1214b9755b722e0b816182a`  
		Last Modified: Thu, 30 Jul 2026 22:53:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef9f22e5264959b8004fada43789fe015f132bc1b3747beaa63a29e70aad185f`  
		Last Modified: Thu, 30 Jul 2026 22:53:58 GMT  
		Size: 12.8 MB (12760119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3068df88e6eb82ece695c30832406b14aa9ae77e4086bda3eaf5722ce105cac`  
		Last Modified: Thu, 30 Jul 2026 22:53:58 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56a53e1c36b949836619236f5b3f5b4bddeef21174e3b478100aa6be60336a1`  
		Last Modified: Thu, 30 Jul 2026 22:53:59 GMT  
		Size: 11.9 MB (11926732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ccc4f991328a6ae0d38f7f030bf48d1fc99e9190fb7e398d319c3f776949c0b`  
		Last Modified: Thu, 30 Jul 2026 22:53:59 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e00e6d4b08eb9ed6368c7684a20d5627493338bfd62765e6b34f9e9170dee3`  
		Last Modified: Thu, 30 Jul 2026 22:53:59 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b71790483c68ad549b6f7b7bf391dda78b912e722cec2b7ca773190d588ecdc`  
		Last Modified: Thu, 30 Jul 2026 22:54:00 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aa345c1fa780102e2125ebd1f2c8d0c76bbaa2bcc86eeeead192c7e8879909`  
		Last Modified: Thu, 30 Jul 2026 22:54:00 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566c7050bb71e48680ac3e1abf827617f474acd49512a7d9d2ff05a642b2f7d9`  
		Last Modified: Fri, 31 Jul 2026 00:15:33 GMT  
		Size: 1.2 MB (1242604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e721ffdc0299681b571116807d461c7e6ababc8eef742b602a3021609556769c`  
		Last Modified: Fri, 31 Jul 2026 00:15:32 GMT  
		Size: 439.3 KB (439343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e410e5b1ba886644f3b95e0b272e91a5b8d9b3387da11b5690be9ca5190c6c2`  
		Last Modified: Fri, 31 Jul 2026 00:15:33 GMT  
		Size: 2.6 MB (2604063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae626301fcd8aee3e95763c984dfbd706af4c20ab346d7f174221c9f510aaf`  
		Last Modified: Fri, 31 Jul 2026 00:15:32 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616d66b6c9e11c23b9d593ad4fdb877d04a7c24334a5d75abc3441c0b0158272`  
		Last Modified: Fri, 31 Jul 2026 00:15:34 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd9c256d9c9b80cdd05a0425b49d99fe16b7f0826b261a0d523d10fc88bd3d90`  
		Last Modified: Fri, 31 Jul 2026 00:15:34 GMT  
		Size: 23.1 MB (23115595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:b4023d6fda4d3f381844a29a10bc0b9e5d8c6309023f90c579d9fdf730f6d396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18ad1464a6368b572c3cbe8830a178a086700df8d4b546cd76a6813fc8dcb2e4`

```dockerfile
```

-	Layers:
	-	`sha256:dcb390e3202f5a4f93dd71e895c8d0ba65b1ee80e35a128ddbbe17e1975355a5`  
		Last Modified: Fri, 31 Jul 2026 00:15:32 GMT  
		Size: 39.7 KB (39690 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; 386

```console
$ docker pull postfixadmin@sha256:c1e0fbdb534ea6203f9a2ea9fcf35535031f1edc43adc8ea6086b51da69e485a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200624073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6902cfc8fdb252ba4533fb6c42d6f7de953b7008fc14b63c2970ce0c8f3e6675`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:49:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:50:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:50:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:50:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:50:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:50:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:50:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:50:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:50:04 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 22:50:04 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 22:50:04 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 22:50:04 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 22:50:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:50:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:52:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:52:54 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:52:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:52:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:52:54 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:52:55 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:52:55 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:52:55 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:52:55 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:12:16 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Fri, 31 Jul 2026 00:12:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:12:37 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 00:12:37 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 00:12:37 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 00:12:37 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 00:12:37 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 00:12:38 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Fri, 31 Jul 2026 00:12:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:12:38 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:12:38 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:12:46 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 00:12:46 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:12:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0514a5750cd04e1d5ea87023945b202bbc9f160553dd1955f4feb0482382ece9`  
		Last Modified: Thu, 30 Jul 2026 22:53:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15571e27d3e784bd9129658e0034e83605b194ccd6c379354132c69ec3ef9d46`  
		Last Modified: Thu, 30 Jul 2026 22:53:18 GMT  
		Size: 116.1 MB (116142696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427775365fb4c202e912750c7269caf5e82ea4827c238e5c2d5253e70a4f5350`  
		Last Modified: Thu, 30 Jul 2026 22:53:15 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42f496350b6928a47ebedc5c627b800d3ea1caf8d225e742e07f4de9323296a`  
		Last Modified: Thu, 30 Jul 2026 22:53:16 GMT  
		Size: 12.8 MB (12759485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87efae616b244c08441e41dbfc9c90162070c764677cff80014114f324ad6444`  
		Last Modified: Thu, 30 Jul 2026 22:53:16 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b8b680e2a0a77ad0e1754c7fd5d3f32e5a131b4bd55f7a6b37d35c0646e17f`  
		Last Modified: Thu, 30 Jul 2026 22:53:17 GMT  
		Size: 12.1 MB (12112211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d96478ee7e1db257b58b659ff3a9c4fb99c1bd8cd30509c8c6f16024cd16c1`  
		Last Modified: Thu, 30 Jul 2026 22:53:17 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715bfa4816358ad7bcdc056b61728e9eb633c3ab8b86c5a2bb1c1108eb525227`  
		Last Modified: Thu, 30 Jul 2026 22:53:17 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06e7d2d7e9f9b46fd2fc79e9545f63a57e51a4fe4abc677506f921d1bee20d6`  
		Last Modified: Thu, 30 Jul 2026 22:53:18 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a76c6f8c970e8041a7a7ff9f823be84e83767399234e17124c66e1c1395429`  
		Last Modified: Thu, 30 Jul 2026 22:53:18 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0060a916a5303dcbe10fbf607a53d987943b37659aff273971ca1b27806842a2`  
		Last Modified: Fri, 31 Jul 2026 00:12:53 GMT  
		Size: 1.3 MB (1287755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1832aa364fd525795d36d9adc41b99b171dd3fee8820e1deda70a3bda4f838bd`  
		Last Modified: Fri, 31 Jul 2026 00:12:53 GMT  
		Size: 459.3 KB (459254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d46f356a8067bb136920091b65c38825c2e32c61aef56e8c2a4ab961fae152`  
		Last Modified: Fri, 31 Jul 2026 00:12:53 GMT  
		Size: 2.6 MB (2604063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06541a852cc30470ef1e76d20643ae82298c1cb6cbdadc14feaca31a5364f534`  
		Last Modified: Fri, 31 Jul 2026 00:12:53 GMT  
		Size: 1.7 KB (1651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47277848b6ec542dfeedceeea29c509cddaddcc9d8819e41b0fe4b4e24e5f9c`  
		Last Modified: Fri, 31 Jul 2026 00:12:54 GMT  
		Size: 832.3 KB (832288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305f11a221ba32a116eb2f0d3d0d9390ef5c32fe738837fd11efa1a5ed4af0cf`  
		Last Modified: Fri, 31 Jul 2026 00:12:54 GMT  
		Size: 23.1 MB (23115192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:fc85b29d5a7346d2461b2b527e13305acf855991f481bea1f2fdabc961c20b44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2866c74617f812fc5b3972f825bc0d5e38b0c914888f6fc20c2493be720665ad`

```dockerfile
```

-	Layers:
	-	`sha256:0c9f0e624a8a11c8305f7d40c61a328d0e41fa15edf1bdd5f7e3af93453c81d4`  
		Last Modified: Fri, 31 Jul 2026 00:12:52 GMT  
		Size: 39.5 KB (39470 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; ppc64le

```console
$ docker pull postfixadmin@sha256:5075f6f97859d33d6fa34b864673d9f6697d0965396b97cb22968cacc9859dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196692394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4bd3eba1a1fe7aab12a108158f914be15697b1452c9ff4ad0fbed11acaa7b15`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:47:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:47:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:47:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 02:45:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 02:45:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:52:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 02:52:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:52:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 02:52:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 02:52:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 02:52:43 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 02:52:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 02:52:43 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 02:52:43 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 02:52:43 GMT
CMD ["php-fpm"]
# Tue, 14 Jul 2026 14:07:37 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 14 Jul 2026 14:07:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 14 Jul 2026 14:08:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 14:08:17 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Tue, 14 Jul 2026 14:08:17 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 14 Jul 2026 14:08:17 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Tue, 14 Jul 2026 14:08:17 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Tue, 14 Jul 2026 14:08:19 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 14 Jul 2026 14:08:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 14:08:19 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 14:08:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 14 Jul 2026 14:08:33 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 14:08:33 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 14 Jul 2026 14:08:33 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd9fd337cd7899e7af7638f29dae4c574aa394164bd2af437580f9c9c2182fa6`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10f965ef16589e91b31b56f5b8058fb73d0f3a06daf05fe4c4ff6c738725671`  
		Last Modified: Tue, 14 Jul 2026 01:52:24 GMT  
		Size: 109.6 MB (109599986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aa5772e1f0e49ca42c6d5c16739c4491de58fe0b69597250fd50ff7b194b05`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ed182de2819c2c627c7bb57ef1ef7380e7215fa85eefa9a24cad015e24a9df`  
		Last Modified: Tue, 14 Jul 2026 02:49:00 GMT  
		Size: 12.8 MB (12760323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8b3fa2ed4f4e7e203cc640cc1b97c8b10061e007d951fe355c600dc902ce5c`  
		Last Modified: Tue, 14 Jul 2026 02:48:59 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab9d715bf1234b2f3dc84c3fa5cce006ce388fd9dbcddbb5a9bfbb80653c910`  
		Last Modified: Tue, 14 Jul 2026 02:53:05 GMT  
		Size: 12.4 MB (12441611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cc89dbd7e832ae772f1b97bfee6b41f92425be5b19507413f91fdd232ab998`  
		Last Modified: Tue, 14 Jul 2026 02:53:04 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a711fa841699ca48c703da7c4b39a4f10c8e75232439590e6622188624466f1`  
		Last Modified: Tue, 14 Jul 2026 02:53:04 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96914a4bb4af90a658ffcd78034ca19cf797a93d1b5a2b6875c7008cad5453ae`  
		Last Modified: Tue, 14 Jul 2026 02:53:04 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4209559406528ece41f4a94546a44c42907c2d685d8ca8434caf411d5e44a94d`  
		Last Modified: Tue, 14 Jul 2026 02:53:06 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea33a528a09829f4ca052388e56ff08a95ffde44aee8c624e94aca0a60ec6b04`  
		Last Modified: Tue, 14 Jul 2026 14:08:44 GMT  
		Size: 1.2 MB (1244955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4c16f050d190f4b24872534a2375d2515f1858ab931f7665f16b51f408166e`  
		Last Modified: Tue, 14 Jul 2026 14:08:44 GMT  
		Size: 477.9 KB (477917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79d4bdd52be585fbac80e9c59ee293994942b096a6275f4dace734766350db3`  
		Last Modified: Tue, 14 Jul 2026 14:08:44 GMT  
		Size: 2.6 MB (2604064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f9ac86c1608899f27adcb2a01609b7291365081748e0890933c62092052637`  
		Last Modified: Tue, 14 Jul 2026 14:08:44 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2967fe74a7193a0c98af3fb3df64123c0c1c9c7da310a97cf134fadb6f421d`  
		Last Modified: Tue, 14 Jul 2026 14:08:45 GMT  
		Size: 832.3 KB (832290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd9f5e02b5f43f8c9a880a0b9377aca9fc39cc21d0f523f542a62c85a947b9c`  
		Last Modified: Tue, 14 Jul 2026 14:08:46 GMT  
		Size: 23.1 MB (23114940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:03c246371f6b4feb2a2d9b5330b2c1abdfbde413726102f7a3f5df578a85d8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:114e4092615e77a70e6a5db4872bb4bbc5e5fde93820efae854c025c10d4a969`

```dockerfile
```

-	Layers:
	-	`sha256:36ec22aa0165ffbc239bbd81c6567442320d3d1b9577bd492d4bda638852f389`  
		Last Modified: Tue, 14 Jul 2026 14:08:43 GMT  
		Size: 39.6 KB (39575 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; riscv64

```console
$ docker pull postfixadmin@sha256:974b61e7fbcec68de51f252b5cd51971554c3de4a393539e36ce05fb8961c32a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.3 MB (227340984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:218a866b34d7b59f1ca2c87044f8ce580176e8e2ff440d8bb1175dfeceb0339d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 09:54:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 09:56:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 09:56:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 09:56:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 09:56:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 09:56:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 09:56:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 09:56:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 09:56:04 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 09:56:04 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 09:56:04 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 09:56:04 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 21:19:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 21:19:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 23:57:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 23:57:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 23:57:04 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 23:57:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 23:57:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 23:57:05 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 23:57:05 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 14 Jul 2026 23:57:05 GMT
STOPSIGNAL SIGQUIT
# Tue, 14 Jul 2026 23:57:05 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 14 Jul 2026 23:57:05 GMT
CMD ["php-fpm"]
# Fri, 17 Jul 2026 13:32:53 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Fri, 17 Jul 2026 13:32:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 13:42:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 13:42:18 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Fri, 17 Jul 2026 13:42:18 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 17 Jul 2026 13:42:18 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Fri, 17 Jul 2026 13:42:18 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 17 Jul 2026 13:42:20 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Fri, 17 Jul 2026 13:42:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 13:42:21 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 13:42:21 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 17 Jul 2026 13:43:39 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Fri, 17 Jul 2026 13:43:39 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Fri, 17 Jul 2026 13:43:39 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a402f4872997a5da5da69b3a347e3be938f823a5832732f76105c5c0f83a5263`  
		Last Modified: Tue, 14 Jul 2026 10:54:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdc4e0daeac0ded3e24d493163253fba6e27730e4a4bcb9c47e0bdb251fc803`  
		Last Modified: Tue, 14 Jul 2026 10:54:35 GMT  
		Size: 146.6 MB (146588003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761a368d142cea0913dda9b162f1b07b05fe29534f42d19303f73a5b7851bf22`  
		Last Modified: Tue, 14 Jul 2026 10:54:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb431c4ecceba07fadc596c00e9edcd4227caae22384e177259fb354baa52526`  
		Last Modified: Tue, 14 Jul 2026 22:12:02 GMT  
		Size: 12.8 MB (12766538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b67904954ed65380d86d48cbbb5dc40379210b5f83a18d15f2a7eddaed1677`  
		Last Modified: Tue, 14 Jul 2026 22:11:57 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceba81c23a9d7d1e6bad6f5fbc614031f3b14d76b96176dfe8839faf0d03c476`  
		Last Modified: Wed, 15 Jul 2026 00:00:00 GMT  
		Size: 11.5 MB (11468920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab89e241204d55dc38c58dbcb15f45ac47c2c2638772a23f4340b1e91892458`  
		Last Modified: Tue, 14 Jul 2026 23:59:58 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84359d6f398cda1388ab850735cbac7f7a22fe98cebd55c1e16690680d4d4461`  
		Last Modified: Tue, 14 Jul 2026 23:59:58 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c8890d8831c217d965904a454f34ba06b982d6658500996a260f9c160d391a`  
		Last Modified: Tue, 14 Jul 2026 23:59:58 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0daa5e6d6617b70179545ef5f85b31df883deed0bb5dc1cfbf7401af5930d72f`  
		Last Modified: Tue, 14 Jul 2026 23:59:59 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a27858b91a19cb549c0cc93148cea2f9bdb38d3dc312445c3d85ccf28ceef705`  
		Last Modified: Fri, 17 Jul 2026 13:44:50 GMT  
		Size: 1.2 MB (1242255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a45339be28ecf495c008f3bb2524685069514bf6e520965a96456546fee34d7`  
		Last Modified: Fri, 17 Jul 2026 13:44:50 GMT  
		Size: 431.1 KB (431085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dc784caa5a50a6ace9c3c2145c28420897edd352775d3a6e1b307ccb5131a68`  
		Last Modified: Fri, 17 Jul 2026 13:44:50 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb03b4a0f083f6d6e4909a81e2e0580242977b710ac696b84758a07f323ab30`  
		Last Modified: Fri, 17 Jul 2026 13:44:49 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adf6094e723d80596545f457739d715cb7b5486aec09e439391d6a4a806a1f35`  
		Last Modified: Fri, 17 Jul 2026 13:44:51 GMT  
		Size: 832.3 KB (832287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5e80a02223e33102274bedd6a235ebe2471f3879d2596f23c6c18aeede8aa9`  
		Last Modified: Fri, 17 Jul 2026 13:44:55 GMT  
		Size: 23.1 MB (23114789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:0087dbd08ca7533bc06de32dec8491183b676ae1529218c1cb6092cf8c2d5674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4231dcadbd1dbd499b6deaf11784d60912d4b49bdaf9977d54a3e74305d6049f`

```dockerfile
```

-	Layers:
	-	`sha256:69ed2802083acf0178bdb29d7f4309d22b797d5b15174d8f2077bf36cbe7fb21`  
		Last Modified: Fri, 17 Jul 2026 13:44:49 GMT  
		Size: 39.6 KB (39575 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:fpm` - linux; s390x

```console
$ docker pull postfixadmin@sha256:30ee36354f56902f170a461503a7afb071c382342fb0416b13de9227f3bc9e2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175269541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99f90dd9b6074d2ec645b173966fdddac2e65f3ecd76bba1adba74bbe6219d64`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:23:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:23:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:23:15 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:23:15 GMT
ENV PHP_VERSION=8.3.33
# Tue, 14 Jul 2026 01:23:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 14 Jul 2026 01:23:15 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 23:29:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:29:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:32:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:32:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:32:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:32:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:32:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:32:15 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:32:16 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:32:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:32:16 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:32:16 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 01:09:25 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Fri, 31 Jul 2026 01:09:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 01:09:49 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 01:09:49 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 01:09:49 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 01:09:49 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Fri, 31 Jul 2026 01:09:49 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Fri, 31 Jul 2026 01:09:50 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Fri, 31 Jul 2026 01:09:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:09:50 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:09:50 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 01:10:02 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Fri, 31 Jul 2026 01:10:02 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 01:10:02 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d8a2297d172d8695bfdc23da99328c20335f9ac835a9cce44d0dd7f41cbf49`  
		Last Modified: Tue, 14 Jul 2026 01:27:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73ea782a4865a5a88f2ab43d08888c21446fdc7f7e82f14de666dbde0b9ad3f`  
		Last Modified: Tue, 14 Jul 2026 01:27:49 GMT  
		Size: 92.6 MB (92572779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b23cdcbb2b5a0fb374d4028462f5c1acc9059a0db6b28db6bc9369a4f4d1d93`  
		Last Modified: Tue, 14 Jul 2026 01:27:47 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a441a86ce6dc271b7a03df3293e175827ffeb9a05a83612690da9ab7e172582`  
		Last Modified: Thu, 30 Jul 2026 23:32:32 GMT  
		Size: 12.8 MB (12774485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713e614a67aea88fa83d3e70cd8b322f177b8f65c74a93f59526db485fef0e1a`  
		Last Modified: Thu, 30 Jul 2026 23:32:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14eb2682445b08d6b0b2c006961154485d76b06c69aa35b9ae4d12b79498cd7b`  
		Last Modified: Thu, 30 Jul 2026 23:32:32 GMT  
		Size: 11.8 MB (11774753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156e1a0780b8ae06c416a0b2462a24c576dd137a487d8551894ee52f81db51d7`  
		Last Modified: Thu, 30 Jul 2026 23:32:31 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf82a9cca9c9f501e45cf449004f45e87953b35679647c76a40fb2b0754e0ef`  
		Last Modified: Thu, 30 Jul 2026 23:32:32 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac99a95b3281359b2d0a76fc8a5b7b1197566216a4bd4e1952e68eb86f76980a`  
		Last Modified: Thu, 30 Jul 2026 23:32:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48dd5e48f903fc52528daf14e75ef2375ed9216eec3506a49543e76fb3555beb`  
		Last Modified: Thu, 30 Jul 2026 23:32:33 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c1541994e64c08628a17b80f415930a8c81e477f7c4e0bb8ca62e0f560100c`  
		Last Modified: Fri, 31 Jul 2026 01:10:16 GMT  
		Size: 1.3 MB (1284314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0db83e65bc185e5c8b4b5525dbdff834c14aea0e73aab2761d852366b8ecc2`  
		Last Modified: Fri, 31 Jul 2026 01:10:16 GMT  
		Size: 451.1 KB (451106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181c6dc78bdbff10392877038d8a4df94a4fd36f66133cccb1928a64f1f62f79`  
		Last Modified: Fri, 31 Jul 2026 01:10:16 GMT  
		Size: 2.6 MB (2604063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a03a26f273622e11d7bb21a3dc1891fbe7eb733fb1f3c59ebe0d4cebe2d7d1b`  
		Last Modified: Fri, 31 Jul 2026 01:10:16 GMT  
		Size: 1.7 KB (1653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4a50d2f657d317a3406ade3f615bc7053bf4b4f8737983e217d361561422e6`  
		Last Modified: Fri, 31 Jul 2026 01:10:17 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1143e11ff06ff693d822d4844d1c7c598ad12d40feb8ad21e8c33813d8c5ab9b`  
		Last Modified: Fri, 31 Jul 2026 01:10:18 GMT  
		Size: 23.1 MB (23114283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:4ce742bf404a2bc9354ecd2578249f0bc63ec53690e573208f626616436acc4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a903d869b45677f07a7adffe5247acd2d0d0da829a397c78de4a09b53cea1c2`

```dockerfile
```

-	Layers:
	-	`sha256:af06b083f1e6a57eefc3aa8a2e78a3dd5605848708408611be5b13dffa5a16fd`  
		Last Modified: Fri, 31 Jul 2026 01:10:16 GMT  
		Size: 39.5 KB (39508 bytes)  
		MIME: application/vnd.in-toto+json
