## `nextcloud:stable-apache`

```console
$ docker pull nextcloud@sha256:82dd814e0e9490d73d9b65b810b3d1171f4ea9a2b3e5f73b87e56385188de2d0
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

### `nextcloud:stable-apache` - linux; amd64

```console
$ docker pull nextcloud@sha256:171da9e8df15f9e0960ed2d56d40ddbe2b03563a1ae02c37ae19528c3f141ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.7 MB (510735447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c214395f1c943e4097597cd6e68650260b20f1004e2815ec74dc0f509a75706`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:05:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:05:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:05:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:05:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:05:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:05:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:05:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:05:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:05:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:05:43 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:05:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:05:43 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:05:43 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:05:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:05:43 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:05:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:05:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:08:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:08:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:08:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:08:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:08:45 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:08:45 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:08:45 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:08:45 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:08:45 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:39:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 24 Sep 2026 19:41:27 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 24 Sep 2026 19:41:27 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 24 Sep 2026 19:41:27 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 24 Sep 2026 19:41:27 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:41:28 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 24 Sep 2026 19:41:28 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:41:28 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 24 Sep 2026 19:41:28 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 24 Sep 2026 19:41:28 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 24 Sep 2026 19:41:28 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Thu, 24 Sep 2026 19:42:02 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:42:02 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 24 Sep 2026 19:42:02 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 24 Sep 2026 19:42:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:42:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:215869c9ffb9da750374ed004c03d92e9d6552ac0db5c485a27e414675840f62`  
		Last Modified: Thu, 24 Sep 2026 19:09:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6866565b74c818a8ff16f898f2405e923132cdcd70f5ce8fb6c5f3d8d5125a`  
		Last Modified: Thu, 24 Sep 2026 19:09:10 GMT  
		Size: 117.8 MB (117842561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c771fe90ccb8566f4afd64ed202ac1fe0994d8e07c8e5376849b14fec013430`  
		Last Modified: Thu, 24 Sep 2026 19:09:05 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28eb77c41f925fd1d9dbd53d5832e260a0afaf3cfdebc04917bb061e59084681`  
		Last Modified: Thu, 24 Sep 2026 19:09:06 GMT  
		Size: 4.2 MB (4239050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d65371285a94d80cf5eab500c9e45732c817a418728df92b0145f3144e6330c`  
		Last Modified: Thu, 24 Sep 2026 19:09:07 GMT  
		Size: 425.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7d1f2229ead43d48837f565c4c86224871c9ef5574469643507c41d790934e`  
		Last Modified: Thu, 24 Sep 2026 19:09:07 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9e523ba1c6bed516640f337f6d3ac39e835345662eb1b89bdbf8b7431daf00`  
		Last Modified: Thu, 24 Sep 2026 19:09:08 GMT  
		Size: 14.6 MB (14636646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:345d40a81509f4f8ba601ca8fe9b352fc7fe2b0767d5504247f7684b45599ecc`  
		Last Modified: Thu, 24 Sep 2026 19:09:08 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82a7cee9903f405e72b81e4d706081c0c56df0cdf65c608302ead2a14495d366`  
		Last Modified: Thu, 24 Sep 2026 19:09:09 GMT  
		Size: 15.2 MB (15193210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97b7751051180f9c0ec9878e2815dd5c62e924808f18c0f65d3b0f529d01f749`  
		Last Modified: Thu, 24 Sep 2026 19:09:09 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8280252f51267e36eb0e40cbd12cc52f6fa210c06c2748949171e9c22a410de0`  
		Last Modified: Thu, 24 Sep 2026 19:09:09 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51096eb23faa4891936716e27c3fc64569c43aaa4d285f9418d1a23c8cdfd0de`  
		Last Modified: Thu, 24 Sep 2026 19:09:10 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2811c152b448708780de67c7c61ad8cbc3bc7b7a0301f75323429cc17a5c4c90`  
		Last Modified: Thu, 24 Sep 2026 19:42:29 GMT  
		Size: 21.0 MB (20978485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ab4e6b4907f93701f429467327eaa59671a59ac37ca5e46ff7860459a40a04`  
		Last Modified: Thu, 24 Sep 2026 19:42:29 GMT  
		Size: 36.9 MB (36936162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beaf02ac2a8cc4af2c8430062415e5b95809ac997da19a2155ddd5d4d4c84d40`  
		Last Modified: Thu, 24 Sep 2026 19:42:28 GMT  
		Size: 792.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58991d0ff37890905360fdae1d3ac177e96ce08883dbb9ebe465c3a0c3211698`  
		Last Modified: Thu, 24 Sep 2026 19:42:28 GMT  
		Size: 568.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1b473e8b39079592a0658c2da1eecb951a031ebb083f974762b71032176c82`  
		Last Modified: Thu, 24 Sep 2026 19:42:29 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09746a5f3b2d84223a65137b8aee0e405f1e919cbc8580a6e8fbbfd917c6dbdb`  
		Last Modified: Thu, 24 Sep 2026 19:42:34 GMT  
		Size: 271.1 MB (271065000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c75629d29833cc79251d14538434b9ed1a8967b1d0fa5f658c26ce144dfaea85`  
		Last Modified: Thu, 24 Sep 2026 19:42:30 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ecf65e23be59a7c5a63e026b0dd0a3e8bed66f0bd53ca53846d457570f446a9`  
		Last Modified: Thu, 24 Sep 2026 19:42:31 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:45524caf05bb5d067f35b1ffa0b4ee0428c97cfe4d6633c13a9edfee5ea7a6d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 KB (62201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d86f48beed9ba59643df81544e78dce8a42601d12bb326cdd895598f69a6a7`

```dockerfile
```

-	Layers:
	-	`sha256:e3382054e7d841888e4f55f9654afe94990be5c7b84193fd327170b83da70b76`  
		Last Modified: Thu, 24 Sep 2026 19:42:27 GMT  
		Size: 62.2 KB (62201 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:8ce79263bfe8c1431de33c9aed711a8aed619b63fadd79394868c3903ad88afa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **481.1 MB (481091351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec61f2e42ae331673eb1b7fb87a3a5d68b84d19b71535518f9ffd468ddda4f33`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:04:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:05:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:05:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:05:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:05:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:05:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:05:17 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:05:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:05:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:05:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:05:27 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:05:27 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:09:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:09:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:12:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:12:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:12:56 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:12:56 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:56 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:12:56 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:12:56 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:48:16 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 24 Sep 2026 19:51:55 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 24 Sep 2026 19:51:55 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 24 Sep 2026 19:51:55 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 24 Sep 2026 19:51:55 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:51:55 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 24 Sep 2026 19:51:55 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:51:55 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 24 Sep 2026 19:51:55 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 24 Sep 2026 19:51:55 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 24 Sep 2026 19:51:55 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Thu, 24 Sep 2026 19:52:46 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:52:46 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 24 Sep 2026 19:52:46 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 24 Sep 2026 19:52:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:52:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dadb25619090b3ba9647fe83b7dba1b0a8da4684dfd743aad680785563115ba`  
		Last Modified: Thu, 24 Sep 2026 19:09:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4df5d6d6b4c12ceb82dbf9fbb0f271dc91a0ed3589972902f2f35ea6c2329c1b`  
		Last Modified: Thu, 24 Sep 2026 19:09:04 GMT  
		Size: 94.9 MB (94876667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4bda78867e9797dbeb3f4a330c776470916313c9a6e451c34c70bc373030b56`  
		Last Modified: Thu, 24 Sep 2026 19:09:02 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8680915d5a5034bee785f29766cf086302326fff2844b511b2d037a68947eab2`  
		Last Modified: Thu, 24 Sep 2026 19:09:02 GMT  
		Size: 4.1 MB (4097280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00116e496288d90b9b5546032c9b5c7352acfdb49c7849bebe30ef0d22d2b348`  
		Last Modified: Thu, 24 Sep 2026 19:09:03 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d8d96d6ffe11a230b7a47af9b3fc1b4efe6ca9bdc8a66ec8478b1d4b9d0e10e`  
		Last Modified: Thu, 24 Sep 2026 19:09:03 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f79306adf8717e2e7ddb613a3fea623bb39cc7da3c42eb27f27c5df411d6be`  
		Last Modified: Thu, 24 Sep 2026 19:13:07 GMT  
		Size: 14.6 MB (14641739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23cb77dd3049602b7f2cbca73364409907f00b32a276add40ca8460b21bd5d5f`  
		Last Modified: Thu, 24 Sep 2026 19:13:06 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f962b1be04991e3bc89c75a0c95d5bff6d7c4334e267d4e26491d0fd55a5939`  
		Last Modified: Thu, 24 Sep 2026 19:13:07 GMT  
		Size: 13.3 MB (13262797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a76c13e200319783f7e8e0767b8fc193d0d39eb6c6ae6113bc2c318944e1a8`  
		Last Modified: Thu, 24 Sep 2026 19:13:06 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52b2ee8ac87f146fafa5f6cf96200d2e82e0ea6893ef293b91ae480f7d76b3f`  
		Last Modified: Thu, 24 Sep 2026 19:13:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8875b1d79a5942087dfe43f98c9410bc622533bd26d643efd763d9eb115643f4`  
		Last Modified: Thu, 24 Sep 2026 19:13:07 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7dea7411f46808a877c6bb7d8d8c088b6cb4f890626dc4bcd3a7d076d6e256d`  
		Last Modified: Thu, 24 Sep 2026 19:53:17 GMT  
		Size: 20.1 MB (20073904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94feababfaacb382d0600fe7f008656e7971acb3075bafc337fb4327c7d6c56e`  
		Last Modified: Thu, 24 Sep 2026 19:53:17 GMT  
		Size: 35.1 MB (35064926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39f5e38264dad582ef6ab561fb55ba2b7d27d03d043c5212ef22c8d83929b9c`  
		Last Modified: Thu, 24 Sep 2026 19:53:16 GMT  
		Size: 792.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638b56ee80c52977c9330ab96e512b5429760e6071cc9f35174200335034632f`  
		Last Modified: Thu, 24 Sep 2026 19:53:16 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fd0d3bd56086c7ce5210c366a2267daa2e556fb91394b4d5de635eee95c43ac`  
		Last Modified: Thu, 24 Sep 2026 19:53:17 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c8903afb19f10bd82e230b412045f7418c21da2968c853e0ecf34c4fcfba5f`  
		Last Modified: Thu, 24 Sep 2026 19:53:23 GMT  
		Size: 271.1 MB (271062068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed00816e235451424b28cfdfbb03fe446963af57ce666752949cf1d7c863309`  
		Last Modified: Thu, 24 Sep 2026 19:53:19 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3475809ae2ff55ca8eea501da6a2e2e3e747dba28b2e612a6c0438e0a9491085`  
		Last Modified: Thu, 24 Sep 2026 19:53:19 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:d986a4ca19502b0cd4003d880168688825ed9f79671be23d1d7029ca7b656e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 KB (62385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4349bfd0fcd85a2a6e9881abb54504467fefa77c433134ac3e8ed31274abd640`

```dockerfile
```

-	Layers:
	-	`sha256:e8855a86e8b0dee845b05be63fee89d8de2fd4d51861728e4adaa75351e85bda`  
		Last Modified: Thu, 24 Sep 2026 19:53:16 GMT  
		Size: 62.4 KB (62385 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:ebdc61fe46e12e46d1327337418b603ebd7ff4175204d6c26b95b11874cd62e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.3 MB (467287392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0267e07a3077d4a00c5896dce2f964a99ada11c60b0e76b225feb031199b8492`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:00:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:01:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:01:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:01:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:01:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:01:03 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:01:03 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:01:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:01:11 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:01:11 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:01:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:01:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:01:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:01:11 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:01:11 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:01:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:01:11 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:13:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:13:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:16:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:16:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:16:31 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:16:31 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:16:31 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:16:31 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:16:31 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:52:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 24 Sep 2026 19:55:30 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 24 Sep 2026 19:55:30 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 24 Sep 2026 19:55:30 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 24 Sep 2026 19:55:30 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:55:30 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 24 Sep 2026 19:55:30 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:55:30 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 24 Sep 2026 19:55:30 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 24 Sep 2026 19:55:30 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 24 Sep 2026 19:55:30 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Thu, 24 Sep 2026 19:56:17 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:56:17 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 24 Sep 2026 19:56:17 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 24 Sep 2026 19:56:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:56:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8db5c2fd6f99efd6f341b372c96158d8754314eace13032940b096a95698eb5`  
		Last Modified: Thu, 24 Sep 2026 19:04:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa380211ffa05c9a445aadcd6878292bab77234fb188080ab8a3fa6325734d`  
		Last Modified: Thu, 24 Sep 2026 19:04:23 GMT  
		Size: 86.3 MB (86265389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6e828acac85c74ba27eeb623c53a5a2e84f0ec0a14b59a2e8b95ce793e45623`  
		Last Modified: Thu, 24 Sep 2026 19:04:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e661dc4e71e9cb5f9a43a29f9149571641a0f6d241f7a4444e9e5fdb34e07686`  
		Last Modified: Thu, 24 Sep 2026 19:04:20 GMT  
		Size: 3.8 MB (3763857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad69ed1007eb87bb55341cf74544b62d84fd312389f652e8aa14fc846e124a1e`  
		Last Modified: Thu, 24 Sep 2026 19:04:20 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868cff6b8dcebcdbefc2f1fb282a62c1078791181824d06e91336e4b545a93ed`  
		Last Modified: Thu, 24 Sep 2026 19:04:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc2233222e728037cb9334df75eb4eacb577b68d8c1bb0874a00cae4629b916`  
		Last Modified: Thu, 24 Sep 2026 19:16:42 GMT  
		Size: 14.6 MB (14641860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df1039745b2d2c022e7f77616fa7fca108d04cd433f083063beaa3ab8fdab671`  
		Last Modified: Thu, 24 Sep 2026 19:16:41 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc8022b6fcf0cec41728c706cb1f80621196271d51c54f14914c5b8b7a351139`  
		Last Modified: Thu, 24 Sep 2026 19:16:42 GMT  
		Size: 12.6 MB (12636822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8519b74afa122be698ae4f3b6c8d87d2f0a7054d53c33c8e089bffbdc9bdbeb`  
		Last Modified: Thu, 24 Sep 2026 19:16:41 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c8b4849d20d476c701ab9633bf4ecd78ab206347b92f3e25f8f374105e7215`  
		Last Modified: Thu, 24 Sep 2026 19:16:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea0a07eedca3f11b327a48838758d92db653d8dd8cab7e3ed901ae491cae8ab`  
		Last Modified: Thu, 24 Sep 2026 19:16:43 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c40747fb84e57b188155594d2f01a4ccc8fb60e47ead04b436b5f758d04b40c`  
		Last Modified: Thu, 24 Sep 2026 19:56:48 GMT  
		Size: 18.0 MB (18007919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d66dee5b7b9e3aacf3a7d09b0f5e62e2f5f4949b73f6f7f9f80adb37b8e551`  
		Last Modified: Thu, 24 Sep 2026 19:56:49 GMT  
		Size: 34.6 MB (34646138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4844bd88d7e57a84280f8ec6116fa35398531ee49481e2cb516f7c0c83f1184`  
		Last Modified: Thu, 24 Sep 2026 19:56:48 GMT  
		Size: 791.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863267b5b099176ec771bf24bf3c447714e05fd35bf901b2ec98152c7b9e983e`  
		Last Modified: Thu, 24 Sep 2026 19:56:47 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17014e6fec596a3ae11a392ae9e54739514170f24d60a36e99f7bf686034477`  
		Last Modified: Thu, 24 Sep 2026 19:56:49 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f198ca8f2916723a113bd4dacb7a8c277525acb6c7b15b277e3339e6c998103b`  
		Last Modified: Thu, 24 Sep 2026 19:56:54 GMT  
		Size: 271.1 MB (271062530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:679ad39ac00b0e74517a6ffaad026a6a7ef7d40fdf93fb8135ab9e7eb4b90628`  
		Last Modified: Thu, 24 Sep 2026 19:56:50 GMT  
		Size: 4.1 KB (4137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bbfa75ec79e52f45f215784b598afa0dc6eb5badc97e8e3d707a38988bb4cde`  
		Last Modified: Thu, 24 Sep 2026 19:56:50 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:4da857a3508840a133752e2135726f715b4b5438c015ae177d61c48f52efb94e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 KB (62385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf4dda8dd35796c5db58d739423d19a6e76c30e7761e8fcbc06fee28e67e02d`

```dockerfile
```

-	Layers:
	-	`sha256:464b709bcd9c11b9f8652f5f8cfe397a479248bedbb235110380c0713720d9cc`  
		Last Modified: Thu, 24 Sep 2026 19:56:47 GMT  
		Size: 62.4 KB (62385 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:84776e7f2387043bd6fdc2feb8e1f86d2e49d8a59e2a1adbbe8f9426a6de6c9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.7 MB (501678056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c17d742eda805c3416b3436717139645f85a1046106df4bb48ff33014509b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:01:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:01:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:01:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:01:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:01:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:01:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:01:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:05:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:05:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:05:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:05:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:05:26 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:05:26 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:05:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:05:26 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:05:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:05:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:09:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:09:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:09:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:09:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:09:06 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:09:06 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:09:06 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:09:06 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:09:06 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:38:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 24 Sep 2026 19:41:34 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 24 Sep 2026 19:41:34 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 24 Sep 2026 19:41:34 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 24 Sep 2026 19:41:34 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:41:34 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 24 Sep 2026 19:41:34 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:41:34 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 24 Sep 2026 19:41:34 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 24 Sep 2026 19:41:35 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 24 Sep 2026 19:41:35 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Thu, 24 Sep 2026 19:42:11 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:42:11 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 24 Sep 2026 19:42:11 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 24 Sep 2026 19:42:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:42:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3cce82d972d1b887eda50d3fb18a1d1d25a3d1ba9edff7c2593ec6a863bc6e`  
		Last Modified: Thu, 24 Sep 2026 19:04:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f367ad55561bbc0f30da825d4ead0a0ee4f80c595e16142e22363c84cf2c9e6a`  
		Last Modified: Thu, 24 Sep 2026 19:05:12 GMT  
		Size: 110.2 MB (110178981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abaaf63e9598c8276c8a7fc052965e6abb35ea5dbef0dfb3563a6b4208366d3e`  
		Last Modified: Thu, 24 Sep 2026 19:04:47 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db35d8d4c7e3253cf6ee8df2c2a481ca07fa8285fd65806a4c0f044548d33372`  
		Last Modified: Thu, 24 Sep 2026 19:09:18 GMT  
		Size: 4.3 MB (4314357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ece480a2567a5cb3f0489c5b089767885a1c4c16e2d8178436b1030e810b130d`  
		Last Modified: Thu, 24 Sep 2026 19:09:18 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9ca35b8505a019cba4c5883ac4c5bd3ef4bb47138bf6c3657aa4485cc6336b`  
		Last Modified: Thu, 24 Sep 2026 19:09:18 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edb1201f72dc66bbe3d9017603159c6946c77e5e837cf41fd6a441a5f44ca9a`  
		Last Modified: Thu, 24 Sep 2026 19:09:18 GMT  
		Size: 14.6 MB (14636207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:808560a8fde5c74c67aae10f53065c94a6fe92fdbf2d130532eada539fe0278d`  
		Last Modified: Thu, 24 Sep 2026 19:09:19 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47731ad64f3938a6499a9f8d8dc0ed446cfcc4443c4c7941bba3cbd3477ec100`  
		Last Modified: Thu, 24 Sep 2026 19:09:20 GMT  
		Size: 14.8 MB (14756863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d79f64b7bf48a90c2b53ade3f32b6ea8a7ead832f47c2aed9ec6a7d12b36faf`  
		Last Modified: Thu, 24 Sep 2026 19:09:19 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49fe553985378ec2b27eb8ebfb599d28911bb660c21c025b87485fb753101091`  
		Last Modified: Thu, 24 Sep 2026 19:09:20 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ad347bb6bfad859b2583ae508aa6e1f4ec2111df52a49e675aaf66556a1b3c`  
		Last Modified: Thu, 24 Sep 2026 19:09:20 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f904b23bbe7cb3777187064c11cebe2814ac245d5c2105454cb3500b8ac76f7f`  
		Last Modified: Thu, 24 Sep 2026 19:42:39 GMT  
		Size: 19.7 MB (19702395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a0c9d8ed3d5b89a16799add22df7839cdd719178a657715da87fbf5b6115504`  
		Last Modified: Thu, 24 Sep 2026 19:42:40 GMT  
		Size: 36.8 MB (36821309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b5393ab7647361880775d3232d2e21f749b9a40d04c1a4291362a2c1908892`  
		Last Modified: Thu, 24 Sep 2026 19:42:38 GMT  
		Size: 790.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a6880d18999f08da87585d54e67b15f2bfa1838b072b76d44cecbbcfa17f967`  
		Last Modified: Thu, 24 Sep 2026 19:42:38 GMT  
		Size: 570.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1da0aa644df3deb21e3a973372999f3b62441c933b4c4d3caa8e0ec5a728909`  
		Last Modified: Thu, 24 Sep 2026 19:42:39 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca879e384a175b0bff282f211ad9351d1c368486e451848b536ad58dc9567ef1`  
		Last Modified: Thu, 24 Sep 2026 19:42:45 GMT  
		Size: 271.1 MB (271064326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716f4dfedbad43d7e6381bfb038086f4c2908c0b604aea402b77af2321e693a4`  
		Last Modified: Thu, 24 Sep 2026 19:42:41 GMT  
		Size: 4.1 KB (4132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379a8c0b39ab332bbce6f007f5a7d90a6ac5344a8581251c0479a7ea892e5dc9`  
		Last Modified: Thu, 24 Sep 2026 19:42:41 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:4f2596b6dfc0cfc4ff9eec04635ef5634aae314bdc77b6d0593e755e04eaf214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 KB (62452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19c97c83135ffcdce507631b6c3eb196675b24a6cd34295a37529895699c254`

```dockerfile
```

-	Layers:
	-	`sha256:161dd604f2cbdcedad517c66a366903051f46a56a342539f1928df2d320ddd7b`  
		Last Modified: Thu, 24 Sep 2026 19:42:38 GMT  
		Size: 62.5 KB (62452 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; 386

```console
$ docker pull nextcloud@sha256:25b05e1590585fb77fc2fb8afb663fbeed377ef8d03adf8492f0ffd5c9bb3692
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **511.8 MB (511846433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9219297d3613aee39fae89612b82631bb2bf4e3d932eb8a49d2fa86892a578ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Thu, 24 Sep 2026 19:05:22 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 24 Sep 2026 19:05:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 24 Sep 2026 19:05:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:05:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:05:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:05:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 24 Sep 2026 19:05:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 24 Sep 2026 19:05:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 24 Sep 2026 19:05:49 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 24 Sep 2026 19:05:49 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 24 Sep 2026 19:05:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:05:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:05:49 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:05:49 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:05:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:05:49 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:05:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:05:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:09:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:09:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:09:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:09:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:09:24 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:09:24 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:09:24 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:09:24 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:09:24 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:34:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 24 Sep 2026 19:36:40 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 24 Sep 2026 19:36:40 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 24 Sep 2026 19:36:40 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 24 Sep 2026 19:36:40 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:36:40 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 24 Sep 2026 19:36:40 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:36:40 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 24 Sep 2026 19:36:40 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 24 Sep 2026 19:36:40 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 24 Sep 2026 19:36:40 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Thu, 24 Sep 2026 19:37:19 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:37:19 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 24 Sep 2026 19:37:19 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 24 Sep 2026 19:37:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:37:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0bcbf07751d7d3c26f58f710dbb659aafa1cdde9f1984e95433cc6af48c088`  
		Last Modified: Thu, 24 Sep 2026 19:09:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced7370d89fac112417928cbf2f8b71cf7e11372d8441367892422a0d677d680`  
		Last Modified: Thu, 24 Sep 2026 19:09:47 GMT  
		Size: 116.1 MB (116148538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1866126b3789c8dc40c31c57e503d65a7695b942179628816800e314e5f2e1`  
		Last Modified: Thu, 24 Sep 2026 19:09:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa49951b9b3882768507512dbf287c5e3a164eb2a2b24f714116eefa64c7c9f6`  
		Last Modified: Thu, 24 Sep 2026 19:09:44 GMT  
		Size: 4.5 MB (4471126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f31fdec561b250b77de50d5fb377be0b1c2cad805d8b35614b840104f62c6a`  
		Last Modified: Thu, 24 Sep 2026 19:09:44 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81cce31580e401f9011bd6c16db90928005a0d4577758511cdd5e9bca8c6dcd0`  
		Last Modified: Thu, 24 Sep 2026 19:09:45 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d034d4f218d6fba7054af11378e0704f577a8a76839676dabdea54cf0016b1`  
		Last Modified: Thu, 24 Sep 2026 19:09:46 GMT  
		Size: 14.6 MB (14635502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3cd771158a9e85aa70a3a581eaf2a6542231afbec1ceb4d000bbbfc01935e2a`  
		Last Modified: Thu, 24 Sep 2026 19:09:46 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a6a1fccb8a1b3c9966bcba11b2bc35f25f68cd2e1f980567c20db7ebdb5a67`  
		Last Modified: Thu, 24 Sep 2026 19:09:47 GMT  
		Size: 15.6 MB (15608976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e107d43159420a9f09a3e2b504bfac5e424c5a549f279f4a71ed4bb832b45e8c`  
		Last Modified: Thu, 24 Sep 2026 19:09:47 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9902b3d1d15ba7576675ad5db2c46683b99761bf2b384af097aea6c4dc2301c7`  
		Last Modified: Thu, 24 Sep 2026 19:09:47 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e140d9219b53b9af25c72aa534732a7898a7ec425ff19f9e2fd43bbd848843fd`  
		Last Modified: Thu, 24 Sep 2026 19:09:48 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0739c752fea3235934dfd547cf282e6e6670743403386ae6d0766278905547d`  
		Last Modified: Thu, 24 Sep 2026 19:37:47 GMT  
		Size: 21.2 MB (21226884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d39a74f50dedd019633005fc775faf5099d8f5569bf68d045fe86a2fd6fc8ef8`  
		Last Modified: Thu, 24 Sep 2026 19:37:47 GMT  
		Size: 37.3 MB (37337338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88fe345b32c2524307696b8d2d23994ef687868fdf2d1256b491e74d2d2c0439`  
		Last Modified: Thu, 24 Sep 2026 19:37:46 GMT  
		Size: 791.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b97ff6ee982951adf7908f2cd240978678fa08cd333ecd47f53de5ad7ad6594`  
		Last Modified: Thu, 24 Sep 2026 19:37:46 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb85d3cc057a9de3eeac10be44306cd80cfb70484c36ff1e17cce45058de234`  
		Last Modified: Thu, 24 Sep 2026 19:37:47 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e9ef563347675eb79dbf2d591bb90fd7cbf8f1648f13856da47d2818ffef69`  
		Last Modified: Thu, 24 Sep 2026 19:37:53 GMT  
		Size: 271.1 MB (271063729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e56ca3120e35c69462f93c710255fec4ed72ca41b939529050479c015a104cc`  
		Last Modified: Thu, 24 Sep 2026 19:37:48 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81ece1cd86a89f1635f91caa2fc7b52e1f9863d3ee2dcf75f6ded3900296910`  
		Last Modified: Thu, 24 Sep 2026 19:37:48 GMT  
		Size: 2.5 KB (2549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:83bbf31f5c45aa43c0833f1732165e4a53f64b94f77ea81be112fdae63d29998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 KB (62129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4119c1cd5df437e6bb34d0d853a1ac9653a6c072f3f27227cf08f95509d7339b`

```dockerfile
```

-	Layers:
	-	`sha256:2e04e1a94326f212204fadb6058e081e642b57a2cca0e900ddc79f6c904eeb9d`  
		Last Modified: Thu, 24 Sep 2026 19:37:46 GMT  
		Size: 62.1 KB (62129 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:678f9e03a3fa8756e68d2fb5cac2d02e63023c9a97c2198ceda8647cf5e84700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.7 MB (509686834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be39da3f7f37d83492d551e0d3f1de431cf9435d5e98e332198a1b1b3c7c7fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:42:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:43:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:43:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:43:06 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:43:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:46:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:46:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:46:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:46:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_VERSION=8.5.10
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Sat, 19 Sep 2026 00:46:54 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Sat, 19 Sep 2026 01:05:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 01:05:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:09:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 01:09:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:09:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 01:09:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 01:09:59 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 01:10:00 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 01:10:00 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 01:10:00 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 01:10:00 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 11:03:48 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Sat, 19 Sep 2026 11:10:19 GMT
ENV PHP_MEMORY_LIMIT=512M
# Sat, 19 Sep 2026 11:10:19 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Sat, 19 Sep 2026 11:10:19 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Sat, 19 Sep 2026 11:10:19 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 11:10:19 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Sat, 19 Sep 2026 11:10:19 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 11:10:20 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Sat, 19 Sep 2026 11:10:20 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Sat, 19 Sep 2026 11:10:20 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Sat, 19 Sep 2026 11:10:20 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Sat, 19 Sep 2026 11:11:34 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 11:11:35 GMT
COPY *.sh upgrade.exclude / # buildkit
# Sat, 19 Sep 2026 11:11:35 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Sat, 19 Sep 2026 11:11:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 11:11:35 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:7cae0376943bf0e6eee16df358f9d9b19c3ecbf1126c81658c6b41549e7b6cb6`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 33.6 MB (33641235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39813ba793924296ebb8a62bded13028ed4037275a1d470f32703e0ccc4e7f4b`  
		Last Modified: Sat, 19 Sep 2026 00:47:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3c40dc91528490cb81f134f22f60fa756eb5d16a8a925f10c3efb88701bc7b`  
		Last Modified: Sat, 19 Sep 2026 00:47:53 GMT  
		Size: 109.6 MB (109611682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94404758e516a5835de93374f7b058e4f7c2d2e9bcacfc223e317bd6d1149f8`  
		Last Modified: Sat, 19 Sep 2026 00:47:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c37a53d0015d74c7d9d5a1942065b06101aa8d52cfa0fd8d382390a56310f016`  
		Last Modified: Sat, 19 Sep 2026 00:51:49 GMT  
		Size: 4.9 MB (4897066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65218b57ac04ac3c508328839fe82553a76fd174f4df57da2673f69a1df79d2e`  
		Last Modified: Sat, 19 Sep 2026 00:51:49 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d6f87c5441ebb5347e44c7f073ff31b914b3f93e4e68c733858061aae1c965`  
		Last Modified: Sat, 19 Sep 2026 00:51:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f59eb3516de1754805a08fb136635786134e7655c011b5b4de3a3e1a984c17b`  
		Last Modified: Sat, 19 Sep 2026 01:10:23 GMT  
		Size: 14.6 MB (14621977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660a1cfbf150e86dcd94d9d18439fce8a2a769ded4c47d8392b4b427ded5b612`  
		Last Modified: Sat, 19 Sep 2026 01:10:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d454c617bb57e3dfd1da6e44ea1f70ba181bb8d16758e1c58d0810317ab1d9cd`  
		Last Modified: Sat, 19 Sep 2026 01:10:23 GMT  
		Size: 15.2 MB (15175418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ace6ca6ff9a01cdb053ff03e6a27a3e21340f221b8a31eeee370a9e1c05ba1e`  
		Last Modified: Sat, 19 Sep 2026 01:10:23 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e6f0855d1cb06c0477239dd52ab614f0a76b07f53259d2e3c71346af0acb5e9`  
		Last Modified: Sat, 19 Sep 2026 01:10:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa998e71aab6abd68dbe73fe6a79b9cadd4e69b853b1a973edb1179737f89fd`  
		Last Modified: Sat, 19 Sep 2026 01:10:24 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ceeefc41fd1b3959fb2849ca8db73eb921ae4d114ebe9af1b48c5a216b2cba`  
		Last Modified: Sat, 19 Sep 2026 11:12:25 GMT  
		Size: 22.1 MB (22050495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5920aba8815c7f40c545d0633881caf34404637f8b9065448297c41b8833ae6f`  
		Last Modified: Sat, 19 Sep 2026 11:12:26 GMT  
		Size: 38.6 MB (38609484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d724e93c4a17de214a46fc312c3688266ecee3c1a8e67888feaf4ad0707d6a53`  
		Last Modified: Sat, 19 Sep 2026 11:12:24 GMT  
		Size: 796.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f9382559fb8374ce45f1a7cdabc4afec305deefa80541db51af566cd944c9b`  
		Last Modified: Sat, 19 Sep 2026 11:12:24 GMT  
		Size: 579.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239716d3d94c6ad63a2ce4335d82fe8ec52b8e3448debe05d7485c3b3f4aa5b6`  
		Last Modified: Sat, 19 Sep 2026 11:12:25 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7316c6cf317b3d3a2be1c5d82fa7a04a308d69e8410e473d6a5fa4f86d6dcb18`  
		Last Modified: Sat, 19 Sep 2026 11:12:31 GMT  
		Size: 271.1 MB (271065518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d7761615ef59884a5dcc1aa8bc99c984a23784818fab9ef86b6ee991706475`  
		Last Modified: Sat, 19 Sep 2026 11:12:27 GMT  
		Size: 4.1 KB (4137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c329a7372acf44409204a97c07198e435d7c7f5a448c6b02116978bddc6e33a9`  
		Last Modified: Sat, 19 Sep 2026 11:12:27 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:d37277a98fe3ad44cf8f5f58c07aaf854ec3c9b57240997ca88ba0e374075376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 KB (62291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648d2928f5df1f82145efa0effe29b4077366bd3a2b16438977151cb683c549d`

```dockerfile
```

-	Layers:
	-	`sha256:ea2b67bc4e768093473031bd944bacb9c0354dcd76c28c529f0e0656f1c1c53c`  
		Last Modified: Sat, 19 Sep 2026 11:12:24 GMT  
		Size: 62.3 KB (62291 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; riscv64

```console
$ docker pull nextcloud@sha256:d9693a3d6798525b676deab3dcaca92e1fde171e1af4bf286f991e04b21bec3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.9 MB (588921507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd5135021dc07514d43a8c50470902a24971c6a297d92b0e64528cbee9c3c9e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 09:01:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 10:02:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 10:02:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 10:02:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 10:02:27 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_VERSION=8.5.10
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Tue, 01 Sep 2026 07:36:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 01 Sep 2026 07:36:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 08:34:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 01 Sep 2026 08:34:48 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 08:34:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 01 Sep 2026 08:34:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 01 Sep 2026 08:34:48 GMT
STOPSIGNAL SIGWINCH
# Tue, 01 Sep 2026 08:34:48 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 08:34:49 GMT
WORKDIR /var/www/html
# Tue, 01 Sep 2026 08:34:49 GMT
EXPOSE map[80/tcp:{}]
# Tue, 01 Sep 2026 08:34:49 GMT
CMD ["apache2-foreground"]
# Wed, 02 Sep 2026 15:32:55 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Wed, 02 Sep 2026 16:07:21 GMT
ENV PHP_MEMORY_LIMIT=512M
# Wed, 02 Sep 2026 16:07:21 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Wed, 02 Sep 2026 16:07:21 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Wed, 02 Sep 2026 16:07:21 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Wed, 02 Sep 2026 16:07:22 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Wed, 02 Sep 2026 16:07:22 GMT
VOLUME [/var/www/html]
# Wed, 02 Sep 2026 16:07:23 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Wed, 02 Sep 2026 16:07:23 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Wed, 02 Sep 2026 16:07:23 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Wed, 02 Sep 2026 16:07:23 GMT
ENV NEXTCLOUD_VERSION=34.0.3
# Wed, 02 Sep 2026 16:12:13 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.3/nextcloud-34.0.3.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.3/nextcloud-34.0.3.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Wed, 02 Sep 2026 16:12:15 GMT
COPY *.sh upgrade.exclude / # buildkit
# Wed, 02 Sep 2026 16:12:15 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Wed, 02 Sep 2026 16:12:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 02 Sep 2026 16:12:15 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:6c5a9194fcb1259f9ca52ca755bc0b94019ef1c136445faf6bfa714ba3174d9f`  
		Last Modified: Tue, 25 Aug 2026 10:58:30 GMT  
		Size: 4.0 MB (4038964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9412a00bd6ea5f1d96d4cbf882ee061353d2819ec06c32fccdb423d81f21ab6c`  
		Last Modified: Tue, 25 Aug 2026 10:58:29 GMT  
		Size: 439.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cfdcc7c18452e521252f2720b790a390be42a44250c01c56a49af9794fd1fc`  
		Last Modified: Tue, 25 Aug 2026 10:58:29 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0117c312a6f18e90f76dd932243bbd7c98577436db0c049e6638d9356889a4da`  
		Last Modified: Tue, 01 Sep 2026 08:38:05 GMT  
		Size: 14.6 MB (14637852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:766e1725ad2a075d96eee8aac73faaaacdacdd84e174c1edbea7862bd2ca0236`  
		Last Modified: Tue, 01 Sep 2026 08:38:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da4480314e3b3f7bcb2fac97e655cc51d4d494bd777b66449d2c8c52b9ff6aa`  
		Last Modified: Tue, 01 Sep 2026 08:38:06 GMT  
		Size: 17.1 MB (17141255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696678b784bc2f67641269096a9623c72aa997518687562910f8bc579c4844ab`  
		Last Modified: Tue, 01 Sep 2026 08:38:00 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2cc24360639d476f4f21d877e430d13c7678c53ddfb926412cf16d10e23b3c0`  
		Last Modified: Tue, 01 Sep 2026 08:38:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f8cec1eadffa396f10e2af5c03a55aba277443436e531b3b02408edf811b68`  
		Last Modified: Tue, 01 Sep 2026 08:38:02 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a004fbe3d39a46ec3de2acadbd1b7c35b65aa9d3e839200dcde17bf2c40e72`  
		Last Modified: Wed, 02 Sep 2026 16:19:38 GMT  
		Size: 19.5 MB (19461027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef9f20492d52a945a4fce2f7208b12d079f3d460b8db2787c2f62c2a669f712`  
		Last Modified: Wed, 02 Sep 2026 16:19:45 GMT  
		Size: 45.8 MB (45777325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5499bc1bcb63ea36864d1661fe2452db9f4de786451296b77c740905957e5d47`  
		Last Modified: Wed, 02 Sep 2026 16:19:30 GMT  
		Size: 798.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def9d36440b16efeb264a6db9b4c56d9faa9af4a1daa10e2b4ffcc224f9fef5d`  
		Last Modified: Wed, 02 Sep 2026 16:19:30 GMT  
		Size: 596.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc42890bb2afef9c784ceb0b06109a1e0d82bd35643b34c861d1ec5b178fe5f7`  
		Last Modified: Wed, 02 Sep 2026 16:19:32 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d720c683fe5664b89e47b2b298bae33d8521a63f557912c228114c0af0584a5a`  
		Last Modified: Wed, 02 Sep 2026 16:20:24 GMT  
		Size: 313.0 MB (312961892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3278e986e4303a1ed6e041021193e4a8d09e70e9e83a2edc7f3f679760dceec6`  
		Last Modified: Wed, 02 Sep 2026 16:19:35 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9991d675a35427668664602ebd722de0836f18c2338dd4f33f1035d77e30ad`  
		Last Modified: Wed, 02 Sep 2026 16:19:37 GMT  
		Size: 2.4 KB (2416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:e1895b5b49e3de8a3670f23e47d882e0f594c41859a983ebb82173c35c87653e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.9 KB (62911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93011acec0461cb09e4661bf2aedb312e4b1527d37640df14ae376e8e287c605`

```dockerfile
```

-	Layers:
	-	`sha256:bb1629bd990b916c628b7cffd88c72d79fe101e63f266a7f17104e4f40fda68d`  
		Last Modified: Wed, 02 Sep 2026 16:19:29 GMT  
		Size: 62.9 KB (62911 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:c30dab75ef3d00edb50cb1421e7d53dfb8a5d7aa3ea5dfb4836f2b2039524440
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.4 MB (484368207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0500022465fd143a07fd521082ce453c9bfdce3307987fe29035e0af8b893c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:17:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:17:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:17:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:17:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:17:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:37:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:37:12 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:37:13 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:37:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_VERSION=8.5.11
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Sat, 19 Sep 2026 00:37:13 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:09:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 24 Sep 2026 19:09:36 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:13:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:13:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:13:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:13:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:13:30 GMT
STOPSIGNAL SIGWINCH
# Thu, 24 Sep 2026 19:13:30 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:13:30 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:13:30 GMT
EXPOSE map[80/tcp:{}]
# Thu, 24 Sep 2026 19:13:30 GMT
CMD ["apache2-foreground"]
# Thu, 24 Sep 2026 19:55:54 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 24 Sep 2026 19:58:04 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 24 Sep 2026 19:58:04 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 24 Sep 2026 19:58:04 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 24 Sep 2026 19:58:04 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:58:04 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 24 Sep 2026 19:58:04 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 19:58:05 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 24 Sep 2026 19:58:05 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 24 Sep 2026 19:58:05 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 24 Sep 2026 19:58:05 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Thu, 24 Sep 2026 19:58:37 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 24 Sep 2026 19:58:37 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 24 Sep 2026 19:58:37 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 24 Sep 2026 19:58:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 24 Sep 2026 19:58:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:555a5a78bd257b9d7b09de43229384b94c86d3f5dbe0cba427af91f324e5a527`  
		Last Modified: Sat, 19 Sep 2026 00:03:06 GMT  
		Size: 29.9 MB (29899149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62c0e61c94591c110f2e62332ff3f2cdadfe5499c360b4cf071c1ddbcd39cd9b`  
		Last Modified: Sat, 19 Sep 2026 00:19:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7161f69fce6836e8e60ba148679d3d27df97711b7f3276ec70bcbad124ab0981`  
		Last Modified: Sat, 19 Sep 2026 00:19:51 GMT  
		Size: 92.6 MB (92574270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0e8f0efb80a2928aaaaa19f9bc22c9f004fd9e4493bb4361e7ec1db1597ca3`  
		Last Modified: Sat, 19 Sep 2026 00:19:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f9a41fca30b5b548987e8d6ea11235385a4e3ad5e1c5d5b392ce66fddd4a1c`  
		Last Modified: Sat, 19 Sep 2026 00:39:50 GMT  
		Size: 4.3 MB (4338418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb9bc67db22602ff266a5a2240367fdbf7b94dbae4005f6923348875661b685`  
		Last Modified: Sat, 19 Sep 2026 00:39:50 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b32d6a0549be326d1e79a4c235f753a7cde20927f7ea47500f0191d3fe978c66`  
		Last Modified: Sat, 19 Sep 2026 00:39:50 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb981482199c3555e83f74307858910b65ecc36153e7b639577d147a598f871`  
		Last Modified: Thu, 24 Sep 2026 19:13:46 GMT  
		Size: 14.7 MB (14651075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418ef6d00d173059a0996c5c6461060c2667daef61da55f2f2146be12fe17ca3`  
		Last Modified: Thu, 24 Sep 2026 19:13:46 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f850564a9dc367f1005fc585ac6fd3375726c60e54bae10b909b9a5e5aedd3be`  
		Last Modified: Thu, 24 Sep 2026 19:13:46 GMT  
		Size: 14.5 MB (14462850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f989e743778dada10094f71396db74d8f6a26ef76485d32fceb25ab59062b0f0`  
		Last Modified: Thu, 24 Sep 2026 19:13:46 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd18b8d6fc02f2cc625a9dbe5eb67618f88e6254728edab198f94e8ed0f33af2`  
		Last Modified: Thu, 24 Sep 2026 19:13:47 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08420973cf12bc9c8b1f42370d9779b614195c2ce040f8a393f7180b376dd78d`  
		Last Modified: Thu, 24 Sep 2026 19:13:47 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5306e0d1951dc75c9c8c404d0b2f772b6c9e042b5362eb24bc7747f7ca205650`  
		Last Modified: Thu, 24 Sep 2026 19:59:13 GMT  
		Size: 20.3 MB (20288820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde9156a6aa34793f51275e56634c2c96ef181a1c088764c05f985b34cf9d2fd`  
		Last Modified: Thu, 24 Sep 2026 19:59:13 GMT  
		Size: 37.1 MB (37077090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0063611943ec1e0bbab4ebb03756a61d2165bbecc54843bf5f8dfa68f63148fd`  
		Last Modified: Thu, 24 Sep 2026 19:59:12 GMT  
		Size: 789.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cc84c1541b9fa2e24ec7cf8a95dbe16675636240955671a9ce9e4dd720e95b`  
		Last Modified: Thu, 24 Sep 2026 19:59:12 GMT  
		Size: 577.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2edcba96e326300f3d59e50da471d0d0e18a998dfa795831844685cf1963406c`  
		Last Modified: Thu, 24 Sep 2026 19:59:13 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba6a6a4b38a3fb08b3431533f29b29ab46df7e46851bdd3436ac3355c311bd5d`  
		Last Modified: Thu, 24 Sep 2026 19:59:19 GMT  
		Size: 271.1 MB (271062598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6556e78b69941c08d53a2042adce61b9df174779ff16fead5c0c1d6bc8d1fbad`  
		Last Modified: Thu, 24 Sep 2026 19:59:14 GMT  
		Size: 4.1 KB (4133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1beed35df820a4566664e5c14ff5dfb2b9ba2b580d5876482bb0653a185c91`  
		Last Modified: Thu, 24 Sep 2026 19:59:14 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:b4f1318d73882f6f28540606abba718e88fad123f88ab7e8755ac994fa0b4dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 KB (62192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02ef79eb0075ab52cd00823cbd446e85dd39541ccaad1ad0de4b4d46505caf49`

```dockerfile
```

-	Layers:
	-	`sha256:c6d9eb1218878fe8bc2d6b3c2cb12d0463438541b41cea1e0eedafa52c52dee8`  
		Last Modified: Thu, 24 Sep 2026 19:59:12 GMT  
		Size: 62.2 KB (62192 bytes)  
		MIME: application/vnd.in-toto+json
