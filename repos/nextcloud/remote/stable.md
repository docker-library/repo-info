## `nextcloud:stable`

```console
$ docker pull nextcloud@sha256:186694f07bb1d6449efbebbd3efb1ec09b476732e77eb80618afb96fa35c5da4
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

### `nextcloud:stable` - linux; amd64

```console
$ docker pull nextcloud@sha256:39289781f568f61a710f9ebbf734750d3f7eab7635d7cc962d893fb983d39cdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **513.0 MB (512971133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f57052eac81fa857298ec9848efdd8ea648468cf0eee098ec9c069190eb44264`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:47:38 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:47:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:47:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:47:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:47:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:47:53 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:47:53 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:47:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:47:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:47:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:47:58 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:48:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:48:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:50:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:50:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:50:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:50:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:50:46 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:50:46 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:50:46 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:50:46 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:50:46 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 16:37:08 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 23 Oct 2026 16:39:31 GMT
ENV PHP_MEMORY_LIMIT=512M
# Fri, 23 Oct 2026 16:39:31 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Fri, 23 Oct 2026 16:39:31 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Fri, 23 Oct 2026 16:39:31 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:39:32 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Fri, 23 Oct 2026 16:39:32 GMT
VOLUME [/var/www/html]
# Fri, 23 Oct 2026 16:39:32 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 23 Oct 2026 16:39:32 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 23 Oct 2026 16:39:32 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 23 Oct 2026 16:39:32 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Fri, 23 Oct 2026 16:40:11 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:40:11 GMT
COPY *.sh upgrade.exclude / # buildkit
# Fri, 23 Oct 2026 16:40:11 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Fri, 23 Oct 2026 16:40:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Oct 2026 16:40:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf71fdfb1d8feadfc526af4f5cb8cd786cf61641998c655be765898c5cb0bcb`  
		Last Modified: Wed, 21 Oct 2026 15:51:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca42c212e9db0e4290f628c40b94d2a3e9f99c6929b96dd9edd22cb275e861f`  
		Last Modified: Wed, 21 Oct 2026 15:51:10 GMT  
		Size: 117.8 MB (117839110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a291fd40abbc0a31f15e308f646ed70a5e2e63d2d660c6a468e6c58ee3588041`  
		Last Modified: Wed, 21 Oct 2026 15:51:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044474954690c55f42fea4c6f632ff53ef2026919e3b6810682b40608aac95e1`  
		Last Modified: Wed, 21 Oct 2026 15:51:07 GMT  
		Size: 4.2 MB (4244073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14967873d59490ce5a203f2c2fa3816a7d51a395b70169f7f94c929c48d3a8c`  
		Last Modified: Wed, 21 Oct 2026 15:51:08 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13e48d6c391d1c08bf4c4e1a3921c907ce6d5870b99aacaa4ea3afdc69a736a`  
		Last Modified: Wed, 21 Oct 2026 15:51:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72d6061c16fc8c962946533ac5d62db943b4841a139d0d779bccbce93d7bf5a2`  
		Last Modified: Wed, 21 Oct 2026 15:51:09 GMT  
		Size: 14.7 MB (14721569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f366cc3ac7ae434feaeaa1502fd38081b6a515d21e0a5923ef30f883382f8dd6`  
		Last Modified: Wed, 21 Oct 2026 15:51:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51c1cb11791bb23b62551ac788fabc1665e0dc13891e71372009a7a1567ce62`  
		Last Modified: Wed, 21 Oct 2026 15:51:10 GMT  
		Size: 15.2 MB (15245786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5839c47b74dca6f017a964fb9359c3865b214a2bc6707c5415921f9770918e7`  
		Last Modified: Wed, 21 Oct 2026 15:51:10 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d69f79b844f5803d35c2e61140304a685527b564f8a5e8c62d5e6b0a7d4f1cbb`  
		Last Modified: Wed, 21 Oct 2026 15:51:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d891b3e17e1134ada9715c8c6aee023eaf1abde29db6937d4385f4c9449834`  
		Last Modified: Wed, 21 Oct 2026 15:51:11 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b116f67b7bca43ab1c3cbced3d246d5145d4c0ebc499a4d1261729aaf8d91c6d`  
		Last Modified: Fri, 23 Oct 2026 16:40:40 GMT  
		Size: 21.5 MB (21475390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16aec52468c536e188b6ae354ab07e806dbd21ea1df5736df923f9c93089934`  
		Last Modified: Fri, 23 Oct 2026 16:40:40 GMT  
		Size: 36.9 MB (36949452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dadbf617e2d4fb411fd1f014db949c4ce2576b171c19ec9221685a511fb493fa`  
		Last Modified: Fri, 23 Oct 2026 16:40:39 GMT  
		Size: 808.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba01e7f39f3da267c56cf06a960bea916f52f082c778951503a47d73922bb577`  
		Last Modified: Fri, 23 Oct 2026 16:40:39 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659efbe795ec8f0e6cb3fb573b87bb6097ada375e9b4d0d391ee33fec130c1f6`  
		Last Modified: Fri, 23 Oct 2026 16:40:40 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914fb1413f139c34f6424522998955e343c9eec9600ea7263451c21fef2b5bf6`  
		Last Modified: Fri, 23 Oct 2026 16:40:46 GMT  
		Size: 272.6 MB (272638167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7a275032da30a585454d469fff99e479b113b619691b9d7f8db51c54d328fa`  
		Last Modified: Fri, 23 Oct 2026 16:40:42 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95012dfe89e5783bcab6f92f770370626fe2c84561fa89ce8ad705edb194f87`  
		Last Modified: Fri, 23 Oct 2026 16:40:42 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable` - unknown; unknown

```console
$ docker pull nextcloud@sha256:61f2933f6d53aefbe4033b1c20c35cef3ad7139e20043567c2c2240f9741b675
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 KB (62360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69b8871b35103966138a63eeb8efdb74f259b54087f3cef93be7e7a5db38adc9`

```dockerfile
```

-	Layers:
	-	`sha256:9ae057c4bd17f6434c66893345e44d48c2721805fe11a64a2fe90dae8327682b`  
		Last Modified: Fri, 23 Oct 2026 16:40:39 GMT  
		Size: 62.4 KB (62360 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:2d58b4d603bf15569450b4707a48c08082a3d88004af56d93ca844c3a7a54d07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **483.3 MB (483274407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73269f8649852d9aac480abab6f96e2ab7163092c29db767501998585c7649b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:35:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:36:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:36:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:36:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:36:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:36:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:40:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:40:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:40:03 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:40:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:40:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:40:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:40:03 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:40:03 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:40:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:40:03 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:40:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:40:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:43:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:43:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:43:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:43:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:43:40 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:43:40 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:43:40 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:43:40 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:43:40 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 16:39:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 23 Oct 2026 16:42:44 GMT
ENV PHP_MEMORY_LIMIT=512M
# Fri, 23 Oct 2026 16:42:44 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Fri, 23 Oct 2026 16:42:44 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Fri, 23 Oct 2026 16:42:44 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:42:44 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Fri, 23 Oct 2026 16:42:44 GMT
VOLUME [/var/www/html]
# Fri, 23 Oct 2026 16:42:45 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 23 Oct 2026 16:42:45 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 23 Oct 2026 16:42:45 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 23 Oct 2026 16:42:45 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Fri, 23 Oct 2026 16:43:34 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:43:34 GMT
COPY *.sh upgrade.exclude / # buildkit
# Fri, 23 Oct 2026 16:43:34 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Fri, 23 Oct 2026 16:43:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Oct 2026 16:43:34 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ad6f6891c000008b22dd4db41d72c313bb813f72512b7f3c69916feec95e030d`  
		Last Modified: Tue, 20 Oct 2026 23:30:41 GMT  
		Size: 28.0 MB (28007794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16bfd01e6b5005dbd02ce8f4683303500c33d1ce0292a1c1e96e3b1841dcc5e6`  
		Last Modified: Wed, 21 Oct 2026 15:39:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78a86351c7b210397c7b7b4f190a26bd3558798d62e9ea78239c25aa1073cb2`  
		Last Modified: Wed, 21 Oct 2026 15:39:46 GMT  
		Size: 94.9 MB (94886012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495c69eb4b2eb795a2f6889357e9e2878af7784d2a428c8df000de27e5322c22`  
		Last Modified: Wed, 21 Oct 2026 15:39:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e733169f46fd688443fb05615b605249cd967b081fde69afa50c3c27290f5f9`  
		Last Modified: Wed, 21 Oct 2026 15:43:51 GMT  
		Size: 4.1 MB (4099985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148cfae16e2d5942262c9d45ebb44bd32e0d1927d453e31f4ccf83657efb6434`  
		Last Modified: Wed, 21 Oct 2026 15:43:51 GMT  
		Size: 445.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8524f3c8b4e5723499b1c433959a883dd04e807a39921bf28757d7f054005b71`  
		Last Modified: Wed, 21 Oct 2026 15:43:51 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ba87fd3eff17573cfced263d847dc474e73baccc6a1951c54c5b57609fde820`  
		Last Modified: Wed, 21 Oct 2026 15:43:51 GMT  
		Size: 14.7 MB (14718952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0955bf2eb6e2ee12de92d66e76bcae2bbf08804497a027923057db2624cea487`  
		Last Modified: Wed, 21 Oct 2026 15:43:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef79a3254000e15fe947938dd99293e0789fb7478dd0901d4f71ae06982acab`  
		Last Modified: Wed, 21 Oct 2026 15:43:52 GMT  
		Size: 13.3 MB (13308058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3eceecbbe650f8ffcd1d7a4eb84d27ec4ca303c07440b44c9d3eac8113f685b`  
		Last Modified: Wed, 21 Oct 2026 15:43:52 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aba8600f6d56f793cca423396e01f1e50a4a667fc59cf09cdf36f20070690c9`  
		Last Modified: Wed, 21 Oct 2026 15:43:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5bcebb9b53ba95fd77461f0ac126745a2d5ef0723842604cf9df3ea6812244a`  
		Last Modified: Wed, 21 Oct 2026 15:43:53 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb821ce240da70f55451dc76e0039fc154d396fea1cba3979013514bda30f350`  
		Last Modified: Fri, 23 Oct 2026 16:44:06 GMT  
		Size: 20.5 MB (20523595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21df61bb1a6924f524abad32e3fb901c0c7f42c8bd69e1fd48a7602498d33727`  
		Last Modified: Fri, 23 Oct 2026 16:44:06 GMT  
		Size: 35.1 MB (35080362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bc75292353e1787de0e432e7805db9c87743355ab6b46c32c9d9eeeae4b6749`  
		Last Modified: Fri, 23 Oct 2026 16:44:05 GMT  
		Size: 806.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7a2fc5fe950a413247c0c65f0f8e731fbc39373602823c3751aafd13ced9814`  
		Last Modified: Fri, 23 Oct 2026 16:44:05 GMT  
		Size: 574.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199d819b3278b7fcbb6484260c601f1ec274403cb222ed5282fa615c57cdeab0`  
		Last Modified: Fri, 23 Oct 2026 16:44:06 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1338eda9a375e9d86dae9aa972aa8bb4a0dca3012b8fd5478d395a58d358468`  
		Last Modified: Fri, 23 Oct 2026 16:44:15 GMT  
		Size: 272.6 MB (272635624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84e90b06427c2167526c0ab6a502095ebb1e5081fa080b96cb6e614df65e384a`  
		Last Modified: Fri, 23 Oct 2026 16:44:08 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e66fb9090dab6ef75822440775fb70326e888027a3bf27b9b5e736a0ce75272`  
		Last Modified: Fri, 23 Oct 2026 16:44:08 GMT  
		Size: 2.6 KB (2589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable` - unknown; unknown

```console
$ docker pull nextcloud@sha256:908f0a80b12704a6dfaed706815efdc2a93401cfd8e4769088e8703500326b9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 KB (62545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98df109c7688b022b3973006512b1914686a4e37c0c6135ab748683e6fba7cea`

```dockerfile
```

-	Layers:
	-	`sha256:73a02d18b1d36beb3dcedaf633c54b70b38be5d654f36c2e8b56670f2323c8db`  
		Last Modified: Fri, 23 Oct 2026 16:44:05 GMT  
		Size: 62.5 KB (62545 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:1e66fa11655849be6f311e3318e018be20055ad7219cd9d01efd70c76546ebe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.4 MB (469405391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab383af10e883ccb921f1472fc3e1996d5d5183ed0eecf1cefdfbb83d676a2b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:51:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:52:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:52:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:52:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:52:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:52:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:52:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:52:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:52:14 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:52:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:52:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:52:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:52:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:52:14 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:52:14 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:52:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:52:14 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:52:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:52:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:55:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:55:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:55:21 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:55:21 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:21 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:55:21 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:55:21 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 16:39:11 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 23 Oct 2026 16:42:20 GMT
ENV PHP_MEMORY_LIMIT=512M
# Fri, 23 Oct 2026 16:42:20 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Fri, 23 Oct 2026 16:42:20 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Fri, 23 Oct 2026 16:42:20 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:42:20 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Fri, 23 Oct 2026 16:42:20 GMT
VOLUME [/var/www/html]
# Fri, 23 Oct 2026 16:42:20 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 23 Oct 2026 16:42:20 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 23 Oct 2026 16:42:21 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 23 Oct 2026 16:42:21 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Fri, 23 Oct 2026 16:43:08 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:43:08 GMT
COPY *.sh upgrade.exclude / # buildkit
# Fri, 23 Oct 2026 16:43:08 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Fri, 23 Oct 2026 16:43:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Oct 2026 16:43:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f8eb073e557b2fb506b6faa9eae3677b1d49ea8721e51992a31cf5c5c4dd75da`  
		Last Modified: Tue, 20 Oct 2026 23:30:46 GMT  
		Size: 26.3 MB (26258396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c05f9b8b3c2ab2271ed7a7304fc739d1b52d8faeb614c2158c1f6bf597f614da`  
		Last Modified: Wed, 21 Oct 2026 15:55:33 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5b9d97d2e3d4602f4884b3e6606e79f4b44f8712d83a471aa708874b0da595`  
		Last Modified: Wed, 21 Oct 2026 15:55:41 GMT  
		Size: 86.3 MB (86258363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53fe2d94d55730b8b6d7beb7cea87e5bdc7849843095848bdf013a87e2081194`  
		Last Modified: Wed, 21 Oct 2026 15:55:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b83ee99f533e1045eafb603bb93e1a077b98638471e443dfa1d6783acb740b4`  
		Last Modified: Wed, 21 Oct 2026 15:55:39 GMT  
		Size: 3.8 MB (3768177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db4d95b33ef8555c66708dcac84966eeed410fd31c64e33fdd47a998e5f40a7`  
		Last Modified: Wed, 21 Oct 2026 15:55:39 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86cd7d1a7ae38cf6ebc6652cc1591c70c0940f3a7efb956e540378d179c917e6`  
		Last Modified: Wed, 21 Oct 2026 15:55:40 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b372ece77c48320cc11afc8d0b976dcd998e5d90523079b5155a8436c3bef52`  
		Last Modified: Wed, 21 Oct 2026 15:55:40 GMT  
		Size: 14.7 MB (14719025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a986c2735f5c996961c56efdfe706677c74fc9abe3fa4f599d1bc632a19be337`  
		Last Modified: Wed, 21 Oct 2026 15:55:40 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc60fd67ccf36f68ff091032c11f459dc012cd3c23ad2f44651855ad06fe5706`  
		Last Modified: Wed, 21 Oct 2026 15:55:41 GMT  
		Size: 12.7 MB (12675106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fb427eb46ac81c048d3c076406e4b94beed82b44dd0bf2f5ee00fd95f4a5b5`  
		Last Modified: Wed, 21 Oct 2026 15:55:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74cea9e0d3afca5da92de6d589e1799bc0720f8c2a8b8b6acdaa1977e4ca6a8`  
		Last Modified: Wed, 21 Oct 2026 15:55:42 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc897a548e5600954d45369f838806e08727320fd99f8f0ce2843f87b5a3b90`  
		Last Modified: Wed, 21 Oct 2026 15:55:42 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f12d7792045a6973714552d290848b3d376114e18e8c039aa1d4fcaae6a5e9`  
		Last Modified: Fri, 23 Oct 2026 16:43:39 GMT  
		Size: 18.4 MB (18413464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ead5d8de66283ff61043e2247d130d79b347de86599b3adeb4a59773216121f1`  
		Last Modified: Fri, 23 Oct 2026 16:43:39 GMT  
		Size: 34.7 MB (34663221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35258105e239db064769470012a5e1fbc5d2271045a0ffd98764dd3cd1af5d82`  
		Last Modified: Fri, 23 Oct 2026 16:43:38 GMT  
		Size: 805.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa74376ab90bf99f976fb558159d147203d5bcc2543cbcb4ce913c2614699059`  
		Last Modified: Fri, 23 Oct 2026 16:43:38 GMT  
		Size: 574.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7fc350d495d3c1a003057c071a327289d0f225080e97d995166e450edb9ed7b`  
		Last Modified: Fri, 23 Oct 2026 16:43:39 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788122882382551780ae9aea5e6880b5ffb3c0b7aeb9933d9b20da2a0469d332`  
		Last Modified: Fri, 23 Oct 2026 16:43:46 GMT  
		Size: 272.6 MB (272635630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e68d75df964c7adbea9ffa872d1e639d36dfc58161454af156fe2a359742c08`  
		Last Modified: Fri, 23 Oct 2026 16:43:40 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09a36b70bc0fc72fe4b91996530af3b08292deb25fcefd5d814a31edc90568a`  
		Last Modified: Fri, 23 Oct 2026 16:43:41 GMT  
		Size: 2.6 KB (2591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable` - unknown; unknown

```console
$ docker pull nextcloud@sha256:892c9155018b31d4da3048a5eb3b9967c95a0e5dd4386321964ddbc1c09904d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 KB (62545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85dd43aaafb3b00a84f2f4c8e8fe945cfd858c15f8d9d1d0030d894fb8a4c47d`

```dockerfile
```

-	Layers:
	-	`sha256:e6a9c9b32a8d37fb93c30b95656421451569fc9281e7cb2ba7ed085eb0eb9325`  
		Last Modified: Fri, 23 Oct 2026 16:43:38 GMT  
		Size: 62.5 KB (62545 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:1edf628cdc0c8ec6ab081d5a65336c73a0eafe787827642c39a6c1e574caf503
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.9 MB (503879652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b08b8a7067cf252c6f772b4476a3695f70b5562c38c96c387bc758291117c1a0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:52:06 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:52:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:52:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:52:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:52:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:52:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:52:23 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:52:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:52:28 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:52:28 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:52:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:52:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:52:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:52:28 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:52:28 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:52:28 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:52:28 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:52:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:52:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:55:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:55:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:55:55 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:55:55 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:55:55 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:55:55 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:55:55 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 16:36:49 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 23 Oct 2026 16:39:44 GMT
ENV PHP_MEMORY_LIMIT=512M
# Fri, 23 Oct 2026 16:39:44 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Fri, 23 Oct 2026 16:39:44 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Fri, 23 Oct 2026 16:39:44 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:39:44 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Fri, 23 Oct 2026 16:39:44 GMT
VOLUME [/var/www/html]
# Fri, 23 Oct 2026 16:39:44 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 23 Oct 2026 16:39:44 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 23 Oct 2026 16:39:44 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 23 Oct 2026 16:39:44 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Fri, 23 Oct 2026 16:40:21 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:40:21 GMT
COPY *.sh upgrade.exclude / # buildkit
# Fri, 23 Oct 2026 16:40:21 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Fri, 23 Oct 2026 16:40:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Oct 2026 16:40:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d36af9812aec1c41f42501ca9a5a90c487fb9d65ee4f2cc6c71358e9a80e385`  
		Last Modified: Wed, 21 Oct 2026 15:56:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffd65d47430560577038dfe3698ea3f3a7aedd7d1ee99c34623a630e2d55db5`  
		Last Modified: Wed, 21 Oct 2026 15:56:20 GMT  
		Size: 110.2 MB (110178992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1cd616aa98a1716f24a855269ccc58db36129b2002d1ad4d552f9ef10cef21`  
		Last Modified: Wed, 21 Oct 2026 15:56:17 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baae18ba40b4d2a246f49f8657ed1cca7b746ba36d589ec81f4f85b9da31901c`  
		Last Modified: Wed, 21 Oct 2026 15:56:17 GMT  
		Size: 4.3 MB (4321243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d67a0c6e68589de5cac38805cb6fbda8535a3b10bb22a45cde285a134b977c0`  
		Last Modified: Wed, 21 Oct 2026 15:56:18 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:692b8d4fbe4f6592fac85eb81ed8b0c2e2b46b9e91f19a890c2fc6ae18539778`  
		Last Modified: Wed, 21 Oct 2026 15:56:18 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881c58ae68dc2a0c14229af45fc52b8a176d2da125c42f8d5415d0ad8eaef7cb`  
		Last Modified: Wed, 21 Oct 2026 15:56:19 GMT  
		Size: 14.7 MB (14721165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d011b9008ebbe0539d503244f3d79611f96391e4daf5059e66fe55657174968`  
		Last Modified: Wed, 21 Oct 2026 15:56:19 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6106d4ca13c45e4e43fdebf877cf6d039dfccd409b1440b25fb333560ca280a8`  
		Last Modified: Wed, 21 Oct 2026 15:56:20 GMT  
		Size: 14.8 MB (14811429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1124c4eea479a97573ce78a4e1415eb151ddd2fb31969018c362c132f5f409f`  
		Last Modified: Wed, 21 Oct 2026 15:56:20 GMT  
		Size: 2.5 KB (2466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e35b6badfb0f3f8c66fdca01c762c1cf33ceda7ef1d4744f30751cccbbd6bf6`  
		Last Modified: Wed, 21 Oct 2026 15:56:21 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b60b75b3161960ae99285cf789ece23f1ff8bfc1cddd124678bb11dde1cf88`  
		Last Modified: Wed, 21 Oct 2026 15:56:21 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8a1dc897746e39d1c4d2a3cc6cfe4b0ba31c53f5bd53b3848d65c2bfe8ccf2`  
		Last Modified: Fri, 23 Oct 2026 16:40:52 GMT  
		Size: 20.2 MB (20157328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef432f2bbee3150bc12725b738954780159764d5f18ae779f1794768cdf040f8`  
		Last Modified: Fri, 23 Oct 2026 16:40:53 GMT  
		Size: 36.8 MB (36837642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c42f52b6f2fae4849a6781f00af083e7478d639cfd1869012656268509d68c8`  
		Last Modified: Fri, 23 Oct 2026 16:40:52 GMT  
		Size: 801.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691fcfa7cf70bc4248109de89f95eeca61844146125a224342e52baadd41ef05`  
		Last Modified: Fri, 23 Oct 2026 16:40:52 GMT  
		Size: 572.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82085e1c3c9c7ccb0546551fed05f6cf4cb91cd0ca050d1ae83a571ce6a67620`  
		Last Modified: Fri, 23 Oct 2026 16:40:53 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4f05a3092a3ae884d256ebb7190accf22f92b30ecc3fc79e895302ec27fc4f6`  
		Last Modified: Fri, 23 Oct 2026 16:40:58 GMT  
		Size: 272.6 MB (272637381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae025a7adf7f413edc0434c55a1ec2b940150c323da7abfae48974d444d56af5`  
		Last Modified: Fri, 23 Oct 2026 16:40:54 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dfe5c5fdca99dd6d26c29227362f3d497e3168f3ec4de274773a0a7054716b`  
		Last Modified: Fri, 23 Oct 2026 16:40:54 GMT  
		Size: 2.6 KB (2586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable` - unknown; unknown

```console
$ docker pull nextcloud@sha256:b588fa36ed529f2e01ecde186f654c8aed9bb5dd4a853c94cad46612789adf7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.6 KB (62612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65f0d796ef343f9d44bb565efaa78cfbc7a1daf7b1b55466b1ac6f5b10013560`

```dockerfile
```

-	Layers:
	-	`sha256:1acf275bfee1932468aac3d5b4bd31201748bbebbb7ab11f0fc0a527b29b5d6a`  
		Last Modified: Fri, 23 Oct 2026 16:40:51 GMT  
		Size: 62.6 KB (62612 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable` - linux; 386

```console
$ docker pull nextcloud@sha256:8c5508dc1c4e821c354e78250b0c217f826c47b7a770fe016b18e0ce4820eed9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **514.1 MB (514145268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438d020d944fc997bb2782a0b51291a74362973af1a940527ae14b5d4a3593b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:53:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:53:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:53:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:53:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:53:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:53:58 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:53:58 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:54:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:54:05 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:54:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:54:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:54:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:54:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:54:05 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 15:54:05 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 15:54:05 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 15:54:05 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:54:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:54:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:57:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:57:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:57:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:57:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:57:16 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:57:16 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:57:16 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:57:16 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:57:16 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 16:35:13 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 23 Oct 2026 16:37:33 GMT
ENV PHP_MEMORY_LIMIT=512M
# Fri, 23 Oct 2026 16:37:33 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Fri, 23 Oct 2026 16:37:33 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Fri, 23 Oct 2026 16:37:33 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:37:33 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Fri, 23 Oct 2026 16:37:33 GMT
VOLUME [/var/www/html]
# Fri, 23 Oct 2026 16:37:33 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 23 Oct 2026 16:37:33 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 23 Oct 2026 16:37:33 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 23 Oct 2026 16:37:33 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Fri, 23 Oct 2026 16:38:11 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:38:11 GMT
COPY *.sh upgrade.exclude / # buildkit
# Fri, 23 Oct 2026 16:38:11 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Fri, 23 Oct 2026 16:38:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Oct 2026 16:38:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2aa3d9640d23163ab92e762435cb7ffa4a0c96c2824e6d0e56e4b82a7daa22`  
		Last Modified: Wed, 21 Oct 2026 15:57:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc6070548c427defb9535ee0c790924c4757b17c6a83e8df55ed9fb6af9dd47`  
		Last Modified: Wed, 21 Oct 2026 15:57:39 GMT  
		Size: 116.1 MB (116140788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603a4a5dd455baa7690165d9bc93d165f10ad62c215cfd018fe1be2b301cb14d`  
		Last Modified: Wed, 21 Oct 2026 15:57:36 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46b79b5f1ae6e4e313c9a1b74a522dc565e6503285f866171359cc1952e3ec3`  
		Last Modified: Wed, 21 Oct 2026 15:57:36 GMT  
		Size: 4.5 MB (4477014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90d0da099e531bc6c47660dcc1ac60e24f747eb761eb787e2925236dd4b01dc2`  
		Last Modified: Wed, 21 Oct 2026 15:57:37 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6df0edcdf7ac38094c5fcbe17affe87193be2fe2333c57bfe4f976f25f8d352`  
		Last Modified: Wed, 21 Oct 2026 15:57:37 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a40db2bc7b349f50a561222c18053dfb446cc9d4fd08a935bd7b53ab3a2a6b`  
		Last Modified: Wed, 21 Oct 2026 15:57:38 GMT  
		Size: 14.7 MB (14720542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2510ca29934ff139bf98eabd8eace2e4cb9295adceb902fb94b18231054c89e3`  
		Last Modified: Wed, 21 Oct 2026 15:57:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4c90ebe577bcb6c2bcb00558fd9e2719f3f8df437b1ee599db1713da5703aa`  
		Last Modified: Wed, 21 Oct 2026 15:57:39 GMT  
		Size: 15.7 MB (15685370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6732f4b859acb92d98d6be59410947468a824c3415e95aeeb79b2b51e3d59041`  
		Last Modified: Wed, 21 Oct 2026 15:57:40 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37e0ceb084d39c7191565d8be1e470740430168a5546aee173609b6cc46ded7a`  
		Last Modified: Wed, 21 Oct 2026 15:57:40 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be10b0531e6b72b57e721d85c5f6041173802f447586dab735db7d9b510a5fc`  
		Last Modified: Wed, 21 Oct 2026 15:57:40 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f027b186615cdbf84792b5b5d0fa95c520f5d0bcbec4cdb86692117ab20f4ad1`  
		Last Modified: Fri, 23 Oct 2026 16:38:38 GMT  
		Size: 21.8 MB (21759251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac26d2dcdde6be531aeb24442f84468c1b907acda80a13736e89192c248b588`  
		Last Modified: Fri, 23 Oct 2026 16:38:39 GMT  
		Size: 37.4 MB (37357701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4ef7bd483bd88edd51ddd9737675ec1fa64148f485e97931540a05e0dcf83c`  
		Last Modified: Fri, 23 Oct 2026 16:38:38 GMT  
		Size: 805.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12273052201419f4ed809e1eda92cef618710beea227035219fb77c698a78193`  
		Last Modified: Fri, 23 Oct 2026 16:38:38 GMT  
		Size: 571.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d77a8232b31ee3a7e85fe5cca014a77e2d8df24aa4fc2f6759c7550a4953ed6`  
		Last Modified: Fri, 23 Oct 2026 16:38:39 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96389f4ec8721ba6b253ae7d9099ec95275df8641b5789070a10649e713998d`  
		Last Modified: Fri, 23 Oct 2026 16:38:45 GMT  
		Size: 272.6 MB (272637057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcf68625705321d723af6370645c7f19fe756db7f98df4e58eb2b4ea7cc9bf7`  
		Last Modified: Fri, 23 Oct 2026 16:38:40 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f0b1448cdf0dd89839f383701ae11732f34189bd7533dd995147b4fa4913c3c`  
		Last Modified: Fri, 23 Oct 2026 16:38:40 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable` - unknown; unknown

```console
$ docker pull nextcloud@sha256:0ad558c7091a6f43d8dc4b4e7bd70dbb84825aaae9e0b49950ed496ff32bcf0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 KB (62289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2aaaf5ef0ab93ab5a241a4b1c1c6ed63f99c7f1ff20c319352e2fca5fcea1f5`

```dockerfile
```

-	Layers:
	-	`sha256:33d4a1cd630115a9f40930b09c59858446b8486d3b08cdd0cca3dcb7ddfe1a9d`  
		Last Modified: Fri, 23 Oct 2026 16:38:37 GMT  
		Size: 62.3 KB (62289 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:fd831e555203a4df3788554aa6d02a7efb58c8072a8537a0e3521d42699db099
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.0 MB (512002983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b624d3b49fbffd704466280d2b914e94d343189ad06b47e427aeae5e95f4c5c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 00:59:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 00:59:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:59:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 00:59:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 00:59:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 00:59:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 01:01:34 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 01:01:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 01:01:34 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 18:34:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 18:34:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 18:43:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 18:43:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 18:43:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 18:43:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 18:43:19 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 18:43:19 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 18:43:19 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 18:43:19 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 18:43:19 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 17:00:44 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 23 Oct 2026 17:07:18 GMT
ENV PHP_MEMORY_LIMIT=512M
# Fri, 23 Oct 2026 17:07:18 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Fri, 23 Oct 2026 17:07:18 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Fri, 23 Oct 2026 17:07:18 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 17:07:18 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Fri, 23 Oct 2026 17:07:18 GMT
VOLUME [/var/www/html]
# Fri, 23 Oct 2026 17:07:19 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 23 Oct 2026 17:07:19 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 23 Oct 2026 17:07:19 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 23 Oct 2026 17:07:19 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Fri, 23 Oct 2026 17:08:31 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 17:08:32 GMT
COPY *.sh upgrade.exclude / # buildkit
# Fri, 23 Oct 2026 17:08:33 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Fri, 23 Oct 2026 17:08:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Oct 2026 17:08:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ac69a2bed9fc2c58b635321133c8c65b8b0f5b2afca103320f7855ccac5bf2`  
		Last Modified: Wed, 21 Oct 2026 01:05:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe00f16e0b9e08d256f422cbc3e091c4e1895ea7b545982163c966a75597de5`  
		Last Modified: Wed, 21 Oct 2026 01:05:48 GMT  
		Size: 109.6 MB (109611929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0206a5d08b1e075f47847c4b3d841ccd9306081ae703f614bff8dfccc9d1c5`  
		Last Modified: Wed, 21 Oct 2026 01:05:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d6b6bb335be5fc3778a36ce4ad34c0c554b3c25f8282f9c63f55b4d587d689`  
		Last Modified: Wed, 21 Oct 2026 01:07:41 GMT  
		Size: 4.9 MB (4900902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5904080ff584a55fd38f4e1905dcfdf48ea839ce91eb2f65e86a9120bdb35509`  
		Last Modified: Wed, 21 Oct 2026 01:07:40 GMT  
		Size: 435.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881a05da0b36b6c7d034e66ca5dea44b32bf78d50a4bbf0bfc39e4cece1720a6`  
		Last Modified: Wed, 21 Oct 2026 01:07:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b898556795e59391ed06564013a1a205a6e66c099f3b06c17ad14b6c6ca967b9`  
		Last Modified: Wed, 21 Oct 2026 18:43:58 GMT  
		Size: 14.7 MB (14736701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d1c2370b19163bdbf8bb5e4c8a144fbdd1628d8e373e1f2015da8287cacdea`  
		Last Modified: Wed, 21 Oct 2026 18:43:57 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367eb0ac5e0d2167ac620c83f6505e0e5ebcbe91919a755921bbf44e11e2ac94`  
		Last Modified: Wed, 21 Oct 2026 18:43:58 GMT  
		Size: 15.2 MB (15243769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9703342ba85796e90866c5d3e7dac5223ab7de1f56daab380177036b780811b`  
		Last Modified: Wed, 21 Oct 2026 18:43:57 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde1a69cdc1968b2a27d8ee5b77c1ef7647ec52cc36e92ca2b9acc42d38cc42c`  
		Last Modified: Wed, 21 Oct 2026 18:43:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1623f84f71fdfff382269331e1c003e72fb7c5b9b4ed3e66950081dc5f926f22`  
		Last Modified: Wed, 21 Oct 2026 18:43:59 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd6742bf7e97720eaf8566b89418cc1778c38fc9239275e17b70a32a0bb5797b`  
		Last Modified: Fri, 23 Oct 2026 17:09:30 GMT  
		Size: 22.6 MB (22579371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c67643c3489c605bac0ad840fdfc3bbd0916b48f11fbbe7c8c730a746d74eebc`  
		Last Modified: Fri, 23 Oct 2026 17:09:30 GMT  
		Size: 38.6 MB (38625723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea6f80bdd81e753122e2a6143687e63be747ded55d734644fde83be594b01c84`  
		Last Modified: Fri, 23 Oct 2026 17:09:29 GMT  
		Size: 809.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d1e0b4d2cb8f8079e79c66483f835b97b23ea5f872f5d42c0c9811b36f7c54`  
		Last Modified: Fri, 23 Oct 2026 17:09:29 GMT  
		Size: 586.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76fdeeabaa0bcb4297d206c8fde6a79c994aae188525fd28806f85ff154bccb3`  
		Last Modified: Fri, 23 Oct 2026 17:09:30 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7941b18a7bc5664b7b314ffb76eb5b0c8147f595c9c25e8758abc51fcbeebad8`  
		Last Modified: Fri, 23 Oct 2026 17:09:37 GMT  
		Size: 272.6 MB (272638620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d7ecf7a2407444a6e381ab373e928a1bee7ff43b3150ab01c7c4bd5e416d801`  
		Last Modified: Fri, 23 Oct 2026 17:09:32 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78a3245aee1131c72dfc4377169cb3910196532efbd36a14ef60d1e0d856b87`  
		Last Modified: Fri, 23 Oct 2026 17:09:32 GMT  
		Size: 2.6 KB (2595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable` - unknown; unknown

```console
$ docker pull nextcloud@sha256:985d9a14065e693059556b8699f7fab6fd4f6a14a2e101606167a1169ea021e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 KB (62450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:523a71651bde930a2fa37d8326bcec2d9c86c5d22b491f362e0282c97385cc34`

```dockerfile
```

-	Layers:
	-	`sha256:a662393063e610c563d9f6eb4e6c55c5539ccb478a278359c2fd05ba2ebe84ea`  
		Last Modified: Fri, 23 Oct 2026 17:09:28 GMT  
		Size: 62.5 KB (62450 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable` - linux; riscv64

```console
$ docker pull nextcloud@sha256:5ff950a235ae527adcc34199c077086c9b44f0aace1c3027960ca3f107a72def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **546.7 MB (546673870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efc249a2ab8311e7ee07d596110cce4ec910abfaa96291733fc0b5b4cddb86d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 09:35:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 09:37:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 09:37:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 09:37:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 09:37:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 09:37:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 09:37:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 10:44:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 10:44:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 10:44:03 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 10:44:03 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Fri, 23 Oct 2026 12:35:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 23 Oct 2026 12:35:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 13:37:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 23 Oct 2026 13:37:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 13:37:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 23 Oct 2026 13:37:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 23 Oct 2026 13:37:22 GMT
STOPSIGNAL SIGWINCH
# Fri, 23 Oct 2026 13:37:22 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 13:37:22 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 13:37:22 GMT
EXPOSE map[80/tcp:{}]
# Fri, 23 Oct 2026 13:37:22 GMT
CMD ["apache2-foreground"]
# Tue, 27 Oct 2026 12:17:59 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 27 Oct 2026 12:54:29 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 27 Oct 2026 12:54:29 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 27 Oct 2026 12:54:29 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 27 Oct 2026 12:54:29 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 12:54:30 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 27 Oct 2026 12:54:30 GMT
VOLUME [/var/www/html]
# Tue, 27 Oct 2026 12:54:31 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 27 Oct 2026 12:54:31 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 27 Oct 2026 12:54:32 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 27 Oct 2026 12:54:32 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Tue, 27 Oct 2026 12:59:30 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 27 Oct 2026 12:59:31 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 27 Oct 2026 12:59:31 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 27 Oct 2026 12:59:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Oct 2026 12:59:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:c1206888a96a9a1d872c517f2fbe95ce8d2ebe30c523c27832270d8b73768b7c`  
		Last Modified: Tue, 20 Oct 2026 23:49:10 GMT  
		Size: 28.3 MB (28333871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4aa31369b52cced343b4809330d712177f9612babb670e89d385299a383a4ed`  
		Last Modified: Wed, 21 Oct 2026 10:40:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d6311ac5d826a4a861f59e12b20591857d57f74ab4e198c2327b5f6588a1105`  
		Last Modified: Wed, 21 Oct 2026 10:41:14 GMT  
		Size: 146.6 MB (146584381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ae97f889403e93599c19761fb84d1a53065dcf0f56f464dca9cede5b6940ca0`  
		Last Modified: Wed, 21 Oct 2026 10:40:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f074a9a20027c755861910a46e991f464dc826fe4505b4dc3a215193d2d6a3e`  
		Last Modified: Wed, 21 Oct 2026 11:44:27 GMT  
		Size: 4.1 MB (4056391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5338ea20887b25789b5f1ffcf2f6fa403fdf47da0f210c8e3124f8fafa14f8f6`  
		Last Modified: Wed, 21 Oct 2026 11:44:25 GMT  
		Size: 437.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530254758e479f0b8b9f045c79c14c39af5dc8f93708f70400a4ae5f441a48ca`  
		Last Modified: Wed, 21 Oct 2026 11:44:25 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689ed49a9b1cc9ab3c9d5c8a841fe2d63422015defc0087a78ff424bb01af895`  
		Last Modified: Fri, 23 Oct 2026 13:40:54 GMT  
		Size: 14.7 MB (14735423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ff856549e3b70caa38ac276bd3d3c247a4cad310ebcc815a8b9ddb26f3467e`  
		Last Modified: Fri, 23 Oct 2026 13:40:49 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63df28e3c418133543d3b60f1b54786c8566f529bc11f212ffefa3d4d83a1df9`  
		Last Modified: Fri, 23 Oct 2026 13:40:53 GMT  
		Size: 14.1 MB (14149810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036fd796cac2a35f1950af3a6aefae0cfe649685a2d65217be04238feaf7fc3d`  
		Last Modified: Fri, 23 Oct 2026 13:40:49 GMT  
		Size: 2.5 KB (2466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a10cee83e36f28c6678079234f6b54c60ae5835d226eaee55b625e64e8b1d13`  
		Last Modified: Fri, 23 Oct 2026 13:40:51 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40329c0e3fe24fb7e00c62ed80dce66a82197b9ab881e7219f95e66bc59572d8`  
		Last Modified: Fri, 23 Oct 2026 13:40:51 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edff26b16e761bbbee0b67460a848adaeac5694451058c06cb98ff0d6f4f9959`  
		Last Modified: Tue, 27 Oct 2026 13:06:23 GMT  
		Size: 19.9 MB (19926833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e4e2d1fef29343a53e2a2c6ecfd49a98ffc900661d4449ad5755e6b6b87bbb`  
		Last Modified: Tue, 27 Oct 2026 13:06:31 GMT  
		Size: 46.2 MB (46234601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7f3dd627e1e74910e6efe23758129dee16e42a2c131ecea2c519c09c16ccbf`  
		Last Modified: Tue, 27 Oct 2026 13:06:16 GMT  
		Size: 815.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95d58d98c25e50e38ba98e5298321715f92ddbc6fed689d59bfdc778dde6cb7`  
		Last Modified: Tue, 27 Oct 2026 13:06:16 GMT  
		Size: 584.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d516f29babbee5e4fcdb353a7faa1b556ffa9e007cc90eb64660d1587fbe654`  
		Last Modified: Tue, 27 Oct 2026 13:06:18 GMT  
		Size: 413.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:827e50cf5acf69ae786337f571a159fea62de592bc6c9d24c1497101a326a5c0`  
		Last Modified: Tue, 27 Oct 2026 13:07:04 GMT  
		Size: 272.6 MB (272638492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65fcb0cd07835e3d5248661e550042764aeeddf6ba561e20580e6d7590cb6ce3`  
		Last Modified: Tue, 27 Oct 2026 13:06:20 GMT  
		Size: 4.1 KB (4149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39135d7dcd0c59663d0a828388042013f7eba73ff67e4a44be04fe9fdee36584`  
		Last Modified: Tue, 27 Oct 2026 13:06:23 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable` - unknown; unknown

```console
$ docker pull nextcloud@sha256:9fd25b2f100e79ad5a87829abf8e35c4a12ccc13c195bfc760ffbfb6b2af2bdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 KB (62451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b01a3f78274c728224b160f8011cd73d1028950b16b506c14e42fc3c501af4ad`

```dockerfile
```

-	Layers:
	-	`sha256:0a9454256fbc82a2e1a698d2311eaa88f62676a8e46f33a41587450ae7ca67e0`  
		Last Modified: Tue, 27 Oct 2026 13:06:15 GMT  
		Size: 62.5 KB (62451 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable` - linux; s390x

```console
$ docker pull nextcloud@sha256:832e7517586e8e6b2876255b313bf3ad246e320e1af6179ec1032ed8c9085ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.6 MB (486625992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebc7e99091fbb3b3b301a2d5e2017208ec398846e15ec1de4c2996baf417d7c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:21:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 00:22:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 00:22:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:22:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 00:22:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 00:22:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 00:22:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 00:22:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 00:22:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 00:22:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 00:22:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 00:22:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 00:22:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 00:22:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 00:22:20 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 00:22:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 00:22:20 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 15:53:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 15:53:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:57:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 15:57:48 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:57:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 15:57:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 15:57:48 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 15:57:48 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 15:57:48 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 15:57:48 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 15:57:48 GMT
CMD ["apache2-foreground"]
# Fri, 23 Oct 2026 16:37:35 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 23 Oct 2026 16:40:39 GMT
ENV PHP_MEMORY_LIMIT=512M
# Fri, 23 Oct 2026 16:40:39 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Fri, 23 Oct 2026 16:40:39 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Fri, 23 Oct 2026 16:40:39 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:40:39 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Fri, 23 Oct 2026 16:40:39 GMT
VOLUME [/var/www/html]
# Fri, 23 Oct 2026 16:40:39 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Fri, 23 Oct 2026 16:40:39 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Fri, 23 Oct 2026 16:40:39 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Fri, 23 Oct 2026 16:40:39 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Fri, 23 Oct 2026 16:41:17 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Fri, 23 Oct 2026 16:41:17 GMT
COPY *.sh upgrade.exclude / # buildkit
# Fri, 23 Oct 2026 16:41:17 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Fri, 23 Oct 2026 16:41:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 23 Oct 2026 16:41:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16251a77de9ac040ac6b94dfd74abd151e66c5997909dabefec78e303a5fc349`  
		Last Modified: Wed, 21 Oct 2026 00:25:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67e9dcd4f556a60a6c9259a420346e71c69f4ea1bd6e414df7a81c28a17080be`  
		Last Modified: Wed, 21 Oct 2026 00:25:57 GMT  
		Size: 92.6 MB (92570461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c9118145e17cb1fa941ad3074ea018ad88a5695d5e166bf899b3735b7899f57`  
		Last Modified: Wed, 21 Oct 2026 00:25:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b13edbdaeacd2d18651f94e3a110a072c2788294b6b5d620e5ea3c261d821d41`  
		Last Modified: Wed, 21 Oct 2026 00:25:55 GMT  
		Size: 4.3 MB (4342308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7367bf3084c61333add41c30f441fed050941df821216dfa2417a01b266dfd`  
		Last Modified: Wed, 21 Oct 2026 00:25:56 GMT  
		Size: 437.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61099d74e1ce68dd2bc6bbbfe28875ca6bc2fbde2d746d8f95bd2a676abb0e23`  
		Last Modified: Wed, 21 Oct 2026 00:25:56 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:958733c69324223fb94b2907f824a2e2683010c2c5da30287b8dcb8d33f580d6`  
		Last Modified: Wed, 21 Oct 2026 15:58:05 GMT  
		Size: 14.7 MB (14735808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437c48cb3eeca8da589f233510a5924a949660a7f017df874777b85b26a0e1ec`  
		Last Modified: Wed, 21 Oct 2026 15:58:05 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14eed15db709187706c669712bd8e258838c516675f01b73b364326cc6ac898`  
		Last Modified: Wed, 21 Oct 2026 15:58:05 GMT  
		Size: 14.5 MB (14513240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41b52e60b9d7e6dcee32029496dbe75d43bceca122aa65e29e876c80265678d`  
		Last Modified: Wed, 21 Oct 2026 15:58:05 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd86464aacb524d085a89ee87b4e1fff56e64dc22f92aede5df9c1ab95cc773`  
		Last Modified: Wed, 21 Oct 2026 15:58:06 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24b7031f9814badf99922deb4407b433f5830a4c10ac588c85f0a18b8629921`  
		Last Modified: Wed, 21 Oct 2026 15:58:06 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723deec32b8230676761e94710214f80ee20c0813cf92480bcc9a951be4c0488`  
		Last Modified: Fri, 23 Oct 2026 16:42:02 GMT  
		Size: 20.8 MB (20808066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66261ca05d36d77cd201cb089ce549c0a77a0d1141973d52b37c96f89967b1f3`  
		Last Modified: Fri, 23 Oct 2026 16:42:03 GMT  
		Size: 37.1 MB (37094385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5d3b3cb8d691bd1b8171161bbe8d4f572b9af9486740a0bc78755b291d1830`  
		Last Modified: Fri, 23 Oct 2026 16:42:00 GMT  
		Size: 803.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a4794033d2da00ad7036bcc5f06f745a3770dd748a807f6f1efe13e4eadd18`  
		Last Modified: Fri, 23 Oct 2026 16:42:00 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2745b38f22b934f9ce86cc731d1076fd62b787fbbe698cea8b51ce145640eed5`  
		Last Modified: Fri, 23 Oct 2026 16:42:02 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122954dc4080d7d8d6d4fc919d775b2fd801f4a17a810c39564f24ed2a1ca7ec`  
		Last Modified: Fri, 23 Oct 2026 16:42:07 GMT  
		Size: 272.6 MB (272636270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:079fd84a42f06b193bb61199ca9b9b461089107252775aee52836753ada75d44`  
		Last Modified: Fri, 23 Oct 2026 16:42:01 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc230f716f6be360ad3eb956efc14ace441389d87183dc29450e904df45109b`  
		Last Modified: Fri, 23 Oct 2026 16:42:03 GMT  
		Size: 2.6 KB (2590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable` - unknown; unknown

```console
$ docker pull nextcloud@sha256:0a14bb80d8a7ecf1df65c8732d81d30b9fc1cde688e228b920a14f340bb73a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 KB (62352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44c7fc6347368d42ba92eb957519419e470ec29726f49db5a069388f5b3cfb8`

```dockerfile
```

-	Layers:
	-	`sha256:bc10b97d2e4ba14c93b282d8e8e4f60bc0ffb939de47455dfceb918effe663b6`  
		Last Modified: Fri, 23 Oct 2026 16:42:00 GMT  
		Size: 62.4 KB (62352 bytes)  
		MIME: application/vnd.in-toto+json
