## `monica:apache`

```console
$ docker pull monica@sha256:5f284189a14792883675e15f03c04446b6947209f8006417b9f935136e19b73a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `monica:apache` - linux; amd64

```console
$ docker pull monica@sha256:b41e3040e135597e5425f6833c81d2ede275707bca108d8fef2718c5dd5b5789
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.6 MB (225596471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:374f6992dff8b605403996c7c63a5ac751d18da1ea4f426e3e359d1f2f70e0fe`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:35:34 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:35:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:35:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:35:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:35:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:35:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:35:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:52:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:52:31 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:52:31 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:52:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:52:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:52:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:52:31 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:52:31 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:52:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:52:31 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 22:52:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:52:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:55:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:55:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:55:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:55:12 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:55:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:55:12 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:55:12 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:55:12 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:55:12 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:55:12 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:27:57 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Thu, 30 Jul 2026 23:27:57 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         bash         busybox-static     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:29:21 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libicu-dev         zlib1g-dev         libzip-dev         libpng-dev         libpq-dev         libxml2-dev         libfreetype6-dev         libjpeg62-turbo-dev         libgmp-dev         libmemcached-dev         libssl-dev         libwebp-dev         libcurl4-openssl-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     if [ ! -e /usr/include/gmp.h ]; then ln -s /usr/include/$debMultiarch/gmp.h /usr/include/gmp.h; fi;    docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j$(nproc)         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;         pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:29:21 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 30 Jul 2026 23:29:21 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Thu, 30 Jul 2026 23:29:21 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Thu, 30 Jul 2026 23:29:21 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Thu, 30 Jul 2026 23:29:21 GMT
RUN set -ex;         a2enmod headers rewrite remoteip;     {         echo RemoteIPHeader X-Real-IP;         echo RemoteIPTrustedProxy 10.0.0.0/8;         echo RemoteIPTrustedProxy 172.16.0.0/12;         echo RemoteIPTrustedProxy 192.168.0.0/16;     } > $APACHE_CONFDIR/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 30 Jul 2026 23:29:21 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 30 Jul 2026 23:29:21 GMT
RUN set -ex;         {         echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > $APACHE_CONFDIR/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 30 Jul 2026 23:29:21 GMT
RUN set -ex;     APACHE_DOCUMENT_ROOT=/var/www/html/public;     sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/sites-available/*.conf;     sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/apache2.conf $APACHE_CONFDIR/conf-available/*.conf # buildkit
# Thu, 30 Jul 2026 23:29:22 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:29:22 GMT
ENV MONICA_VERSION=v4.1.2
# Thu, 30 Jul 2026 23:29:22 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Thu, 30 Jul 2026 23:29:34 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:29:34 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:29:34 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Thu, 30 Jul 2026 23:29:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25f46fb493ea1aaeb7bb6b5f0c30817c741a49624cf9bdedd8cb698e8519b3b4`  
		Last Modified: Thu, 30 Jul 2026 22:38:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d890902073d4000eb8961d2d47bdf2dfbf7240c6a094d43f89f4a303d02d272d`  
		Last Modified: Thu, 30 Jul 2026 22:38:53 GMT  
		Size: 117.8 MB (117838475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b87d20f630144e0533f24a599c22e5384dbaf9035ea8eb3f0424ae48db2d51e`  
		Last Modified: Thu, 30 Jul 2026 22:38:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b319718d617b52fb135e16f2c3e68d6333c272848c8a8b610dd3cc75ad83e2fe`  
		Last Modified: Thu, 30 Jul 2026 22:55:22 GMT  
		Size: 4.2 MB (4237299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:163b297a6b38001459bede02384f476bb224e912a5a8d209b1d8be75eec34da5`  
		Last Modified: Thu, 30 Jul 2026 22:55:22 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b4be798339eb89fbe68d3ff8ff72eac23f0887b095ed867b168a58719cb9c8`  
		Last Modified: Thu, 30 Jul 2026 22:55:22 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edbe554db5bb0bc3eee4562944543081fd5ab7ad6a0e4b2caf582ac9b3d73611`  
		Last Modified: Thu, 30 Jul 2026 22:55:22 GMT  
		Size: 12.3 MB (12332554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8753ed5cb3514f1764466fa13bc0d66859fdba886d17ffac9f2517ce1144451`  
		Last Modified: Thu, 30 Jul 2026 22:55:23 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee45dbbd176a8f4c98542513b805803a1d1ca685bf6ccc49cd8c0223f83e646a`  
		Last Modified: Thu, 30 Jul 2026 22:55:23 GMT  
		Size: 11.5 MB (11460798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cb4405b8ce4dbbde1a7a9c65186d8b88a59ae597c858527bfa1edcd77f43d2`  
		Last Modified: Thu, 30 Jul 2026 22:55:24 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61f1f3f7eb64f4b172a2353424621ceefcb634689f0b6c5a0de2c0c77ac4c9c`  
		Last Modified: Thu, 30 Jul 2026 22:55:24 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efd0e576b934148f4d5a54ff7952f63c54dfbbad0b9000c680cb88e213298e4`  
		Last Modified: Thu, 30 Jul 2026 22:55:24 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d207af780cfaf7451af3a1a309a5f2183efba82230122ecd36131a2ec6e823e9`  
		Last Modified: Thu, 30 Jul 2026 22:55:25 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fd1eee3d1eee57f7e533454a83b2c7beb7700ba22b3a68969ac64ae1e0dee6`  
		Last Modified: Thu, 30 Jul 2026 23:29:43 GMT  
		Size: 1.2 MB (1237945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfda3a76e3d59ff486bd3f6fa6697586bf0a4455254de0c3e691d4ea7976891f`  
		Last Modified: Thu, 30 Jul 2026 23:29:44 GMT  
		Size: 20.2 MB (20195030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae7f060488d6e1dcfe21d8c6ff8c2dbf628970a711cba3f5fef87325fb7a3ff`  
		Last Modified: Thu, 30 Jul 2026 23:29:43 GMT  
		Size: 230.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bb796b0a3b8d055e975d7769a5b4b950cdbb1165bec52ee62943bef4f9c5bb`  
		Last Modified: Thu, 30 Jul 2026 23:29:43 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ded149fdd776dfd7d887b09a8affe41e7ddab8b5b2f4d95b5e879b0814f09dc`  
		Last Modified: Thu, 30 Jul 2026 23:29:44 GMT  
		Size: 571.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9ac735f669d2106696e3fd311d9cb446169851905ffb751736747dd1340c07`  
		Last Modified: Thu, 30 Jul 2026 23:29:44 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805437a2649043654781ae33793772bab01b34a51a0f80d47f1df4b37a448dcf`  
		Last Modified: Thu, 30 Jul 2026 23:29:44 GMT  
		Size: 7.6 KB (7635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc2821f8218948d4bbc71f39670ea025bda4f4408363c833dff17acdb33bbbb`  
		Last Modified: Thu, 30 Jul 2026 23:29:46 GMT  
		Size: 28.5 MB (28496189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e5ca4c7c024c2618e592272443e5f53535295252fe46966afe75217c1129024`  
		Last Modified: Thu, 30 Jul 2026 23:29:45 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:apache` - unknown; unknown

```console
$ docker pull monica@sha256:49566c4dfbfeb1126eeea0e85b171c33e4eb5e07be348b8fcfbebc411bb95432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 KB (73100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ff9cb1c2cdbfb4b966d13e645688a1e84a4ad38187df0bc4050989988d350f8`

```dockerfile
```

-	Layers:
	-	`sha256:6e472ab62085264b905d1ed8184d17daf006bb89b6497717719d051049b37cdf`  
		Last Modified: Thu, 30 Jul 2026 23:29:43 GMT  
		Size: 73.1 KB (73100 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:apache` - linux; arm variant v5

```console
$ docker pull monica@sha256:f3b968f3023da304b4ed93423445ff47679f63e3089212e89f076c5c9c3e4d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.9 MB (198913823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd83c3b82d67a2f580c3b74de12ceac229d90f886aa3cf4264db3e2289b67be9`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:38:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:38:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:38:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:38:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:38:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:38:46 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:38:46 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 23:05:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 23:05:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 23:05:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 23:05:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:05:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:05:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 23:05:16 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 23:05:16 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 23:05:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 23:05:16 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 23:05:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:05:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:08:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:08:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:08:21 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:08:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:08:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:08:21 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 23:08:21 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:08:21 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:08:21 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 23:08:21 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:15:23 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Fri, 31 Jul 2026 00:15:23 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         bash         busybox-static     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:17:30 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libicu-dev         zlib1g-dev         libzip-dev         libpng-dev         libpq-dev         libxml2-dev         libfreetype6-dev         libjpeg62-turbo-dev         libgmp-dev         libmemcached-dev         libssl-dev         libwebp-dev         libcurl4-openssl-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     if [ ! -e /usr/include/gmp.h ]; then ln -s /usr/include/$debMultiarch/gmp.h /usr/include/gmp.h; fi;    docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j$(nproc)         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;         pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:17:30 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 31 Jul 2026 00:17:30 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Fri, 31 Jul 2026 00:17:30 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Fri, 31 Jul 2026 00:17:30 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Fri, 31 Jul 2026 00:17:30 GMT
RUN set -ex;         a2enmod headers rewrite remoteip;     {         echo RemoteIPHeader X-Real-IP;         echo RemoteIPTrustedProxy 10.0.0.0/8;         echo RemoteIPTrustedProxy 172.16.0.0/12;         echo RemoteIPTrustedProxy 192.168.0.0/16;     } > $APACHE_CONFDIR/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 31 Jul 2026 00:17:30 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 31 Jul 2026 00:17:30 GMT
RUN set -ex;         {         echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > $APACHE_CONFDIR/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 31 Jul 2026 00:17:30 GMT
RUN set -ex;     APACHE_DOCUMENT_ROOT=/var/www/html/public;     sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/sites-available/*.conf;     sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/apache2.conf $APACHE_CONFDIR/conf-available/*.conf # buildkit
# Fri, 31 Jul 2026 00:17:30 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:17:30 GMT
ENV MONICA_VERSION=v4.1.2
# Fri, 31 Jul 2026 00:17:30 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Fri, 31 Jul 2026 00:17:48 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:17:48 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:17:48 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Fri, 31 Jul 2026 00:17:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a9c5423e32dd9ab605a9d1b3ed2c283bddcb7fc22f63a2fcaa2f939a941a94`  
		Last Modified: Thu, 30 Jul 2026 22:42:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7baadc0964f6caa408870cd91b62b49515492673abc3f8682be17d304b44fe`  
		Last Modified: Thu, 30 Jul 2026 22:42:09 GMT  
		Size: 94.9 MB (94886375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d954e424af11152fb1ae1c37607e1a74030ad50655d865c3d03d546dfa179899`  
		Last Modified: Thu, 30 Jul 2026 22:42:06 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9745b8f614975f4e895633816db78a9708f66fdb47b71ed759f407cf78af83`  
		Last Modified: Thu, 30 Jul 2026 23:08:32 GMT  
		Size: 4.1 MB (4097287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634589f8aa2767f4bc24f20b487172d7fe271d55ee5a3c811c57937b4fce1803`  
		Last Modified: Thu, 30 Jul 2026 23:08:32 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d969e10d7e52a61877ca8b4ce08b1ecb99f72dd62d647c9e9f7e8910aded653`  
		Last Modified: Thu, 30 Jul 2026 23:08:31 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9823d3dd120d9576487d3c78eff846d3dc92c2009defcf585916b4a4dc850063`  
		Last Modified: Thu, 30 Jul 2026 23:08:32 GMT  
		Size: 12.3 MB (12329934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82eb9e0740565f243bec694ebd6d27a6381c56d734d69eb8be1373fc88d7fa36`  
		Last Modified: Thu, 30 Jul 2026 23:08:33 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c7c3a6f5526cd458fbe006a3208d1616aa03dee8abd2756321c6b353593538`  
		Last Modified: Thu, 30 Jul 2026 23:08:33 GMT  
		Size: 10.4 MB (10368936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e296bcae3f62215b16f39b51fc9f17b46cd094f0ad330087f4b10d571f5badab`  
		Last Modified: Thu, 30 Jul 2026 23:08:33 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03630a2aac4bf0b6d8711ce22cf826733e0c4c415142c0280257fcb63367e9b`  
		Last Modified: Thu, 30 Jul 2026 23:08:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d41de5135e9c995c96927a82c4b4b42919ff0385a2b14d4d7dddfd875835040a`  
		Last Modified: Thu, 30 Jul 2026 23:08:34 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0236c3f38581079e91208c33ab0861f5645973db7633e8c5b5d33c88772a7f67`  
		Last Modified: Thu, 30 Jul 2026 23:08:34 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c59c36c4ba7d26c75d80bb4e02936fc4fc82bb0796d53a8862a9a6edb8194de`  
		Last Modified: Fri, 31 Jul 2026 00:17:57 GMT  
		Size: 1.2 MB (1190380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3c3049afbbb0c07e6b803b4a8252174d40301b3e0494214f3b8589ece9dc99`  
		Last Modified: Fri, 31 Jul 2026 00:17:57 GMT  
		Size: 19.6 MB (19578541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec5fd70bcb6df54a79f603dfc8c27fc7df75c34119d0a73547c9371b3380b68`  
		Last Modified: Fri, 31 Jul 2026 00:17:57 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6af7a28478cc41f8d1b37159bb3ba614e9e6dce75443ed79697205c88b70596`  
		Last Modified: Fri, 31 Jul 2026 00:17:57 GMT  
		Size: 586.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc3133091e8893b9b0313300ccde69d57ce13f0fbfad149cd203c7f0222d3f8`  
		Last Modified: Fri, 31 Jul 2026 00:17:58 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f62c8b4c3020756374f60c5837e11792bd1c8770fce93dca2e39a4ff2edb45c`  
		Last Modified: Fri, 31 Jul 2026 00:17:58 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fd89ffa86ccd3cb75a18e711aaa1d76bd57dfb062ccecc18777031d875b1027`  
		Last Modified: Fri, 31 Jul 2026 00:17:58 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4403b0acd8bc9fbe4e96effb0bd0e3b26ac868e4e2fc92deeb6a4830a295e5fb`  
		Last Modified: Fri, 31 Jul 2026 00:18:00 GMT  
		Size: 28.5 MB (28490282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d43869ebcd3f178019e8f22792d0f54fc942876c846305e9a92b60b7a585828`  
		Last Modified: Fri, 31 Jul 2026 00:17:59 GMT  
		Size: 2.1 KB (2078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:apache` - unknown; unknown

```console
$ docker pull monica@sha256:0f46823615e99850bb9352f305c8575e9c29bcb15a03fabe8083f9280d45fd01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 KB (73293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1408b001af27f70df21dbb59495401869dd9809520ca1bf885eab9be9b95244f`

```dockerfile
```

-	Layers:
	-	`sha256:b7f4e71a14677fc25472ac87eae68334e75fd381fb554227d4a99bc9b25de09b`  
		Last Modified: Fri, 31 Jul 2026 00:17:57 GMT  
		Size: 73.3 KB (73293 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:apache` - linux; arm variant v7

```console
$ docker pull monica@sha256:4bb609a9f33797f66544d4b9b3e433546c0a841b997c7760992f66c541c5ff5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187174725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9fbb6157a18f61f813eeb6ff53d1f99acf09b34c3b376ea7227b8d5cc2b40c`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 23:14:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 23:14:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 23:14:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 23:14:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 23:14:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 23:14:58 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 23:14:58 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 23:15:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 23:15:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 23:15:07 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 23:15:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:15:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:15:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 23:15:07 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 23:15:07 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 23:15:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 23:15:07 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 23:15:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:15:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:18:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:18:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:18:02 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:18:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:18:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:18:02 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 23:18:02 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:18:02 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:18:02 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 23:18:02 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:32:20 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Fri, 31 Jul 2026 00:32:20 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         bash         busybox-static     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:34:19 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libicu-dev         zlib1g-dev         libzip-dev         libpng-dev         libpq-dev         libxml2-dev         libfreetype6-dev         libjpeg62-turbo-dev         libgmp-dev         libmemcached-dev         libssl-dev         libwebp-dev         libcurl4-openssl-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     if [ ! -e /usr/include/gmp.h ]; then ln -s /usr/include/$debMultiarch/gmp.h /usr/include/gmp.h; fi;    docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j$(nproc)         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;         pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:34:19 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 31 Jul 2026 00:34:19 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Fri, 31 Jul 2026 00:34:19 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Fri, 31 Jul 2026 00:34:19 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Fri, 31 Jul 2026 00:34:20 GMT
RUN set -ex;         a2enmod headers rewrite remoteip;     {         echo RemoteIPHeader X-Real-IP;         echo RemoteIPTrustedProxy 10.0.0.0/8;         echo RemoteIPTrustedProxy 172.16.0.0/12;         echo RemoteIPTrustedProxy 192.168.0.0/16;     } > $APACHE_CONFDIR/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 31 Jul 2026 00:34:20 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 31 Jul 2026 00:34:20 GMT
RUN set -ex;         {         echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > $APACHE_CONFDIR/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 31 Jul 2026 00:34:20 GMT
RUN set -ex;     APACHE_DOCUMENT_ROOT=/var/www/html/public;     sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/sites-available/*.conf;     sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/apache2.conf $APACHE_CONFDIR/conf-available/*.conf # buildkit
# Fri, 31 Jul 2026 00:34:20 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:34:20 GMT
ENV MONICA_VERSION=v4.1.2
# Fri, 31 Jul 2026 00:34:20 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Fri, 31 Jul 2026 00:34:36 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:34:36 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:34:36 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Fri, 31 Jul 2026 00:34:36 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9f075f01a6c9940d643b7a0c85b20f03387dc974544fef0ce2814694e2cb220`  
		Last Modified: Thu, 30 Jul 2026 23:18:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393314d3987605d8fec0ec923f5cb7c9e2613fa1375cf2709481048ba63d1a6f`  
		Last Modified: Thu, 30 Jul 2026 23:18:21 GMT  
		Size: 86.3 MB (86257563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875cada60546f3e5daaa73109800e800ce4e9bc20979b5d14d33f9adf764dc32`  
		Last Modified: Thu, 30 Jul 2026 23:18:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2bef5479a588848d88e6933aec2ce61309f201cc8b0fa0afa71733e7f7ccc1`  
		Last Modified: Thu, 30 Jul 2026 23:18:20 GMT  
		Size: 3.8 MB (3762564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8e5ea56d8e6642c12d025ac086860bbf5d4da712acc02173b62262c00b1889`  
		Last Modified: Thu, 30 Jul 2026 23:18:20 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:016e168d03d10d4c69098c8f68ff957e9b6f63d27e2c0b4d173b3ef9aa99a156`  
		Last Modified: Thu, 30 Jul 2026 23:18:20 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef9ffb3e4b574a5261d4da65b0a88f6232eaa73c543c3f9afa0167c9c9ca286`  
		Last Modified: Thu, 30 Jul 2026 23:18:21 GMT  
		Size: 12.3 MB (12330094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38d5a2507f7b745a322c68b3db919195d582a18a2a8da2cb606bb3425581969`  
		Last Modified: Thu, 30 Jul 2026 23:18:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b879561376adb7c12b0269fca42d6cb095bea3afbd777901420b31d8454ab3c`  
		Last Modified: Thu, 30 Jul 2026 23:18:22 GMT  
		Size: 9.8 MB (9843194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b927cd338ebff827204582308edb6c483fdcdd51af620811d6049f690a7f012`  
		Last Modified: Thu, 30 Jul 2026 23:18:22 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cfe6d8a00c3a75cbb6ef9b76e1166a1d52ea66bd72f551652b1a3f8b3beab7`  
		Last Modified: Thu, 30 Jul 2026 23:18:22 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac67846ab572fa499d199966f628184d9621abf98e31e11f8adcc3a9e062a5b`  
		Last Modified: Thu, 30 Jul 2026 23:18:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1552df0884e17773d8f4a7faff569c39d2e95dda3e262385460d298e2b5d01a1`  
		Last Modified: Thu, 30 Jul 2026 23:18:23 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ac896bb03541bd4fedc8b2423b178071ebf89d669ea6cfb1c92a18ee982adf`  
		Last Modified: Fri, 31 Jul 2026 00:34:45 GMT  
		Size: 1.1 MB (1060271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee47724c7823c36cf643bfb0525ab630f19ed24f77ce5637e9223de8d12fc47`  
		Last Modified: Fri, 31 Jul 2026 00:34:46 GMT  
		Size: 19.2 MB (19206972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2909c812eba04ed3a3ea0236b9248ba87a31eac71ca9e61c278b5b1a358edb5`  
		Last Modified: Fri, 31 Jul 2026 00:34:45 GMT  
		Size: 232.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb795fa1372ebd9e26f2ae3af969bff42fd62f2c21efbfe610fbef1ceeab56c`  
		Last Modified: Fri, 31 Jul 2026 00:34:45 GMT  
		Size: 591.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e402f8e3a889b1b188f30c12684fb35247484d64c673cc67bb15d6c9c69f212`  
		Last Modified: Fri, 31 Jul 2026 00:34:47 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07c72dc6eb5789ccece68f76e420b1079dfe96359e775a60abd075580903adb`  
		Last Modified: Fri, 31 Jul 2026 00:34:47 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d65787d1bfd6b098309885f176862e41becda5416b50e5e4d3fcb9c9e20ba0`  
		Last Modified: Fri, 31 Jul 2026 00:34:47 GMT  
		Size: 7.6 KB (7634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ff8dff81daf39f3a6c997c51256ac6e5d02025e323ee376731982aa6ed9da8`  
		Last Modified: Fri, 31 Jul 2026 00:34:48 GMT  
		Size: 28.5 MB (28490320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5c9b052f4ec3c71af46f24e749fd4db2e0dedac9cece6c78c90f4944ea9a0b`  
		Last Modified: Fri, 31 Jul 2026 00:34:48 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:apache` - unknown; unknown

```console
$ docker pull monica@sha256:a00c7c0cb67dcbbe2f5b54f4173b3880f3f7d9a43f67080671d0ead5be708c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.3 KB (73282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cab1c86ee2a3dcf4bddae1e1ee06b9d47465894f8312d5da56b0dad1284a74c2`

```dockerfile
```

-	Layers:
	-	`sha256:c6742f6e54c23871063c463a02793f63403516a1a32bf61b437eeb9271219dea`  
		Last Modified: Fri, 31 Jul 2026 00:34:45 GMT  
		Size: 73.3 KB (73282 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:apache` - linux; arm64 variant v8

```console
$ docker pull monica@sha256:31a3f4f919e38747084024a27d4cabc142580ea5cd96f13704deef030eb34618
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.2 MB (218214561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c13a18613e929782dbadaa249635421789eb4c027ad23f7d5492a38355343ccb`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:34:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:35:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:35:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:35:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:35:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:35:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:35:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:35:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:35:22 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:35:22 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:35:22 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:35:22 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 22:54:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:54:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:58:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:58:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:58:04 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:58:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:58:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:58:04 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:58:04 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:58:04 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:58:04 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:58:04 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:33:14 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Thu, 30 Jul 2026 23:33:14 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         bash         busybox-static     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:34:45 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libicu-dev         zlib1g-dev         libzip-dev         libpng-dev         libpq-dev         libxml2-dev         libfreetype6-dev         libjpeg62-turbo-dev         libgmp-dev         libmemcached-dev         libssl-dev         libwebp-dev         libcurl4-openssl-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     if [ ! -e /usr/include/gmp.h ]; then ln -s /usr/include/$debMultiarch/gmp.h /usr/include/gmp.h; fi;    docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j$(nproc)         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;         pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:34:45 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 30 Jul 2026 23:34:45 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Thu, 30 Jul 2026 23:34:45 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Thu, 30 Jul 2026 23:34:45 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Thu, 30 Jul 2026 23:34:45 GMT
RUN set -ex;         a2enmod headers rewrite remoteip;     {         echo RemoteIPHeader X-Real-IP;         echo RemoteIPTrustedProxy 10.0.0.0/8;         echo RemoteIPTrustedProxy 172.16.0.0/12;         echo RemoteIPTrustedProxy 192.168.0.0/16;     } > $APACHE_CONFDIR/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 30 Jul 2026 23:34:45 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 30 Jul 2026 23:34:45 GMT
RUN set -ex;         {         echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > $APACHE_CONFDIR/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 30 Jul 2026 23:34:45 GMT
RUN set -ex;     APACHE_DOCUMENT_ROOT=/var/www/html/public;     sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/sites-available/*.conf;     sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/apache2.conf $APACHE_CONFDIR/conf-available/*.conf # buildkit
# Thu, 30 Jul 2026 23:34:45 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:34:45 GMT
ENV MONICA_VERSION=v4.1.2
# Thu, 30 Jul 2026 23:34:45 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Thu, 30 Jul 2026 23:34:57 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:34:58 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:34:58 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Thu, 30 Jul 2026 23:34:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b770df308423bceac727c1fbf59c2d050f57a77f220a1e4137e52bb7bad411ac`  
		Last Modified: Thu, 30 Jul 2026 22:38:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3b8f5d462e5ae9d13dd44aa025d62e4dd5181668608a200144ab07ef43f2744`  
		Last Modified: Thu, 30 Jul 2026 22:38:53 GMT  
		Size: 110.2 MB (110170376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83f831260001bf0eb7761b74ac4323fb1833e869bea42a0dac626f4c53cebf29`  
		Last Modified: Thu, 30 Jul 2026 22:38:33 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d218d18d945119f92bf35023138f773d537ce0a0a773ff04a0c485a70a3f11b`  
		Last Modified: Thu, 30 Jul 2026 22:38:50 GMT  
		Size: 4.3 MB (4312841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8357e5ba1cf79c4b844560d39dad21608f7882e45f9942b82d1329e2125bc837`  
		Last Modified: Thu, 30 Jul 2026 22:38:50 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1a94f413c8fc13d26ce0dda4a912b7acee0a028028956e5726dcd05d10491f`  
		Last Modified: Thu, 30 Jul 2026 22:38:51 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abeedf35d32e890098d3ed5e859197a160b071180fa99cd69d7b5ee070e6af1c`  
		Last Modified: Thu, 30 Jul 2026 22:58:15 GMT  
		Size: 12.3 MB (12332106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11a58e531fa8667d7788f2e2417126d2ef9f14fca34bfc9bd17d3228548a270f`  
		Last Modified: Thu, 30 Jul 2026 22:58:15 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:814e0fe688865f019a48c88a3e8e5a09197df24247acd2f0ba61b6b38610e8cf`  
		Last Modified: Thu, 30 Jul 2026 22:58:15 GMT  
		Size: 11.5 MB (11494455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f72d4d3cf99330c3a37733832a804bf034563b39cf7dcb51d1226e1ad3b1f985`  
		Last Modified: Thu, 30 Jul 2026 22:58:15 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8382f2cadc61c86fbf6eb84979fbdffd530c194d4495ad6fcbcb68e24eb1dbbc`  
		Last Modified: Thu, 30 Jul 2026 22:58:16 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aafb2d5b35f5d71ff2a911ae74d3c6a11314f63f9352dd730b1d16d45a078af8`  
		Last Modified: Thu, 30 Jul 2026 22:58:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87e9f57eed6656eb3d56e4f22a1ac7a70b4a7d3f742e55ba06e7009137d5ca3`  
		Last Modified: Thu, 30 Jul 2026 22:58:17 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a289ad3f78ac24576fad66c95d836ce8c6a8b83b06d226db0eed7696d9f06a0`  
		Last Modified: Thu, 30 Jul 2026 23:35:07 GMT  
		Size: 1.2 MB (1193928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9f3ec2b820a07102b48642b560be12c5881bac74fa53167e0efe28044aef09c`  
		Last Modified: Thu, 30 Jul 2026 23:35:07 GMT  
		Size: 20.1 MB (20055394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8322931bd540e19646e2f3261be7454431b2780cad2fd74bc64343cd241cde1`  
		Last Modified: Thu, 30 Jul 2026 23:35:07 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9761d0081fd649db4126bd186a1a1e810b5f8c36ef9bb7218319fcd4903183d`  
		Last Modified: Thu, 30 Jul 2026 23:35:07 GMT  
		Size: 590.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f3a7ff1b1c649da8d6f0b772ea8a33ce3bb243db4fc588125e6ed136ed7ba79`  
		Last Modified: Thu, 30 Jul 2026 23:35:08 GMT  
		Size: 569.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d71da492fce9f4a310529724250f569b4769821dbe040a6796d84812ffead42`  
		Last Modified: Thu, 30 Jul 2026 23:35:08 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9bd017235ee417267e880b2cfb494c6a950aa6c18a565383599961913de2e11`  
		Last Modified: Thu, 30 Jul 2026 23:35:08 GMT  
		Size: 7.6 KB (7634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6458ab5201c6431dda87c2bd77f14755f5895a49ef3aa14e950fab5f9f7b1497`  
		Last Modified: Thu, 30 Jul 2026 23:35:09 GMT  
		Size: 28.5 MB (28494491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ace6dd58d9b14487569fabc93b69e0c7a4e370b6fef9e41ebc69ab7679b4db9`  
		Last Modified: Thu, 30 Jul 2026 23:35:09 GMT  
		Size: 2.1 KB (2078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:apache` - unknown; unknown

```console
$ docker pull monica@sha256:4d352d3f89b3df58d6d8d845630b4c40db60f616dd36d6b24d4878ab315ec2a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 KB (73358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed7b60bb8aa2bc8d1160c871012e52e400f42254a8151eb31b3832c78dd05180`

```dockerfile
```

-	Layers:
	-	`sha256:3447e6d4e2c5bd7cd5cf5316da513d2ab9350771b97e7927e9d144c9f8380253`  
		Last Modified: Thu, 30 Jul 2026 23:35:06 GMT  
		Size: 73.4 KB (73358 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:apache` - linux; 386

```console
$ docker pull monica@sha256:f7a34747030b93fc2c096cdaf325d948fdcc908794e56684d280614c3bd39ff9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226159513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b4e5a3f17af43473a7ae3e50313dfea7d1d44e1c2982086f5eae2234c83227d`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:39:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:39:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:39:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:39:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:39:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:39:36 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:39:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:43:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:43:35 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:43:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:35 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 22:54:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:54:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:57:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:57:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:57:06 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:57:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:57:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:57:06 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:57:06 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:57:06 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:57:06 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:57:06 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:28:33 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Thu, 30 Jul 2026 23:28:33 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         bash         busybox-static     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:30:07 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libicu-dev         zlib1g-dev         libzip-dev         libpng-dev         libpq-dev         libxml2-dev         libfreetype6-dev         libjpeg62-turbo-dev         libgmp-dev         libmemcached-dev         libssl-dev         libwebp-dev         libcurl4-openssl-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     if [ ! -e /usr/include/gmp.h ]; then ln -s /usr/include/$debMultiarch/gmp.h /usr/include/gmp.h; fi;    docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j$(nproc)         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;         pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:30:07 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 30 Jul 2026 23:30:07 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Thu, 30 Jul 2026 23:30:07 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Thu, 30 Jul 2026 23:30:07 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Thu, 30 Jul 2026 23:30:07 GMT
RUN set -ex;         a2enmod headers rewrite remoteip;     {         echo RemoteIPHeader X-Real-IP;         echo RemoteIPTrustedProxy 10.0.0.0/8;         echo RemoteIPTrustedProxy 172.16.0.0/12;         echo RemoteIPTrustedProxy 192.168.0.0/16;     } > $APACHE_CONFDIR/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 30 Jul 2026 23:30:07 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 30 Jul 2026 23:30:07 GMT
RUN set -ex;         {         echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > $APACHE_CONFDIR/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 30 Jul 2026 23:30:08 GMT
RUN set -ex;     APACHE_DOCUMENT_ROOT=/var/www/html/public;     sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/sites-available/*.conf;     sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/apache2.conf $APACHE_CONFDIR/conf-available/*.conf # buildkit
# Thu, 30 Jul 2026 23:30:08 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:30:08 GMT
ENV MONICA_VERSION=v4.1.2
# Thu, 30 Jul 2026 23:30:08 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Thu, 30 Jul 2026 23:30:21 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:30:21 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:30:21 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Thu, 30 Jul 2026 23:30:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed670a6a9a1bb701afcd7232c09c6093320fe6436a57924efb4736ff5594c15`  
		Last Modified: Thu, 30 Jul 2026 22:43:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b8fb3f0cf13de684528caa6c05128c03bc98c8e7251862c3fd24a02f68e0ea`  
		Last Modified: Thu, 30 Jul 2026 22:43:22 GMT  
		Size: 116.1 MB (116142638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5e6474d52d36351435791be206a5afa33f7523752a0463f06eb3ec0351d985`  
		Last Modified: Thu, 30 Jul 2026 22:43:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c638d0f2d42bf4e55840539eea72ab72f9f891804fe66599926643f8ad7ee1c`  
		Last Modified: Thu, 30 Jul 2026 22:47:07 GMT  
		Size: 4.5 MB (4469996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16d296d253db6ce54645cbc2ff91e0906c93a272406e90f8574945764315e5`  
		Last Modified: Thu, 30 Jul 2026 22:47:06 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47f5751dc42cdf30516c4119bb97a13e29880cc59752a7efec914218839f2f1`  
		Last Modified: Thu, 30 Jul 2026 22:47:06 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a174850d5afdb0dfaf8dbfaa17203911782a0d5b9d5de3b03804117879e96184`  
		Last Modified: Thu, 30 Jul 2026 22:57:17 GMT  
		Size: 12.3 MB (12331346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b740c1164eb274d094ad1631170047d6be251936861926423930e8d2d23bf284`  
		Last Modified: Thu, 30 Jul 2026 22:57:16 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803c8d91b69dee9fe201f7c64805376e99f3924c08e79d0ee7f2c09b5393d463`  
		Last Modified: Thu, 30 Jul 2026 22:57:17 GMT  
		Size: 11.7 MB (11684892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba925c56effc557c36bc5724080599e2a37d7b286b475b63ed8645e16f875666`  
		Last Modified: Thu, 30 Jul 2026 22:57:16 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9481b87c536d11b12040b68ac96f88ef4a8ce6a18a722d9f2dac04c01e166a15`  
		Last Modified: Thu, 30 Jul 2026 22:57:17 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb1c4c0fbba575922220c4f786e8981059d43cfcfa62892f5d99af07ce88830`  
		Last Modified: Thu, 30 Jul 2026 22:57:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cab7702197e856e5191bfcd349c1218c0fd331b82d4f1b5af975573d3d62887`  
		Last Modified: Thu, 30 Jul 2026 22:57:18 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bfdf506597142eb7dfda31c28978ec62f70b8bf8188297cfe179238d644ebb9`  
		Last Modified: Thu, 30 Jul 2026 23:30:33 GMT  
		Size: 1.3 MB (1268638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1dcc830c956c00766522a1573fe2054dfd49c57b1639ae2888544bc3a37eeca`  
		Last Modified: Thu, 30 Jul 2026 23:30:33 GMT  
		Size: 20.5 MB (20455484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba870f3fc1c5718f250ea39fb995cd55cfce5dd64b7b4ec5ff968269f465889e`  
		Last Modified: Thu, 30 Jul 2026 23:30:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495336d75a37dcb60bfc4d526706fe37bfb29493831dc2a3e6629388c2098f1f`  
		Last Modified: Thu, 30 Jul 2026 23:30:33 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e788e31291558d7cc29f9f273e60e2a2873f5ae7e44f71b5fe4faff65d3510`  
		Last Modified: Thu, 30 Jul 2026 23:30:34 GMT  
		Size: 568.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30aae9ce75994e904a766fba873b61a5c8bf84aee3e07252af9ff96f86c56e53`  
		Last Modified: Thu, 30 Jul 2026 23:30:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea309be49282b923793806fd0f77f414fbc2e3e35cd86ab46980ea3a830ea15`  
		Last Modified: Thu, 30 Jul 2026 23:30:34 GMT  
		Size: 7.6 KB (7639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2b886fbc61c6073fc3e918660b46890d2dcfc1f6249110f08f933dea95d73e`  
		Last Modified: Thu, 30 Jul 2026 23:30:35 GMT  
		Size: 28.5 MB (28492948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ef86e6268577c26239cfa3665d21d621ffe340c728a01345c3456ae1f3e91a`  
		Last Modified: Thu, 30 Jul 2026 23:30:35 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:apache` - unknown; unknown

```console
$ docker pull monica@sha256:f9d93c96d17d0ba80e7594d14757607df801576c8183bba1ccb76ba73b050c47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 KB (73035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5e918ae3e95141aeabfde7540ed45f1544308c9eb3da187f87abbd6a3ff1e85`

```dockerfile
```

-	Layers:
	-	`sha256:a1c1ebe0d4ffdbf90a0f4b4d8fd1f7f47cc8da6379fbecbd9a1f1a7d349237eb`  
		Last Modified: Thu, 30 Jul 2026 23:30:32 GMT  
		Size: 73.0 KB (73035 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:apache` - linux; ppc64le

```console
$ docker pull monica@sha256:dc74188993ce35a4733510629a28f1674abb249016cb09845f1bedcfc92daf18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.3 MB (223263015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7007c0ee7d88c352b7a7498fdc5f245932fb77f130acea7e74b1f21cdc4faf31`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:47:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:49:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:49:20 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_VERSION=8.2.33
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Fri, 31 Jul 2026 01:08:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 31 Jul 2026 01:08:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:12:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 01:12:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:12:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 01:12:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 01:12:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 01:12:25 GMT
STOPSIGNAL SIGWINCH
# Fri, 31 Jul 2026 01:12:25 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:12:26 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 01:12:26 GMT
EXPOSE map[80/tcp:{}]
# Fri, 31 Jul 2026 01:12:26 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 04:41:54 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Fri, 31 Jul 2026 04:41:54 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         bash         busybox-static     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 04:44:56 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libicu-dev         zlib1g-dev         libzip-dev         libpng-dev         libpq-dev         libxml2-dev         libfreetype6-dev         libjpeg62-turbo-dev         libgmp-dev         libmemcached-dev         libssl-dev         libwebp-dev         libcurl4-openssl-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     if [ ! -e /usr/include/gmp.h ]; then ln -s /usr/include/$debMultiarch/gmp.h /usr/include/gmp.h; fi;    docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j$(nproc)         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;         pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 04:44:56 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 31 Jul 2026 04:44:56 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Fri, 31 Jul 2026 04:44:56 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Fri, 31 Jul 2026 04:44:56 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Fri, 31 Jul 2026 04:44:57 GMT
RUN set -ex;         a2enmod headers rewrite remoteip;     {         echo RemoteIPHeader X-Real-IP;         echo RemoteIPTrustedProxy 10.0.0.0/8;         echo RemoteIPTrustedProxy 172.16.0.0/12;         echo RemoteIPTrustedProxy 192.168.0.0/16;     } > $APACHE_CONFDIR/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 31 Jul 2026 04:44:57 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 31 Jul 2026 04:44:59 GMT
RUN set -ex;         {         echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > $APACHE_CONFDIR/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 31 Jul 2026 04:44:59 GMT
RUN set -ex;     APACHE_DOCUMENT_ROOT=/var/www/html/public;     sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/sites-available/*.conf;     sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/apache2.conf $APACHE_CONFDIR/conf-available/*.conf # buildkit
# Fri, 31 Jul 2026 04:44:59 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 04:44:59 GMT
ENV MONICA_VERSION=v4.1.2
# Fri, 31 Jul 2026 04:44:59 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Fri, 31 Jul 2026 04:45:29 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 04:45:30 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 04:45:30 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Fri, 31 Jul 2026 04:45:30 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:93b3d513edcced888c9d701c8b61f84146f8fa67c324bc43ef3724c9a775f6a0`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 4.9 MB (4885486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d1fe1967cdebe6d53ef0faa1b5c3fdebe6dcc7edf1034bf1440a9eeceb0ec9`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fbb0d901148cd360965bd4cea366f3d6c35c1e1c8805ff4dac6f564115d6b4`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c58d28dd3487ed07da03674ac8af5b4d44e2f94011c0c69ad4515772ee4714`  
		Last Modified: Fri, 31 Jul 2026 01:13:03 GMT  
		Size: 12.3 MB (12346804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d435077af5ddca659f5ea719c8e2c45ff97f0281330de0c6dcde7d47e22225`  
		Last Modified: Fri, 31 Jul 2026 01:13:02 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662b2cccab66bd40b5baf5c03191ff1a7d564565b3d44610101676be920b67c7`  
		Last Modified: Fri, 31 Jul 2026 01:13:03 GMT  
		Size: 12.0 MB (12038941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2f783bf3084b1d080431deef3a1907667806977a76ba0a6d65fd8723025991`  
		Last Modified: Fri, 31 Jul 2026 01:13:03 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80ffe6d658a47c34dbcecc18f820c2f5b8da1f4c49bb173fcc9c53de3d1b550`  
		Last Modified: Fri, 31 Jul 2026 01:13:04 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21068a333f81bae3d2e02fb9ff3f4ce4ba7a4ced5e54cf0aaa3ae814e36e762`  
		Last Modified: Fri, 31 Jul 2026 01:13:04 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9679d17e6110d98de085999ad9a1e58e291411c82e45b66d27591ad4aa3b75`  
		Last Modified: Fri, 31 Jul 2026 01:13:04 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17ab4f09ab071f1f19863db778c5a143f3c6a2c1d4c798dbb9b831fe0efe6e4`  
		Last Modified: Fri, 31 Jul 2026 04:45:51 GMT  
		Size: 1.4 MB (1391824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ecf223e6cd60643f641ded93ae8326d641e576dcfa9fb7a4b04588cc5211f6c`  
		Last Modified: Fri, 31 Jul 2026 04:45:52 GMT  
		Size: 20.9 MB (20886522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42636fde562b4c85f57447a377d9f91ee6b6ff2d3107e2ec292dfd0c5581d173`  
		Last Modified: Fri, 31 Jul 2026 04:45:51 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb13907e28a442124ab7b852adf6bec2a2b882cfc5a1935f5507280cdad107e`  
		Last Modified: Fri, 31 Jul 2026 04:45:51 GMT  
		Size: 591.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97263df0ec1d01c8cf413917fd76a839fe3c6b21c8c7d1a912d3950c7c39dfd6`  
		Last Modified: Fri, 31 Jul 2026 04:45:52 GMT  
		Size: 581.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c926579132a4dde722ae3c7557ebf5808d01ad8ce6a72604df5726e375c31781`  
		Last Modified: Fri, 31 Jul 2026 04:45:52 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321db1a368321b51fb4d13f1363563dcd0bc90df2572d8b4bf2859afa18f9f3e`  
		Last Modified: Fri, 31 Jul 2026 04:45:53 GMT  
		Size: 7.6 KB (7634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193836c7f8e70f3138c0131e5a13829fea88f4d98986f9117b731781f30ce5f5`  
		Last Modified: Fri, 31 Jul 2026 04:45:54 GMT  
		Size: 28.5 MB (28494662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ca065f7b63f6489afc158f54b58466749d65c41633d7079e7de5f3f68203dde`  
		Last Modified: Fri, 31 Jul 2026 04:45:53 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:apache` - unknown; unknown

```console
$ docker pull monica@sha256:1bb64d6bc44eba441b6b5cad3383b6642df16b877d6bbea1427e1f7a1b0e5f71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 KB (73183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83d3bdbe516a248ce5d49fa4e3a06b7fc0563edaf79d32a27a401dc123f62236`

```dockerfile
```

-	Layers:
	-	`sha256:2310ee05edcde259dfa9dd82e07db5a53ce95cfd94f2db33838918a6a55de3f4`  
		Last Modified: Fri, 31 Jul 2026 04:45:51 GMT  
		Size: 73.2 KB (73183 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:apache` - linux; riscv64

```console
$ docker pull monica@sha256:215c316f904478d52990045a5112e9e7c50a66a5c662bc5b4d6c9a23dd8cb842
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.7 MB (251660017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d491536268c64b8570b2e521a029628c8d8d588cc5699079ed5e89ad81b034`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 09:56:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 10:56:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 10:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 10:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 10:56:20 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_VERSION=8.2.32
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Wed, 15 Jul 2026 01:37:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 15 Jul 2026 01:37:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 02:23:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 15 Jul 2026 02:23:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 02:23:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 15 Jul 2026 02:23:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 15 Jul 2026 02:23:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 15 Jul 2026 02:23:16 GMT
STOPSIGNAL SIGWINCH
# Wed, 15 Jul 2026 02:23:17 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 15 Jul 2026 02:23:17 GMT
WORKDIR /var/www/html
# Wed, 15 Jul 2026 02:23:17 GMT
EXPOSE map[80/tcp:{}]
# Wed, 15 Jul 2026 02:23:17 GMT
CMD ["apache2-foreground"]
# Fri, 17 Jul 2026 07:33:17 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Fri, 17 Jul 2026 07:33:17 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         bash         busybox-static     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 07:53:46 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libicu-dev         zlib1g-dev         libzip-dev         libpng-dev         libpq-dev         libxml2-dev         libfreetype6-dev         libjpeg62-turbo-dev         libgmp-dev         libmemcached-dev         libssl-dev         libwebp-dev         libcurl4-openssl-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     if [ ! -e /usr/include/gmp.h ]; then ln -s /usr/include/$debMultiarch/gmp.h /usr/include/gmp.h; fi;    docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j$(nproc)         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;         pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 07:53:46 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 17 Jul 2026 07:53:46 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Fri, 17 Jul 2026 07:53:46 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Fri, 17 Jul 2026 07:53:47 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Fri, 17 Jul 2026 07:53:48 GMT
RUN set -ex;         a2enmod headers rewrite remoteip;     {         echo RemoteIPHeader X-Real-IP;         echo RemoteIPTrustedProxy 10.0.0.0/8;         echo RemoteIPTrustedProxy 172.16.0.0/12;         echo RemoteIPTrustedProxy 192.168.0.0/16;     } > $APACHE_CONFDIR/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 17 Jul 2026 07:53:48 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 17 Jul 2026 07:53:49 GMT
RUN set -ex;         {         echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > $APACHE_CONFDIR/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 17 Jul 2026 07:53:49 GMT
RUN set -ex;     APACHE_DOCUMENT_ROOT=/var/www/html/public;     sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/sites-available/*.conf;     sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/apache2.conf $APACHE_CONFDIR/conf-available/*.conf # buildkit
# Fri, 17 Jul 2026 07:53:49 GMT
WORKDIR /var/www/html
# Fri, 17 Jul 2026 07:53:49 GMT
ENV MONICA_VERSION=v4.1.2
# Fri, 17 Jul 2026 07:53:49 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Fri, 17 Jul 2026 07:55:31 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 17 Jul 2026 07:55:33 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 07:55:33 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Fri, 17 Jul 2026 07:55:33 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b9b12548da727364739b64ffe3b7e6024c085f26240758f07a1063897bf604f3`  
		Last Modified: Tue, 14 Jul 2026 11:51:35 GMT  
		Size: 4.0 MB (4031666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2abc5f2ae9a0822817e97cfd9c603a15cf51ee33a6c159549c5d68ea9a9d6c22`  
		Last Modified: Tue, 14 Jul 2026 11:51:33 GMT  
		Size: 439.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80986409fbeca1347aceac2e2488b34b43307ab4300617f2b86744d459d2be92`  
		Last Modified: Tue, 14 Jul 2026 11:51:34 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ee01f0f5a2d400ac1f02fb73c5e52e5ca11f16fa0d18292916c58b5a4f4774`  
		Last Modified: Wed, 15 Jul 2026 02:26:24 GMT  
		Size: 12.3 MB (12341552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50f5053e876d571a98b4524013bd4cb73c7e09b78ff34621c4f8b3aaba3e026`  
		Last Modified: Wed, 15 Jul 2026 02:26:20 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3664840e98a3513158f62f8e70c51a71cb47f6116ecf6ba24abd70f5169b12da`  
		Last Modified: Wed, 15 Jul 2026 02:26:23 GMT  
		Size: 10.8 MB (10791933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f195c7c8050c6962160ddd287582fdf4804f51dfbe75e4f62015c44205d1ec1`  
		Last Modified: Wed, 15 Jul 2026 02:26:20 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:475e456aaa2e417bcf88dd64d5794d855e834f5c0091ff64dd9f5e0f54dde9fb`  
		Last Modified: Wed, 15 Jul 2026 02:26:22 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcc2f12c704c6db9f3da349de37b58c6f391885a469bd27c376a7618dd03596`  
		Last Modified: Wed, 15 Jul 2026 02:26:22 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3928138b904ef744927b0fce07795ea60271368c4d19e43b6cd4fa854c5cc871`  
		Last Modified: Wed, 15 Jul 2026 02:26:24 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27b474115b92609b6c0977de548f4d3575a09093a65210a4cd18749557de02e0`  
		Last Modified: Fri, 17 Jul 2026 07:57:21 GMT  
		Size: 1.2 MB (1197874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a30701a52f03fd39871e6db97122386f92a8115a55d9b312022f375fe94d0f5`  
		Last Modified: Fri, 17 Jul 2026 07:57:24 GMT  
		Size: 19.9 MB (19918979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3927cf4c4873b198555db959c577f206542764beda159105c81443aaf03de20`  
		Last Modified: Fri, 17 Jul 2026 07:57:21 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb5d6e3257992850dbb43ff8604750b9faf8bf54096979119b5eaa66c434bee`  
		Last Modified: Fri, 17 Jul 2026 07:57:21 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c3c27e95f30bfc562beeae46f05b9c33bfb09a27aaaa9ab24a56417b76e2f18`  
		Last Modified: Fri, 17 Jul 2026 07:57:22 GMT  
		Size: 587.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5ab114c80389ad5ea358fae8de7ec46fe79a753971523b30871c1e2c17af42`  
		Last Modified: Fri, 17 Jul 2026 07:57:22 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a301dba6c8b6461b4bccad635d906f2a1e911adabd756f759a1679c0fd1b02f2`  
		Last Modified: Fri, 17 Jul 2026 07:57:22 GMT  
		Size: 7.6 KB (7635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11ab58766f58daae29a440e6202089026a295bdd6a2ac86f29710ec606e3c88f`  
		Last Modified: Fri, 17 Jul 2026 07:57:28 GMT  
		Size: 28.5 MB (28494495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a9ec8b0c530af86bbaf32d4ca1695f02e35e21385a20f3ed5973babec8d020`  
		Last Modified: Fri, 17 Jul 2026 07:57:24 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:apache` - unknown; unknown

```console
$ docker pull monica@sha256:a06d9bff8734585ffeedf8d5566bd4dc8bb353001d73255b50c0f1027f88df89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 KB (73183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03e6f228690754efc8726b7ea9632c5450587158818e7d6802bf0bf1b4ca9cc`

```dockerfile
```

-	Layers:
	-	`sha256:b8692d803bfbe9c76ef844ec1817fe292d0c5c66dde3d3f01da833f917f7be5b`  
		Last Modified: Fri, 17 Jul 2026 07:57:20 GMT  
		Size: 73.2 KB (73183 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:apache` - linux; s390x

```console
$ docker pull monica@sha256:d7e0737e2c129e52e70d29c4e96d9c32930b48da3470c06f3d549abe2f01da2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.5 MB (200481736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff824c420d288b4bff7501dbaf6e44c613da99392552173449545986abfd60f5`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:23:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:50:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:50:06 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 23:41:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:41:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:44:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:44:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:44:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:44:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:44:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:44:57 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 23:44:57 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:44:57 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:44:57 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 23:44:57 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:58:49 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Fri, 31 Jul 2026 00:58:49 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         bash         busybox-static     ;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 01:00:42 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libicu-dev         zlib1g-dev         libzip-dev         libpng-dev         libpq-dev         libxml2-dev         libfreetype6-dev         libjpeg62-turbo-dev         libgmp-dev         libmemcached-dev         libssl-dev         libwebp-dev         libcurl4-openssl-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     if [ ! -e /usr/include/gmp.h ]; then ln -s /usr/include/$debMultiarch/gmp.h /usr/include/gmp.h; fi;    docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j$(nproc)         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;         pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 01:00:42 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 31 Jul 2026 01:00:42 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Fri, 31 Jul 2026 01:00:42 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Fri, 31 Jul 2026 01:00:42 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Fri, 31 Jul 2026 01:00:43 GMT
RUN set -ex;         a2enmod headers rewrite remoteip;     {         echo RemoteIPHeader X-Real-IP;         echo RemoteIPTrustedProxy 10.0.0.0/8;         echo RemoteIPTrustedProxy 172.16.0.0/12;         echo RemoteIPTrustedProxy 192.168.0.0/16;     } > $APACHE_CONFDIR/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 31 Jul 2026 01:00:43 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 31 Jul 2026 01:00:43 GMT
RUN set -ex;         {         echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > $APACHE_CONFDIR/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 31 Jul 2026 01:00:43 GMT
RUN set -ex;     APACHE_DOCUMENT_ROOT=/var/www/html/public;     sed -ri -e "s!/var/www/html!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/sites-available/*.conf;     sed -ri -e "s!/var/www/!${APACHE_DOCUMENT_ROOT}!g" $APACHE_CONFDIR/apache2.conf $APACHE_CONFDIR/conf-available/*.conf # buildkit
# Fri, 31 Jul 2026 01:00:43 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 01:00:43 GMT
ENV MONICA_VERSION=v4.1.2
# Fri, 31 Jul 2026 01:00:43 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Fri, 31 Jul 2026 01:00:58 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 01:00:58 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:00:58 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Fri, 31 Jul 2026 01:00:58 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:13f2f885b5bef6c2b092ea115d42b40775d130de33e045f04f407fbaea293e97`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 4.4 MB (4352669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399b60e47da73f31df07352ca26f50d561dfefa83d5fef62fb7b7bc7362a3d11`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935fc0db1fd0b61c73c9bff8c2916d45048dfc98bf13ec6cf200e05bb669dba1`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c5b959d4c71bd4953b76fdcc5b134997f58da14d7224c710ffbafa95908795`  
		Last Modified: Thu, 30 Jul 2026 23:45:12 GMT  
		Size: 12.3 MB (12330847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b270e328157ee9bc664a49c28b06c838df4248f032b5a1eba5869ef675db05`  
		Last Modified: Thu, 30 Jul 2026 23:45:12 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8b721a439930844de95d1378d01ebf6e6dec94a24443c90bdc560c9653b94c`  
		Last Modified: Thu, 30 Jul 2026 23:45:13 GMT  
		Size: 11.3 MB (11328053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f424f6e69fb86152623df62b3abf7bebac83b41e9ff9de08ccafdcfc31c88603`  
		Last Modified: Thu, 30 Jul 2026 23:45:12 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d46fc1b23a030e94a474f901dca9771af9d4905005c0168373c993638fa05e4`  
		Last Modified: Thu, 30 Jul 2026 23:45:13 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57ff656958515b67e5981ad726a099b97319afca3612285c07d73f5dc2b52cd0`  
		Last Modified: Thu, 30 Jul 2026 23:45:13 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce5651c1717df40823dc4c0a2db7d933cbce42a5fc9ce78d0b4a9362bf6d7fc4`  
		Last Modified: Thu, 30 Jul 2026 23:45:14 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be45ec12614e6bfe61b7069da163ed0f8af777070a0bc3ceeee272f0c58567c5`  
		Last Modified: Fri, 31 Jul 2026 01:01:14 GMT  
		Size: 1.3 MB (1257890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4588d2cbe3ff426770d676f641b96393d3ceee4f48de7f748bde3b2206cc0104`  
		Last Modified: Fri, 31 Jul 2026 01:01:14 GMT  
		Size: 20.3 MB (20283385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06b3621939bc3bdcb94deb3e59a5b9768bca389798ba1c06de450587841c447e`  
		Last Modified: Fri, 31 Jul 2026 01:01:14 GMT  
		Size: 233.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25adc6388c1bce4f2f4b4a6b9f3b4c4653b1eaef5247dacb10900902af14f156`  
		Last Modified: Fri, 31 Jul 2026 01:01:14 GMT  
		Size: 586.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24745f4a9a057a8000d6e9657c2244a36862c2cf49fc40cb64cee3fa3e4677d1`  
		Last Modified: Fri, 31 Jul 2026 01:01:15 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a6ff9f86dadaa5dc069664e9e4c02df44051e5b9d0c2b52376fc76e2a607d45`  
		Last Modified: Fri, 31 Jul 2026 01:01:15 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e4d95f4643600b94ba55df8772104974374ab46e3da41f2b3c415dea5403f3`  
		Last Modified: Fri, 31 Jul 2026 01:01:15 GMT  
		Size: 7.6 KB (7634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ea263d37813d08af074749dd5b994649f3cc5ee5625b01ef34a555169a7b04`  
		Last Modified: Fri, 31 Jul 2026 01:01:15 GMT  
		Size: 28.5 MB (28492216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3945f3f937b53b938929882e064a36436dd31c0fb1befe8b84369c7f6f480bb`  
		Last Modified: Fri, 31 Jul 2026 01:01:16 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:apache` - unknown; unknown

```console
$ docker pull monica@sha256:448d9345d098c01198627fd940a15540e863fea2ba7aa077cf0fc56aa428da1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.1 KB (73090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e788461da9c02a0e5455f117567eece713eb370012617149c392a4ac41b5d8b`

```dockerfile
```

-	Layers:
	-	`sha256:da7bf527a94384f5f70986f1623d2f515b8b7ef74e17d0c062105aa75eccce59`  
		Last Modified: Fri, 31 Jul 2026 01:01:14 GMT  
		Size: 73.1 KB (73090 bytes)  
		MIME: application/vnd.in-toto+json
