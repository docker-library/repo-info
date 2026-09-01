## `postfixadmin:4-fpm`

```console
$ docker pull postfixadmin@sha256:5a2d16733f1d84c5ad106b67cc2c2813fa3dd3a51dc2ea7c7e8cb3980d4e1b09
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

### `postfixadmin:4-fpm` - linux; amd64

```console
$ docker pull postfixadmin@sha256:a03b7dea364d36e3aac439c95750d1500d5d949ce455c2c25c431df38e1170ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.1 MB (204089815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:532afdea9869da2e5808bcd1f20274b3af35103b9138c59c0a40ffabf9eb312c`
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
# Mon, 31 Aug 2026 21:16:00 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:16:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:16:16 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:16 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:16 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:16 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:16 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:17 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:16:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:17 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:16:24 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:24 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:16:24 GMT
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
	-	`sha256:3b7cbf54eece1641172ccdf319a0d5dd22ca2129095bd1109c9f1c8a1ecae0e6`  
		Last Modified: Mon, 31 Aug 2026 21:16:31 GMT  
		Size: 1.3 MB (1328877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d288a6a18285912240ec90f288274de7bb350d5edbfe5c35b81dbf5e0945cb`  
		Last Modified: Mon, 31 Aug 2026 21:16:31 GMT  
		Size: 3.9 MB (3857581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1198b77af047a67417d4d077b6552024d4678c7122c2a0e8ba97b04d1404c3cd`  
		Last Modified: Mon, 31 Aug 2026 21:16:31 GMT  
		Size: 2.6 MB (2604056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a12cb6f103818e2b0492e35b6ef65a974b6dee2036f130e3cebf5a12e5a943`  
		Last Modified: Mon, 31 Aug 2026 21:16:30 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0d4ee99c5b31a99cbacf9440a3d1133f33bf74a1c4280e9029ac59f701e27d`  
		Last Modified: Mon, 31 Aug 2026 21:16:32 GMT  
		Size: 832.3 KB (832291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70869ed6f722e03b6bea6f89a7122af60525c883fa6e0ad26b74e0e1039d25cc`  
		Last Modified: Mon, 31 Aug 2026 21:16:32 GMT  
		Size: 23.1 MB (23146373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:3474251a03587d76a9c5db760bd2bf82b1bf54817a4b1940f9b8687d058afd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451972893296f8dcbe04d4fb83fbe8a3b1d3d03c80de87cca52680494eca7d9a`

```dockerfile
```

-	Layers:
	-	`sha256:0a20be80ca4194234be0c77f7e760beb2e4f9e3f6d9364181ae29dbe45c7a7c6`  
		Last Modified: Mon, 31 Aug 2026 21:16:30 GMT  
		Size: 39.5 KB (39520 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; arm variant v7

```console
$ docker pull postfixadmin@sha256:37e1c87c073c9f6318eb83b5dc53f909f4f5c38f6bd3c6cde1abcb9ab0497586
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.2 MB (166202922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb777bed9c280cdfacf3a1cc06514643e745dffbfdd293be733eb8b12d0f417d`
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
# Mon, 31 Aug 2026 21:21:06 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:21:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:21:32 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:21:32 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:21:32 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:21:32 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:21:32 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:21:32 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:21:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:21:32 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:21:32 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:21:42 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:21:42 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:21:42 GMT
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
	-	`sha256:c2378103bc90ddd3b205d5125af235386f21e181d2bbede4a6f5315aad77d305`  
		Last Modified: Mon, 31 Aug 2026 21:21:48 GMT  
		Size: 1.3 MB (1266188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce648c3e21a98d944e6b7530c4d60eabe51cf7ffdac947602be16e4bdfde7e3b`  
		Last Modified: Mon, 31 Aug 2026 21:21:48 GMT  
		Size: 3.0 MB (3015367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b4e835b73bf1cd34a44bcf35d56417b4b590dbbe6f27f8aa34a9acc9803c6e8`  
		Last Modified: Mon, 31 Aug 2026 21:21:48 GMT  
		Size: 2.6 MB (2604052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a686ba5d4108db4b6eb06ac1e42e106eee38a875e2e807c9a1082276e88a75d`  
		Last Modified: Mon, 31 Aug 2026 21:21:48 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477f512c602d16dc67ab34544a2e00c3e25a4aadfa4f93da804993661b2f77a8`  
		Last Modified: Mon, 31 Aug 2026 21:21:49 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5dfb7fd2cd595ebb72845ab6a3b5d9e8a4b86bfa183f48084141f96400796fd`  
		Last Modified: Mon, 31 Aug 2026 21:21:50 GMT  
		Size: 23.1 MB (23144164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:85643164e7fcc2c4b3214bf08245106d5ec2abe200c9803da9430b2cbb03c1ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60639ff0b2e8f650ffe323d925c877106517a978aefc2d6f1f47350ee2a02757`

```dockerfile
```

-	Layers:
	-	`sha256:137d321fef97b11bb3196490c7fa2516900533b60d4241da72fc39138c16bb9f`  
		Last Modified: Mon, 31 Aug 2026 21:21:48 GMT  
		Size: 39.7 KB (39654 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:b38f2c464e26f9b9a863c1b70b36ff6152adb601a50b51ad0ffc49f992d46d33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197054662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4854ebdca0b6361dd3ffb0eb8c53faac5036a78886e8c16c1ce63f61e1e46715`
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
# Mon, 31 Aug 2026 21:16:24 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:16:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:16:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:47 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:47 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:47 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:47 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:48 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:16:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:48 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:48 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:16:56 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:56 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:16:56 GMT
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
	-	`sha256:51f1be9e397f3db9c148a3149fcddb6e80b08336d60187afbd524cad6c62fe81`  
		Last Modified: Mon, 31 Aug 2026 21:17:03 GMT  
		Size: 1.2 MB (1242635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9db9ab691e966f120e28bf3cc76a7def4d15fb5d7b2d11a33e0530ca01c1cf`  
		Last Modified: Mon, 31 Aug 2026 21:17:03 GMT  
		Size: 4.2 MB (4196533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989072e087183c4c7808ebf1057acb32e700f665d3082d067e7d8cfc79fe70ee`  
		Last Modified: Mon, 31 Aug 2026 21:17:03 GMT  
		Size: 2.6 MB (2604062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c873f82af1f2e7314da21c7b6f52e1f04714403efbd96791e1a590228bd74461`  
		Last Modified: Mon, 31 Aug 2026 21:17:02 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ef773661806132681e68462aff23b8f573073141587dd87ed034eb5f3d06c3`  
		Last Modified: Mon, 31 Aug 2026 21:17:04 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0570477cc51c7f5b08ba1fca70178d2251f1e0657a7f65bed6411bf45bc4dcf`  
		Last Modified: Mon, 31 Aug 2026 21:17:04 GMT  
		Size: 23.1 MB (23145978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:3f834eda77a6f291b1f2e1c0c01ceed327eeb902f7aee3b388f10af4f598d82a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.7 KB (39695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb713bef6046246d1befb782015ec899dcc5aa8d6cb725f8d429a61c5d6ad75b`

```dockerfile
```

-	Layers:
	-	`sha256:974bc8a5934d7f9d20def06be0e3673415c19d67537606e45e81f79d7a6633d6`  
		Last Modified: Mon, 31 Aug 2026 21:17:02 GMT  
		Size: 39.7 KB (39695 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; 386

```console
$ docker pull postfixadmin@sha256:404dbb90c0c87b81bb7c598a15a860cc8d3fec83e216096a2b6b8b91fb26e3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.0 MB (204026640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff0d4ce7fc4659fc63c0598ea980b7217fd769ab3df0ef25350dd14303627d09`
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
# Mon, 31 Aug 2026 21:16:03 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:16:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:16:23 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:23 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:23 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:23 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:16:23 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:16:24 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:16:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:24 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:16:24 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:16:32 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:16:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:16:32 GMT
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
	-	`sha256:64fae359879d2ca53c98669feaff3ad6f05603117c31f48b6c3a975c9855f5ea`  
		Last Modified: Mon, 31 Aug 2026 21:16:38 GMT  
		Size: 1.3 MB (1287827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1eb155dbde734f2c37c6a0303f3901b1642c16ade1b6a34d93ff0c64c38eee7`  
		Last Modified: Mon, 31 Aug 2026 21:16:38 GMT  
		Size: 3.8 MB (3813942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f79ab73b9792f4789c72cc12bab58405246d42681d80d66c9d2f1515dac1c16`  
		Last Modified: Mon, 31 Aug 2026 21:16:38 GMT  
		Size: 2.6 MB (2604058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86aa2c35b77aa07cc163af4d7d4c3784431bd022848bd3a8149a87d3090c680e`  
		Last Modified: Mon, 31 Aug 2026 21:16:38 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd978d18ac4f168a480f52d20dcb8417b1927cab0a76dc921d29720ffac7d6a`  
		Last Modified: Mon, 31 Aug 2026 21:16:39 GMT  
		Size: 832.3 KB (832288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c701229efdd9b4b5ed84c7bda0e91e1c121b10cec6414768233618785ebf7d4`  
		Last Modified: Mon, 31 Aug 2026 21:16:40 GMT  
		Size: 23.1 MB (23145684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:50dc4b656e1d01d46bd46889082f421ffd9d0ea32333e4cb5e527de3f0b2e90f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0b1f2bc073712aa40db1065a76892e215890cb6dd1a7937bb5006af667bb8`

```dockerfile
```

-	Layers:
	-	`sha256:e2fbf7962179ac68eff904c0ff8e4c00af9cec4193145beb784faa98ed4c5af5`  
		Last Modified: Mon, 31 Aug 2026 21:16:38 GMT  
		Size: 39.5 KB (39475 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; ppc64le

```console
$ docker pull postfixadmin@sha256:2de6a2cc587c556ef710d74a812560aad73a54e90114c6c4943584e3e9d5ded8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.4 MB (200424255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:316cde069e76e58f085b4ed5dec381aa16047f4de0c434a332573c92bee5230e`
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
# Mon, 31 Aug 2026 22:41:37 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 22:41:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 22:42:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 22:42:24 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 22:42:24 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 22:42:24 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 22:42:24 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 22:42:26 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 22:42:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 22:42:26 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 22:42:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 22:42:43 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 22:42:43 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 22:42:43 GMT
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
	-	`sha256:cf9c553f176361922986375c1e83906f891592ce8ebe8189f8a0ea95c2b27927`  
		Last Modified: Mon, 31 Aug 2026 22:42:54 GMT  
		Size: 1.2 MB (1244917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6467b966b443422d185be332197d194e41b27a606d6bd22ad6466a5a5f3fc831`  
		Last Modified: Mon, 31 Aug 2026 22:42:54 GMT  
		Size: 4.2 MB (4164218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a289cb2782fb37cfa86031db4a457c4b90b207a5cf36cd0f139afb30176465f`  
		Last Modified: Mon, 31 Aug 2026 22:42:54 GMT  
		Size: 2.6 MB (2604064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684691c6aee79359dd72d7171866b710c0585c48c1c27b158221e0c8524d5ee5`  
		Last Modified: Mon, 31 Aug 2026 22:42:54 GMT  
		Size: 1.7 KB (1657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfd6ad3110af9e5a8aa6df67648070d316124d4cf603a997682281b51aa6466`  
		Last Modified: Mon, 31 Aug 2026 22:42:55 GMT  
		Size: 832.3 KB (832290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46b689ffdbd7f1d8af4ab8f18a82374e93be3b5d3759e19fc309316db43b260`  
		Last Modified: Mon, 31 Aug 2026 22:42:56 GMT  
		Size: 23.1 MB (23145609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:1008ab8f96f1c608cdb6458be21e26bca2799deff5ab33ab7f9843e2ede18b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.6 KB (39580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c0481b2159c579bcc56108543d60764ca0bd0623914deb316dd579954f2a5da`

```dockerfile
```

-	Layers:
	-	`sha256:9fe27d056447ca47d6e5afc42b2b3b1121224648ad3cf9d78fb84ec8d4a35e59`  
		Last Modified: Mon, 31 Aug 2026 22:42:54 GMT  
		Size: 39.6 KB (39580 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm` - linux; riscv64

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

### `postfixadmin:4-fpm` - unknown; unknown

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

### `postfixadmin:4-fpm` - linux; s390x

```console
$ docker pull postfixadmin@sha256:2167b8b03784d85d119380d66aa7149f2a18cb04b1a17e19a404ec38a8e17ae2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.4 MB (178379627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73546418db5540f8d07b0e8be8cb233e25deeabff64f3ffaed956b398e788f73`
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
# Mon, 31 Aug 2026 21:18:58 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Mon, 31 Aug 2026 21:18:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		gosu 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:19:25 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libpq-dev 		libsqlite3-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 			apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:19:25 GMT
ARG POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:19:25 GMT
ARG POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:19:25 GMT
ENV POSTFIXADMIN_VERSION=4.0.5
# Mon, 31 Aug 2026 21:19:25 GMT
ENV POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
# Mon, 31 Aug 2026 21:19:26 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Mon, 31 Aug 2026 21:19:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:19:26 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 21:19:26 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 21:19:37 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.5 POSTFIXADMIN_SHA512=b9549137e5bb6cf69fe76aef2711092a7e74ec223ee272d0303430b03da16ba8cfe704047f8e07ee5bd1ef6b632cac9ae2c0830271629b193c395197e1f4d93d
RUN set -eux; 	composerDeps=" 		unzip 	"; 	apt-get update; 	apt-get install -y --no-install-recommends $composerDeps; 		export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME"; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $composerDeps; 	apt-get dist-clean # buildkit
# Mon, 31 Aug 2026 21:19:37 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 21:19:37 GMT
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
	-	`sha256:e2fb51a494da358ada6c8aac46e7d254667d205b77966afba95e73154fbfc949`  
		Last Modified: Mon, 31 Aug 2026 21:19:49 GMT  
		Size: 1.3 MB (1284303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5aa6d22c9702f98ba09642fde0132bd992d52800eb0ec65b9d858c8dc476227`  
		Last Modified: Mon, 31 Aug 2026 21:19:49 GMT  
		Size: 3.5 MB (3525978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c546df57e773ae58d92c79e16a27c2df8c7dc0ed0b5066b47839cd6fec4403d`  
		Last Modified: Mon, 31 Aug 2026 21:19:49 GMT  
		Size: 2.6 MB (2604065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a6283927dc011cc804c68fa41cc26934ab2b2ec2307e2bf8d2f98427b64d321`  
		Last Modified: Mon, 31 Aug 2026 21:19:49 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1c079526024eb963055d66510caa59513cbaf3ff2bf3ec8ce9b75495056da7`  
		Last Modified: Mon, 31 Aug 2026 21:19:50 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5883e7f8e8c8314db4073bcccaf0599b73d43328bb2079ae4075b3578609b1da`  
		Last Modified: Mon, 31 Aug 2026 21:19:50 GMT  
		Size: 23.1 MB (23144729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:2caefc56792608023d690b1e02bebfbdfb6a2d21e4370c6574f4a7bfcc843bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.5 KB (39512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8885130adda007ac9dfab2d3b28e28638d3ce8acb83fe679220a6f1f08e1479`

```dockerfile
```

-	Layers:
	-	`sha256:6ed3d70d40a2428ed82324a241f5e258a91d2be892f304d469fa245c5e9e0744`  
		Last Modified: Mon, 31 Aug 2026 21:19:49 GMT  
		Size: 39.5 KB (39512 bytes)  
		MIME: application/vnd.in-toto+json
