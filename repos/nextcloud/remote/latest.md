## `nextcloud:latest`

```console
$ docker pull nextcloud@sha256:bac11c72bf8c716d963ca62e62cde8e963190202bf558dba8d981c7a61fabba6
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

### `nextcloud:latest` - linux; amd64

```console
$ docker pull nextcloud@sha256:a46ea519c0e1f9ea7d45b9584b012055c0ff8ca5756cd18cebb3d417ee660db7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **516.6 MB (516577814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7c1ecc23d6d3848a44b1502cd7011082d1299466ad169de758aadf74fbb555`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:18:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:18:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:18:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:18:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:18:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:18:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:18:57 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:18:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:18:57 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:19:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:19:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:21:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:21:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:21:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:21:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:21:38 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:21:38 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:21:38 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:21:38 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:21:38 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 05:32:41 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 05:35:04 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 05:35:04 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 05:35:04 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 05:35:04 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:35:04 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 05:35:04 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:35:04 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 24 Nov 2026 05:35:04 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 24 Nov 2026 05:35:04 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 24 Nov 2026 05:35:04 GMT
ENV NEXTCLOUD_VERSION=35.0.3
# Tue, 24 Nov 2026 05:35:41 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:35:41 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 05:35:41 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 05:35:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:35:41 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbdaed166edcb535a60ab03e61320b069abc485c8b8c9565d6e32a5ee28bd68`  
		Last Modified: Tue, 24 Nov 2026 04:21:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bacbed2e41fefe19acf5a8003de2273d53217183fdc7676f75e343fa9d48a14f`  
		Last Modified: Tue, 24 Nov 2026 04:22:01 GMT  
		Size: 117.8 MB (117839073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3452f368159f2286c6a5aad7c32ee9c08a94beb36b0c24ccadd4c0d4c93cf95`  
		Last Modified: Tue, 24 Nov 2026 04:21:58 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6baf41d1c18a410cd0e7c6d200726febfa2f1650dfa5e8fc9108c29f8a4865`  
		Last Modified: Tue, 24 Nov 2026 04:21:58 GMT  
		Size: 4.2 MB (4244014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76f5b540f4a26d086373d222bfd572411a49e39a218cb5ee0739a83c767f189`  
		Last Modified: Tue, 24 Nov 2026 04:21:59 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526a0ec23cf8e5806422a75beb9be23eb67daa09ecf3feb1f3fdd076e3601cef`  
		Last Modified: Tue, 24 Nov 2026 04:21:59 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb1f76ed9d071b441af7c693d91018a87777157568ae28eb09ba4039c7df23b`  
		Last Modified: Tue, 24 Nov 2026 04:22:00 GMT  
		Size: 14.8 MB (14767895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760a0d89a25d27fceacbe4d055ef043cd05c76152a9f8162e84354ba0d41c828`  
		Last Modified: Tue, 24 Nov 2026 04:22:00 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf1624283e0f97b065b4c3d1fb25303e647cc82fbea236c0a0f59a8f877a288`  
		Last Modified: Tue, 24 Nov 2026 04:22:01 GMT  
		Size: 15.3 MB (15252453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fde3af9736ab59401fbed0fa3da2a25b880f14d9f9d1b9a2dceb381e2bb1a03`  
		Last Modified: Tue, 24 Nov 2026 04:22:01 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd46545431e82c00b8e92a62c44bc08863083c9acc7bd9e0a0225c9813ffa66`  
		Last Modified: Tue, 24 Nov 2026 04:22:01 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c33655c0ddea641f08e38c70882391c3457fb4e4037c03b4aa256f1d2acfd4`  
		Last Modified: Tue, 24 Nov 2026 04:22:02 GMT  
		Size: 886.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650b5c9d08cb690e129a2173a7985206a5d824b9f2a3168dfd4b4232b175379c`  
		Last Modified: Tue, 24 Nov 2026 05:36:08 GMT  
		Size: 21.5 MB (21510999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a5d982997d6ba39077e3e40987eb0d698be2fd66c955363a39f87d5985f2dc`  
		Last Modified: Tue, 24 Nov 2026 05:36:09 GMT  
		Size: 37.0 MB (36951016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:658350c07dee7609902efaf1a3e57b456f7ff73447679fe475a77d57a1497cbe`  
		Last Modified: Tue, 24 Nov 2026 05:36:08 GMT  
		Size: 802.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:979ad488bc0ebde01de9824654e46443bfc70e1ea8e07053f2d1dbad4d15d472`  
		Last Modified: Tue, 24 Nov 2026 05:36:08 GMT  
		Size: 574.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469e23e54e42d189c49d854a3854fc3e5ec6f0da47c67a9053e7c64bae72ffe8`  
		Last Modified: Tue, 24 Nov 2026 05:36:09 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ef278e8fe9d85da45f6322bca37b734be28f613b84b6c8c5242eedb6e5bba5`  
		Last Modified: Tue, 24 Nov 2026 05:36:14 GMT  
		Size: 276.2 MB (276156206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:813a7e04104b4b9202242c0aefad4fe234227753677c6d00083f98e58ddecdef`  
		Last Modified: Tue, 24 Nov 2026 05:36:10 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c51db9e94268a56a0a28c470daf38308e61284d957faf38528b1b69378558423`  
		Last Modified: Tue, 24 Nov 2026 05:36:10 GMT  
		Size: 2.6 KB (2586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:latest` - unknown; unknown

```console
$ docker pull nextcloud@sha256:0ceff7f8e96f161808ee0db61e947387babd7032194464bc154a7bb4f7bd261e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 KB (61709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac89b14554c9015f40033a18df808d75dcf544aefdb18a52649b6c15dc1bc30`

```dockerfile
```

-	Layers:
	-	`sha256:1882a4c3ad1eacfce800b7add231aefd7e0126c827f3968c2878904452471e0e`  
		Last Modified: Tue, 24 Nov 2026 05:36:07 GMT  
		Size: 61.7 KB (61709 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:latest` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:804e4caad436e2ce9adf9b897876bdc9dd1a11051a02c3236b61349737c6796d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.9 MB (486875997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c80a0071efe14f6336d565b0165fda519b4eca1f5150e74a522cf80e3b67db`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:17:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:05 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:18:05 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:18:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:18:14 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:18:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:18:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:18:14 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:18:14 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:18:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:18:14 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:18:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:18:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:21:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:21:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:21:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:21:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:21:45 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:21:45 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:21:45 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:21:45 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:21:45 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:15:32 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 06:19:11 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 06:19:11 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 06:19:11 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 06:19:11 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:19:11 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 06:19:11 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 06:19:11 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 24 Nov 2026 06:19:11 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 24 Nov 2026 06:19:12 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 24 Nov 2026 06:19:12 GMT
ENV NEXTCLOUD_VERSION=35.0.3
# Tue, 24 Nov 2026 06:20:03 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:20:03 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 06:20:03 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 06:20:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:20:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf9e04e6ac87329c68856efc495d7e0e361a95fd0528a81e167f0d63f303922`  
		Last Modified: Tue, 24 Nov 2026 04:22:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3beaaf0784c162a2db50f4e6d8750bbd5edf53d46c7c8197fd0c38ae2bd64a61`  
		Last Modified: Tue, 24 Nov 2026 04:22:06 GMT  
		Size: 94.9 MB (94886039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5f1483bb023b1d9540fe0dc61545479b566451dd1d2cb2314f248901d98e85d`  
		Last Modified: Tue, 24 Nov 2026 04:22:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac46e6f0e0f4753cc6bc0fa308c70fb43d9d33af23bb3841cea0d58d419f3cd6`  
		Last Modified: Tue, 24 Nov 2026 04:22:04 GMT  
		Size: 4.1 MB (4099930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122589958167641cbb040c754e6ddb079d114c4662e04ffb99147de066a48824`  
		Last Modified: Tue, 24 Nov 2026 04:22:05 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b676c26fd4de387467e3677d72f3e6f2fd2f08064ee02a4d37d58f7e999375`  
		Last Modified: Tue, 24 Nov 2026 04:22:05 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb210446bca36b6d26d7a265e27743099e97a7ba70782957a72b4c603b0c0ed3`  
		Last Modified: Tue, 24 Nov 2026 04:22:06 GMT  
		Size: 14.8 MB (14765062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557b8cf5af81d27d3685abd50b4763caf106bfe2d34b4b06eb7f3248c799df92`  
		Last Modified: Tue, 24 Nov 2026 04:22:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a41c37bd6262a5c8c53542e2f90a70107dc69740c86aa53b5dc2885aa15e5c1`  
		Last Modified: Tue, 24 Nov 2026 04:22:07 GMT  
		Size: 13.3 MB (13310815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db457f0a3603467387c1cce07841aefced1d0770bba66b8baa92098e98091b`  
		Last Modified: Tue, 24 Nov 2026 04:22:07 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e607624e61330acb72f0c9afb0363eb0cf0315fcdf74f3d303b47e932f697f32`  
		Last Modified: Tue, 24 Nov 2026 04:22:07 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d3dec77145a9e36499875979ec6da14605e68cee07b76eead4514d73ff5ee2`  
		Last Modified: Tue, 24 Nov 2026 04:22:08 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0399279523020e8ce14b1d0b6f5c563a1a2b82ba10b78525b3e86b0e0df2b29b`  
		Last Modified: Tue, 24 Nov 2026 06:20:34 GMT  
		Size: 20.6 MB (20557062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a61d866508ba59689dd79778f882b35cf6e6d32e063ec92346087d6ee3cbcd4`  
		Last Modified: Tue, 24 Nov 2026 06:20:34 GMT  
		Size: 35.1 MB (35081125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1beec732656e3b12c2e3df42f5f6e6691724e76d654d5a7f1826c4e444ff8f70`  
		Last Modified: Tue, 24 Nov 2026 06:20:33 GMT  
		Size: 802.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ffa41638c4413f75716889c44cb48c3d1de26749fbc0423c7a4497a9a0cfaf`  
		Last Modified: Tue, 24 Nov 2026 06:20:33 GMT  
		Size: 574.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba2a0b4dba0e4a71847f5e7d5c8e185f0669326921227edf2645f6119e21f190`  
		Last Modified: Tue, 24 Nov 2026 06:20:34 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2844dcc3d5704528f49c772834757adebc3f250e0a10eb73f3ead73a73598da`  
		Last Modified: Tue, 24 Nov 2026 06:20:39 GMT  
		Size: 276.2 MB (276153181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5719d5b75f3e11ebecc4902d994d3cc794d497b52defc2f42dcc70569bc459eb`  
		Last Modified: Tue, 24 Nov 2026 06:20:35 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c601ceeac18ce13c74ec45d5267a37631c2d8b279368f551b349a02652a84a`  
		Last Modified: Tue, 24 Nov 2026 06:20:36 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:latest` - unknown; unknown

```console
$ docker pull nextcloud@sha256:f4ed92a8d7e26f2fae9f3c1aa0405bf992f4cfb60c8f8ca2d8f6382e3069c5e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 KB (61877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a10f1162225bc6a929273551f4097c4278f12f5217a35bdd544f051a104b83c1`

```dockerfile
```

-	Layers:
	-	`sha256:146a70fd9c7c8f33c8d53a88d02faa3c3fef3248e46781a23201e63adceaca1d`  
		Last Modified: Tue, 24 Nov 2026 06:20:33 GMT  
		Size: 61.9 KB (61877 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:latest` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:c038c143f0d1c57171bdbb8ac8b28e04e8513b81eb142ce573ddef6244e9a844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **473.0 MB (473013439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989616798c9f45c1f025a9bdac73b69904e351c2e0b27e74210fb00e8d462127`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:41 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:29:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:29:02 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:29:02 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:29:02 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:29:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:29:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:29:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:29:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:29:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:29:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:29:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:29:10 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:29:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:29:10 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:29:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:29:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:32:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:32:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:32:26 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:32:26 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:26 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:32:26 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:32:26 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:36:11 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 06:39:25 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 06:39:25 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 06:39:25 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 06:39:25 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:39:26 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 06:39:26 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 06:39:26 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 24 Nov 2026 06:39:26 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 24 Nov 2026 06:39:26 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 24 Nov 2026 06:39:26 GMT
ENV NEXTCLOUD_VERSION=35.0.3
# Tue, 24 Nov 2026 06:40:19 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:40:19 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 06:40:19 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 06:40:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:40:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3a9ae8f98a27f51b397a66e42d0088dd75f5f00fdda11eeb716d168c44276d`  
		Last Modified: Tue, 24 Nov 2026 04:32:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4857bf97a7a8f14f4e10d4cfc6c77aeff42553d1053e7d29ffbbd28f991ae603`  
		Last Modified: Tue, 24 Nov 2026 04:32:45 GMT  
		Size: 86.3 MB (86257046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883fd99d687754b2bf51f8f6081259b0bccc9cd63895aa2a9ee65952e3d7a0eb`  
		Last Modified: Tue, 24 Nov 2026 04:32:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bbbb11cfd8e3a04a0976ef73ae61ba7c8f7bab25af81365531b24d31bac5e9`  
		Last Modified: Tue, 24 Nov 2026 04:32:43 GMT  
		Size: 3.8 MB (3768051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d815434cc339987bd5b7aabfd34c65a21527556e7e31cb44dfa89e68e3e574df`  
		Last Modified: Tue, 24 Nov 2026 04:32:43 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4496e5c2b01b257363ac77d0dbd4906b9d8b05edadda06e067b15dbe173c16`  
		Last Modified: Tue, 24 Nov 2026 04:32:44 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae29897a3610f8e7bbb498a3b5930b7cb7a68dc312a8e2e72b72f6bf41cbeaa`  
		Last Modified: Tue, 24 Nov 2026 04:32:44 GMT  
		Size: 14.8 MB (14765193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03452712d90cd0e6c78be9c028e63890be4b01a504e06c73f6a7324361cc710f`  
		Last Modified: Tue, 24 Nov 2026 04:32:45 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3516601dc115952dfda611d78aa79691a74777f6ae58e792575ba2699d27601`  
		Last Modified: Tue, 24 Nov 2026 04:32:45 GMT  
		Size: 12.7 MB (12684350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08e2c7cd169edad5769fe0e660f8dfa65b7fe931d872fd2c81edc19ed303ee7`  
		Last Modified: Tue, 24 Nov 2026 04:32:46 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8c41f66f47e4a122252df365048fd8e091e2d487c71dc351f86d3136485e3af`  
		Last Modified: Tue, 24 Nov 2026 04:32:46 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c293dcfeeb1db5fcae7146997b84420fb61f25a449cd517218a03a14efcb46d`  
		Last Modified: Tue, 24 Nov 2026 04:32:46 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed595e9747167295201f279a568e3328e87db94907c3be756ce0e3353c50b984`  
		Last Modified: Tue, 24 Nov 2026 06:40:50 GMT  
		Size: 18.4 MB (18443329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e6dcf147accdc463fb7387b507927a3d9930c84137bd3dbcf426672589a1c4`  
		Last Modified: Tue, 24 Nov 2026 06:40:51 GMT  
		Size: 34.7 MB (34665853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe84f0f340b151642b984fc7e8db93ab371935976984d71640801b86e09ae3d4`  
		Last Modified: Tue, 24 Nov 2026 06:40:49 GMT  
		Size: 802.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb8b0ac884be900366e91b0612eba2dac1e56204fd89284d26409260d8f697c`  
		Last Modified: Tue, 24 Nov 2026 06:40:49 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3baee4f0d83c52a1e5aca5eaf769d90120b332f5cdae6d7942ce064108648bdc`  
		Last Modified: Tue, 24 Nov 2026 06:40:51 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b548e5d41471d5edcfbdbf0584d329f7e608090fe5eb36cae75d37edcf9d51`  
		Last Modified: Tue, 24 Nov 2026 06:40:57 GMT  
		Size: 276.2 MB (276153172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b7372e49ae7a638d1bd3a885e534054e7064104d3fd21e7b5f5548f115a056`  
		Last Modified: Tue, 24 Nov 2026 06:40:52 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59fa173385e7eb3cf7e0842d466fac2a8a7a2fb10c0cb93d8febd7469b78c25a`  
		Last Modified: Tue, 24 Nov 2026 06:40:52 GMT  
		Size: 2.6 KB (2592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:latest` - unknown; unknown

```console
$ docker pull nextcloud@sha256:e6fb6425ff859687d1a69eb20bf52dd02064763c582d198580bc64fa414db9a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 KB (61877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de1e4cddece14974577056fe73aaba13710712906d85497debab3c47882a7cf2`

```dockerfile
```

-	Layers:
	-	`sha256:e85a9711c7e3a4d9408afd1558bc7d329815dcdf88c310eb65b1ac757b79f913`  
		Last Modified: Tue, 24 Nov 2026 06:40:49 GMT  
		Size: 61.9 KB (61877 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:latest` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:594424b54278052c644c27c2fb5f40fc7632ebdb745212fcb6e24d27ecf0485c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **507.5 MB (507488410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1e9c8bcbe5bea0f0048be3969bdb72b2a66f75a5d171e02cd3edcf93b010cd8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:20:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:20:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:20:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:20:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:20:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:20:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:20:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:20:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:20:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:20:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:20:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:20:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:20:44 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:20:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:20:44 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:20:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:20:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:24:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:24:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:24:11 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:24:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:24:11 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:24:11 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:24:11 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:24:11 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:24:11 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 05:46:14 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 05:49:10 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 05:49:10 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 05:49:10 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 05:49:10 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:49:11 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 05:49:11 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:49:11 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 24 Nov 2026 05:49:11 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 24 Nov 2026 05:49:11 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 24 Nov 2026 05:49:11 GMT
ENV NEXTCLOUD_VERSION=35.0.3
# Tue, 24 Nov 2026 05:49:48 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:49:48 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 05:49:48 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 05:49:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:49:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37b2e0ef4a8fdc1a6d4aa7c849f9324a56a0ac144fa3ab640d76f23ea085dcf`  
		Last Modified: Tue, 24 Nov 2026 04:24:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6438088ddef87eca77e9f0d5ffaa51a86bf7e0b941572bd4e5244c9415d776d3`  
		Last Modified: Tue, 24 Nov 2026 04:24:35 GMT  
		Size: 110.2 MB (110180620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be44fda7fd3a92b7aef2507c4d4f942751f9029174b32c6dde68af9a93b87487`  
		Last Modified: Tue, 24 Nov 2026 04:24:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031cf487faf99923c51a0a2e3c47c08577acb8e896721b9a3c41a2d698da1e44`  
		Last Modified: Tue, 24 Nov 2026 04:24:32 GMT  
		Size: 4.3 MB (4321189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52aadde46e66894573be7088d2466488a1233c3fc9807a8434c74b12dbf16555`  
		Last Modified: Tue, 24 Nov 2026 04:24:33 GMT  
		Size: 426.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81aea6a37b26e151fb250b33c0116f519019fcceea8c0c1732df3ae505e9a50`  
		Last Modified: Tue, 24 Nov 2026 04:24:33 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dbd78f5eb20ed5b5bee60e403943e8b56f33e667fff8dbc7ba9ca0336359f11`  
		Last Modified: Tue, 24 Nov 2026 04:24:34 GMT  
		Size: 14.8 MB (14767433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b7a4d2298c107d0ce2bf7bd981b9abe5b6d727b072f89e253b8458c1ba0722`  
		Last Modified: Tue, 24 Nov 2026 04:24:34 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780946945ecb15c02c4a9c187d7f3fc1f77a706ab3bb867e2dcdf57ce9efef0e`  
		Last Modified: Tue, 24 Nov 2026 04:24:35 GMT  
		Size: 14.8 MB (14821069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a8c74d767f386dcf27f1c722c4c03f8abc9ee4f05ba7976e8d59a2c368c5f6b`  
		Last Modified: Tue, 24 Nov 2026 04:24:35 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33e230bb9a67c1af15717f43d1121ed5737eb6febb762c86bac819d22d9a370`  
		Last Modified: Tue, 24 Nov 2026 04:24:36 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187292cfdeec61d9a6ce2847b1e45734a94744aeb0e9918e88624785b121303b`  
		Last Modified: Tue, 24 Nov 2026 04:24:36 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8302053bab03a73745439a08c5841cd40080ea045d7a9f0d0095ee1a2de01e87`  
		Last Modified: Tue, 24 Nov 2026 05:50:19 GMT  
		Size: 20.2 MB (20190413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a748a26109e47c749352ee3d44553b5c033142bf7c40e104b9a598c72d1c446`  
		Last Modified: Tue, 24 Nov 2026 05:50:19 GMT  
		Size: 36.8 MB (36839753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c3f28720084e2e6ffaea2d4b6eeadda495f0e34d2de9ec111a8a81985915805`  
		Last Modified: Tue, 24 Nov 2026 05:50:18 GMT  
		Size: 802.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aa93a0f7735738effc568d6a2907a5f42b5456126c523165af8aef5b4bd1a71`  
		Last Modified: Tue, 24 Nov 2026 05:50:18 GMT  
		Size: 570.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae2bc83920421784f629219c085d3418a62c4b86a765a5c95b0e6cad6645034`  
		Last Modified: Tue, 24 Nov 2026 05:50:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa47bd0a86454524da61b918136834b917bd973e85673073ab2074e06402cf75`  
		Last Modified: Tue, 24 Nov 2026 05:50:24 GMT  
		Size: 276.2 MB (276155928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd61789cebeb99ba164b7b3d58dc9a9abd2da95b132fcee6ad6a1dbb311f782`  
		Last Modified: Tue, 24 Nov 2026 05:50:20 GMT  
		Size: 4.1 KB (4148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1aea9a373ff6b5abfb2811fff784e10ad2e621cef62f06e354dcb45325f668b`  
		Last Modified: Tue, 24 Nov 2026 05:50:20 GMT  
		Size: 2.6 KB (2588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:latest` - unknown; unknown

```console
$ docker pull nextcloud@sha256:662ebe38510468457660cb969257f1df7acf554406cf890407890e94b6cf3dff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.9 KB (61936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc53910ee8a7b47f42ab6c4f100eec47cdd7592db85a634a584adec999b59580`

```dockerfile
```

-	Layers:
	-	`sha256:599d8b5376feabdbe1c8805e2c3fe9cf3f118aa7baeb4dfe4718a46320f6d140`  
		Last Modified: Tue, 24 Nov 2026 05:50:18 GMT  
		Size: 61.9 KB (61936 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:latest` - linux; 386

```console
$ docker pull nextcloud@sha256:c4e64803291792ae5f6c28c701c4e2736fa7d377590a701de94801f580fa7ba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **517.8 MB (517787951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67fb3266a0c9be5fb0ec413f119aef6e2f63145be7a32015732000df63f1b763`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:19:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:19:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:19:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:19:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:19:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:19:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:19:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:19:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:19:07 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:19:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:19:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:19:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:19:07 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:19:07 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:19:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:19:07 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:19:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:19:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:22:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:22:31 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:22:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:22:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:22:31 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:22:31 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:22:31 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:22:31 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:22:31 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 05:36:57 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 05:39:12 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 05:39:12 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 05:39:12 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 05:39:12 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:39:12 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 05:39:12 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:39:13 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 24 Nov 2026 05:39:13 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 24 Nov 2026 05:39:13 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 24 Nov 2026 05:39:13 GMT
ENV NEXTCLOUD_VERSION=35.0.3
# Tue, 24 Nov 2026 05:39:49 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:39:50 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 05:39:50 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 05:39:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:39:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6bfd27867ac5802021565697ab0897467504e4a65b9f929f99273bacf2f6bf`  
		Last Modified: Tue, 24 Nov 2026 04:21:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7a44b5d801bd87ccfc50d90f60ffd23ebb4fd1743a3ed882fe30acd939b5d67`  
		Last Modified: Tue, 24 Nov 2026 04:22:53 GMT  
		Size: 116.1 MB (116139387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527b43d10c3ee80e33b5382f271601237290fb9f29ef5c5c9b7fb3860d2d339c`  
		Last Modified: Tue, 24 Nov 2026 04:22:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ba4ab4da25a504e47437f06808cb7aab1630f36d605986712e8e14549fefc7`  
		Last Modified: Tue, 24 Nov 2026 04:22:51 GMT  
		Size: 4.5 MB (4477239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:befad68cc1f4035236a4c1ebaf601b3b4f960f16899df3f60a5a8b33b928b58f`  
		Last Modified: Tue, 24 Nov 2026 04:22:51 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f624e4ba5f5960958fb2ca475f5167924c73863a15db69e9782ed3eca347a275`  
		Last Modified: Tue, 24 Nov 2026 04:22:51 GMT  
		Size: 479.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dfab258243d43798be57432154682a65373a57b965018c585dea26813f7d84a`  
		Last Modified: Tue, 24 Nov 2026 04:22:52 GMT  
		Size: 14.8 MB (14766723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2891bb933dd199cb5b2c786f8bcfbf45b99903cd69163b9f3ed80dcf705d63`  
		Last Modified: Tue, 24 Nov 2026 04:22:52 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233517e711043b1324b23dd6bd7843547c5315c04d286be324efe0731014018f`  
		Last Modified: Tue, 24 Nov 2026 04:22:53 GMT  
		Size: 15.7 MB (15700397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1812e1f4453050a8ea0079287a665eb23173577dd5a8372e5704444f9dc7c182`  
		Last Modified: Tue, 24 Nov 2026 04:22:54 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3668a744282aa8314a534aaa63f8e495e1d46c31a7d17c812c880e983dd58b61`  
		Last Modified: Tue, 24 Nov 2026 04:22:54 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d442ab6e4ad5630fe2961bac4a01952b15b879ebc5cc05e1f16aba3df86a811`  
		Last Modified: Tue, 24 Nov 2026 04:22:54 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b462b0dcea5d33530101170b794af9cb1310a6c4c65e987aaa192b34fac0c726`  
		Last Modified: Tue, 24 Nov 2026 05:40:16 GMT  
		Size: 21.8 MB (21818688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c09fe64eee81b2ba97fde6bbb0a08298d352c7bfeca88e51b09758986487dc`  
		Last Modified: Tue, 24 Nov 2026 05:40:17 GMT  
		Size: 37.4 MB (37358710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67faf3d53842724556ee13663f4c3c77632c68493671336997089e29329491b`  
		Last Modified: Tue, 24 Nov 2026 05:40:15 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527e41d07c53860719af516b2548612d60161baec545e544becfe8994f1b5876`  
		Last Modified: Tue, 24 Nov 2026 05:40:15 GMT  
		Size: 570.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b596861774fe79cc996b4de98e6f2a11a9a9ae1bca6d4c95eb88a10167d5723`  
		Last Modified: Tue, 24 Nov 2026 05:40:16 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12618aff2c563f61cac84ffdba74cec118b4bd9882bbc2166d3684d322875be3`  
		Last Modified: Tue, 24 Nov 2026 05:40:22 GMT  
		Size: 276.2 MB (276154916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0a880e02f32a8e05d57dd4734fd8636344a412b6e5f2ad4d7a822a9c80e8542`  
		Last Modified: Tue, 24 Nov 2026 05:40:18 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad66e249a1578a1fda7fbb5c0e9261961c2b7f2aee45dd37420f9c3a48214073`  
		Last Modified: Tue, 24 Nov 2026 05:40:18 GMT  
		Size: 2.6 KB (2585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:latest` - unknown; unknown

```console
$ docker pull nextcloud@sha256:b97fe75be079815a1ecd79c898e8105de6054cf06018bd32f46745d314a9517e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 KB (61647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d269a436dd18b10ec2bfea9f1d1987f0caed2fb80becb7089a60df1b1c2bd80a`

```dockerfile
```

-	Layers:
	-	`sha256:13cd6181249bd5787f22f38cd41789cf0b7d86f2f21cd8c984685499456ff27a`  
		Last Modified: Tue, 24 Nov 2026 05:40:15 GMT  
		Size: 61.6 KB (61647 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:latest` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:7d99b02dc5de55788cd6c3a7309294f4bef44b6297e955c33fcd3c900956cc96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **518.2 MB (518188243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9873f673b085b7d30cd48ed05296337fd3765347f1d84dc0c3c3b062f006d71a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:51:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:51:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:51:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:58:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:58:06 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_VERSION=8.5.13
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Thu, 19 Nov 2026 14:24:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:24:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:30:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:30:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:30:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:30:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:30:36 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 14:30:37 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:30:37 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:30:37 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 14:30:37 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 20:09:30 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 19 Nov 2026 20:15:44 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 19 Nov 2026 20:15:44 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 19 Nov 2026 20:15:44 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 19 Nov 2026 20:15:44 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 20:15:44 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 19 Nov 2026 20:15:44 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 20:15:46 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 19 Nov 2026 20:15:46 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 19 Nov 2026 20:15:48 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 19 Nov 2026 20:15:48 GMT
ENV NEXTCLOUD_VERSION=35.0.3
# Thu, 19 Nov 2026 20:20:44 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 20:20:45 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 19 Nov 2026 20:20:46 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 19 Nov 2026 20:20:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 20:20:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7268b190588f776dc9e7d85c3d3e7cd51ab40a5eb161341e7cafba8aa8db15`  
		Last Modified: Thu, 05 Nov 2026 07:57:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531972258920b8490e62ebec510a08a421787308f63d34f6bc4d9b6b8d8abc78`  
		Last Modified: Thu, 05 Nov 2026 07:57:28 GMT  
		Size: 109.6 MB (109611291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b985c27ef371a30298e699042d2ad9aefa1c4153215a3857a6bb042ad47cde`  
		Last Modified: Thu, 05 Nov 2026 07:57:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616500097e552e120f10ca4404d34d9cfb120b7c02c3524f4ce28cf1a60fe39b`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 4.9 MB (4900783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6e13085ae5c79bb1881e041bffc310a0ee54a9166ceccd83aec6c5b748d5f4`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0899b50a51dc19e2e0faa872575140226b0a41d13820bc6d87dc3abc777b7c8`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1651ba637a981f95d57bbdf9ee81f1eee4690272dbbb124e2442e0b9802b5664`  
		Last Modified: Thu, 19 Nov 2026 14:31:06 GMT  
		Size: 14.8 MB (14781851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2ba4b0e63c46bdcb4561b300d37739c0f3d10237b9a8fa15d35d8cd8f879dd`  
		Last Modified: Thu, 19 Nov 2026 14:30:36 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d261a39cfa4f683fe970ac334ae730e8d37d7b8668d94194894f5f0d56312173`  
		Last Modified: Thu, 19 Nov 2026 14:31:06 GMT  
		Size: 17.8 MB (17784183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f885f52dc0ec0f5064256cece1bcfdae0641763018c4027d3f1f67317288b4`  
		Last Modified: Thu, 19 Nov 2026 14:31:05 GMT  
		Size: 2.5 KB (2466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25fd70d0052d28840c0848f921f7e38707a0049356051eaebc1cd16024518e0`  
		Last Modified: Thu, 19 Nov 2026 14:31:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ff3ab5c271a1565a479ad4cefca059466d6694072d521a475f2288d8391d5a9`  
		Last Modified: Thu, 19 Nov 2026 14:31:06 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012e75b129a14c6be8cb7249b6858da9522698038d22d182f36d5e9eabf7d7f0`  
		Last Modified: Thu, 19 Nov 2026 20:18:23 GMT  
		Size: 22.6 MB (22635630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a90be8a7fd511fed6d1fbf954fef7df917d148187df449ba5ab14ed405bd57ea`  
		Last Modified: Thu, 19 Nov 2026 20:18:23 GMT  
		Size: 38.6 MB (38626780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05a3eb034db8f8ffce37ce09ec38a34bd206c5060df1cc5e57317c000396cb85`  
		Last Modified: Thu, 19 Nov 2026 20:18:22 GMT  
		Size: 809.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa094b93ff6b1d6911d2b57f8f3f93ef7cf22c1312b5adde072ec1044129ee45`  
		Last Modified: Thu, 19 Nov 2026 20:18:22 GMT  
		Size: 583.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50b7794982c5b36424f9b7738921d56e0ae20fee038632f204d0171155771c94`  
		Last Modified: Thu, 19 Nov 2026 20:18:23 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4062d892dd226d4dc2ed92e3c75b843cf0f231b094422fa83e38bc1d31cd79a5`  
		Last Modified: Thu, 19 Nov 2026 20:21:58 GMT  
		Size: 276.2 MB (276166036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fcf77600b005d6b119a03a5aece8cd803d069ba65795efa13d882b2d8f8eff`  
		Last Modified: Thu, 19 Nov 2026 20:21:52 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee09db91a4a70d834cdb0f2bca7df9fc28cef495e72a30211125dba85a829737`  
		Last Modified: Thu, 19 Nov 2026 20:21:52 GMT  
		Size: 2.6 KB (2593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:latest` - unknown; unknown

```console
$ docker pull nextcloud@sha256:d3a8e32b1d0326fd37c5bc47d4c39ebe3dca02b15859458d7220a3ea7ea68c80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 KB (61787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297dd291c66343e0b87d11ccdd5036e67703f15b6f54faef976f01bcfd8eca26`

```dockerfile
```

-	Layers:
	-	`sha256:9875d3e3ed7d5e9003d21f20500340274064da4620d2cde7da18bda69ae1f1a2`  
		Last Modified: Thu, 19 Nov 2026 20:21:51 GMT  
		Size: 61.8 KB (61787 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:latest` - linux; riscv64

```console
$ docker pull nextcloud@sha256:514da9f8c6dde4ae0e0eaaaa664a23d2c3b94a1de770890da159787c7fc8dd4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.9 MB (549898753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f3418c8b556512d09101eeefbc8ffc9e70b588c793d3f19047cc6406161ccf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 17:45:51 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 17:47:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 17:47:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:47:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 17:47:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 17:47:57 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 17:47:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 18:54:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 18:54:24 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 18:54:24 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:54:24 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 22:06:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 22:06:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:07:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 23:07:25 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:07:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 23:07:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 23:07:26 GMT
STOPSIGNAL SIGWINCH
# Thu, 05 Nov 2026 23:07:26 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 23:07:26 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 23:07:26 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 23:07:26 GMT
CMD ["apache2-foreground"]
# Mon, 09 Nov 2026 11:44:16 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Mon, 09 Nov 2026 12:20:33 GMT
ENV PHP_MEMORY_LIMIT=512M
# Mon, 09 Nov 2026 12:20:33 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Mon, 09 Nov 2026 12:20:33 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Mon, 09 Nov 2026 12:20:33 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Mon, 09 Nov 2026 12:20:33 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Mon, 09 Nov 2026 12:20:33 GMT
VOLUME [/var/www/html]
# Mon, 09 Nov 2026 12:20:34 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Mon, 09 Nov 2026 12:20:34 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Mon, 09 Nov 2026 12:20:35 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Mon, 09 Nov 2026 12:20:35 GMT
ENV NEXTCLOUD_VERSION=35.0.2
# Mon, 09 Nov 2026 12:25:16 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.2/nextcloud-35.0.2.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.2/nextcloud-35.0.2.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Mon, 09 Nov 2026 12:25:17 GMT
COPY *.sh upgrade.exclude / # buildkit
# Mon, 09 Nov 2026 12:25:17 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Mon, 09 Nov 2026 12:25:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Nov 2026 12:25:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee3b34ab458576b12b268eaaf021028ee8777997ce35131ec24ca408496b85`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381f462a32390761c89c1b87546bae3cfb5592c67f835bf1f95235509ed04c5e`  
		Last Modified: Thu, 05 Nov 2026 18:51:31 GMT  
		Size: 146.6 MB (146579061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f8071ad7d5d5200e591f19e5a9005447451fd465a7ff4020e9788d1fbbb71`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9955321a4cdb80e6c3a65a7eedfe3e918c1ce99103e5ca3982cc4ba3b1d506`  
		Last Modified: Thu, 05 Nov 2026 19:55:44 GMT  
		Size: 4.1 MB (4056400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdadd2092c541a393410a9a0844657a31965726a4377905ff6e95e8361aac4e6`  
		Last Modified: Thu, 05 Nov 2026 19:55:43 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0054a3ab549763ed4d782d366d8ae77887ae6e96a2145008db79d9caea6f0112`  
		Last Modified: Thu, 05 Nov 2026 19:55:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46e70a2ac9450a4ab688691f40abb9c9b31c38f658e318260d6f63c484be268`  
		Last Modified: Thu, 05 Nov 2026 23:10:55 GMT  
		Size: 14.7 MB (14726663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23a5ef801ec6fca251b6e7f301f5604ed7f866e8da79c5a84357b9ba1d848a1`  
		Last Modified: Thu, 05 Nov 2026 23:10:50 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347c0693f63667c216503436c5be887e14ebe0ea36cb916e82fa4dbd6906f104`  
		Last Modified: Thu, 05 Nov 2026 23:10:55 GMT  
		Size: 14.1 MB (14149830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227195b5b706f1df1d2ac712f738370458a6cb2d658964cae91a9d5d3e47df0e`  
		Last Modified: Thu, 05 Nov 2026 23:10:50 GMT  
		Size: 2.5 KB (2467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f932020bce3daeb66ccf4f04c6e9354b9278730de6c73d452c0fc0c42e81ce1`  
		Last Modified: Thu, 05 Nov 2026 23:10:52 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401cbac104a0eb157e5b2f475ae739798fc51e343cd6683fdaf8f6b219dd0313`  
		Last Modified: Thu, 05 Nov 2026 23:10:52 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c9f510294849be8eadeca1678d7619ecbcb71054ad04e46b1f1b23b525e257`  
		Last Modified: Mon, 09 Nov 2026 12:32:25 GMT  
		Size: 19.9 MB (19924811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b910fe5c46792d87bac7fe0c9a4e8aaf0ac112131757a2590c6c231063cb89dd`  
		Last Modified: Mon, 09 Nov 2026 12:32:33 GMT  
		Size: 45.9 MB (45864682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2d6c962060b8a306c54d0746600d17392ea98e5130d8a3d4800c2c60b3f7ca`  
		Last Modified: Mon, 09 Nov 2026 12:32:04 GMT  
		Size: 812.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2b970bb5879102ccfa5a2fd0197c7e3c559750e16120a0e1b6c8ea9df6e2ae`  
		Last Modified: Mon, 09 Nov 2026 12:32:04 GMT  
		Size: 576.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:826a9725bf1ccfac6e8f061e7b835cdfdfe6b328dc0fef5fa8c0c520a80c246e`  
		Last Modified: Mon, 09 Nov 2026 12:32:10 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed6b1e4bb5017e4b20cfa4a34f600ad6dbb88fe1e0f1d10badd424e49f35d00`  
		Last Modified: Mon, 09 Nov 2026 12:33:12 GMT  
		Size: 276.2 MB (276237069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aace4521b9ba9fc78dc1a38a072c1e729837b8d296eaa4007ca1962cbb5090a`  
		Last Modified: Mon, 09 Nov 2026 12:32:18 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02c2f0d51faf7c1ef0de0289c35e6bbc47ec1b8879f4a0a55d4d81e74e3cee2`  
		Last Modified: Mon, 09 Nov 2026 12:32:22 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:latest` - unknown; unknown

```console
$ docker pull nextcloud@sha256:97c6e30b7f6511089bd6f25ce52744ce0ac9d8ee8eab526065c10010f526adee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 KB (61787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7719739d7c48f1eb16c5c598cbfb7c6fe6ae2a4a1aa6263c177ca7405479c8f7`

```dockerfile
```

-	Layers:
	-	`sha256:d2c79fb1945bf79bc747c0daf11dfb65ce6510c1e75558f8e9920dab95c5199a`  
		Last Modified: Mon, 09 Nov 2026 12:32:02 GMT  
		Size: 61.8 KB (61787 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:latest` - linux; s390x

```console
$ docker pull nextcloud@sha256:4e682af2d595bad3b140424fc2987093dc8d4caca3599eb416ffa70f60c600e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.2 MB (490206031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b32d5bf5c57e5e2938ecb95998e4c381d0107fad40c851c4dc9aaf9a9210c4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:18:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:18:50 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:18:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:18:50 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:22:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:22:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:25:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:25:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:25:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:25:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:25:41 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:25:41 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:25:41 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:25:41 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:25:41 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:03:58 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 06:06:14 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 06:06:14 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 06:06:14 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 06:06:14 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:06:14 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 06:06:14 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 06:06:14 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 24 Nov 2026 06:06:14 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 24 Nov 2026 06:06:15 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 24 Nov 2026 06:06:15 GMT
ENV NEXTCLOUD_VERSION=35.0.3
# Tue, 24 Nov 2026 06:06:47 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.3/nextcloud-35.0.3.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:06:47 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 06:06:47 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 06:06:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:06:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6bfd27867ac5802021565697ab0897467504e4a65b9f929f99273bacf2f6bf`  
		Last Modified: Tue, 24 Nov 2026 04:21:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3c3f3ff419c28570f18be04fd665c1977caea6eddfc5b8ef7963c019fdb802`  
		Last Modified: Tue, 24 Nov 2026 04:21:59 GMT  
		Size: 92.6 MB (92570215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c923551b2af2cedf706d0dc449049ff776b90aa00186377df3c9f6c6db0f79`  
		Last Modified: Tue, 24 Nov 2026 04:21:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fe6077739cd3fcf30c6873d77a8bef92798ae1c9bc959ad6fc9ff10110beee`  
		Last Modified: Tue, 24 Nov 2026 04:21:57 GMT  
		Size: 4.3 MB (4341583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3456861bf2446284ee35f943aa3017703cf9ae83d8a1f81d05f840e4e911d6e8`  
		Last Modified: Tue, 24 Nov 2026 04:21:57 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:426d13257f977758da45c56f5237901ff6f1f12efd9abd1bf56c0aed00f91a36`  
		Last Modified: Tue, 24 Nov 2026 04:21:58 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5700b3ac3ba216f79ae53bac7d9e6e49ee41e6ed66b04b0b338797c4f9f91111`  
		Last Modified: Tue, 24 Nov 2026 04:25:57 GMT  
		Size: 14.8 MB (14766066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764448e0f528b6c9769b8a1f3e52d622333bd7947bd3c393d8d98c6c65dda0a4`  
		Last Modified: Tue, 24 Nov 2026 04:25:56 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ab14dbba1239f86550095e7b1bb94f86e4ca9e0f9a5a1f79ef173fe20413d7`  
		Last Modified: Tue, 24 Nov 2026 04:25:57 GMT  
		Size: 14.5 MB (14527491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df20eb90796fe3fbdfbbaff6a9e9ba00025e10c9735be23b26757fef942592d5`  
		Last Modified: Tue, 24 Nov 2026 04:25:56 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ccad1515cacc7ef4b00d7a90f1e4514b7346b37c9ac8574918e8bc16f5379e`  
		Last Modified: Tue, 24 Nov 2026 04:25:57 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc0da777237588ce98a1f467f719dff7a2ed4f974f952182782b2c69e8e7aee`  
		Last Modified: Tue, 24 Nov 2026 04:25:58 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0715316f94ab90b3c6f60867524c54125cda264aabbb4f2c4ee701b40fcf29`  
		Last Modified: Tue, 24 Nov 2026 06:07:25 GMT  
		Size: 20.8 MB (20826756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2577c9fbde6f863da666e837be462652f6809cf642c4862b1f553576c281ce98`  
		Last Modified: Tue, 24 Nov 2026 06:07:25 GMT  
		Size: 37.1 MB (37095840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e16da746f663a69e10ed529235e744fddc4aed7755d2f1cf35ef5a0714f9157`  
		Last Modified: Tue, 24 Nov 2026 06:07:24 GMT  
		Size: 807.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22452a0ffa76559453c1cd66acff54795cb92b591befe306738d67d3f103245f`  
		Last Modified: Tue, 24 Nov 2026 06:07:23 GMT  
		Size: 569.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2c9ea87101567f0b2e27c7f3bc8f1eab692a6355d97326ee238a8bc6d811f1`  
		Last Modified: Tue, 24 Nov 2026 06:07:25 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7b3dc0e714bb91f5ab5a3fab9dba264ef33819ebdb2152c131b17881742efcf`  
		Last Modified: Tue, 24 Nov 2026 06:07:29 GMT  
		Size: 276.2 MB (276154076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019aa0a6014396d04dd9591498259af2f9bdc1e2a7526e0dc875024b0f89810d`  
		Last Modified: Tue, 24 Nov 2026 06:07:26 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0615aea523e54136e5bcef8776bddcbe227dd60e8013e72cb2c99bf359484d`  
		Last Modified: Tue, 24 Nov 2026 06:07:26 GMT  
		Size: 2.6 KB (2588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:latest` - unknown; unknown

```console
$ docker pull nextcloud@sha256:78d9af43f86c0d27d3a92c430da488c91158b67c9c514b719dbeaf75a64290d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 KB (61700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30add77b76dae5d144f05795dd489cbcce8b3e03f8e4ed34fcfc5bb68a15c2e`

```dockerfile
```

-	Layers:
	-	`sha256:512c8a50f6198e61584b328577725f3e4bbd3646bc04e8f2c3a9c53deecb909c`  
		Last Modified: Tue, 24 Nov 2026 06:07:23 GMT  
		Size: 61.7 KB (61700 bytes)  
		MIME: application/vnd.in-toto+json
