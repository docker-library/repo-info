## `nextcloud:35-apache`

```console
$ docker pull nextcloud@sha256:c341e809df593be20f8f668c284ab1f87fbb372d1bb00dae5e6bd3f601b6c872
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `nextcloud:35-apache` - linux; amd64

```console
$ docker pull nextcloud@sha256:e594a5d68fa32d4b16686a60e0beb39c55766de776338ba03761e9e7ca22a740
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **513.0 MB (512956527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd80445714fe772a0093f55ca339d36b60e537f0138fe38d36198b40a76fbb35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:23:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:23:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:23:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:23:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:23:11 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:23:11 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:23:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:23:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:23:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:23:16 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_VERSION=8.5.10
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Sat, 19 Sep 2026 00:23:16 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Sat, 19 Sep 2026 00:23:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:23:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:26:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:26:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:26:12 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:26:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:26:12 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:26:12 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:26:12 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:26:12 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:26:12 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 01:35:08 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Sat, 19 Sep 2026 01:37:28 GMT
ENV PHP_MEMORY_LIMIT=512M
# Sat, 19 Sep 2026 01:37:28 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Sat, 19 Sep 2026 01:37:28 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Sat, 19 Sep 2026 01:37:28 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:37:28 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Sat, 19 Sep 2026 01:37:28 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:37:28 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Sat, 19 Sep 2026 01:37:28 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Sat, 19 Sep 2026 01:37:28 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Sat, 19 Sep 2026 01:37:28 GMT
ENV NEXTCLOUD_VERSION=35.0.0
# Sat, 19 Sep 2026 01:38:05 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:38:05 GMT
COPY *.sh upgrade.exclude / # buildkit
# Sat, 19 Sep 2026 01:38:05 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Sat, 19 Sep 2026 01:38:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:38:05 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb048fb87269758147674ec826cde89888b31678eacdf906531cc628043e4d25`  
		Last Modified: Sat, 19 Sep 2026 00:26:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9cd8b624fa75cec8fa45b4415617d15464d8070a1a212d2631f31cbee69f885`  
		Last Modified: Sat, 19 Sep 2026 00:26:36 GMT  
		Size: 117.8 MB (117842278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b9fb004ed73fc78fa0eaf4062b853a91ac37fbb3ba1e7b772b1163eb3c1bca`  
		Last Modified: Sat, 19 Sep 2026 00:26:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2ef19b17e93c61f918c29af27cb52475c60fb50b21748b60ddc3b11c47df7a2`  
		Last Modified: Sat, 19 Sep 2026 00:26:33 GMT  
		Size: 4.2 MB (4239013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2688fbc92224c810910cd5268ee690e605afd0c12e6385d85a9546b9a0b300a5`  
		Last Modified: Sat, 19 Sep 2026 00:26:34 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98568aa8c67088bb05182084e7a036bf951060dbe7833d747073667edd1a5c41`  
		Last Modified: Sat, 19 Sep 2026 00:26:34 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2edf02cf7a1616facb0ff7b00d338d99cc102865c2c452b0075e774e4134f43`  
		Last Modified: Sat, 19 Sep 2026 00:26:35 GMT  
		Size: 14.6 MB (14622891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a1bb79060e14fb2bb412331fc194245c9fa1cedfba47468f97460789fa9934`  
		Last Modified: Sat, 19 Sep 2026 00:26:35 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15db5ed8c2f250254483cc3447da0ebca2a7394636a2865b5b9883161c2dbc46`  
		Last Modified: Sat, 19 Sep 2026 00:26:36 GMT  
		Size: 15.2 MB (15188213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:687dc38bb29194fcdeb6d215a1813b919db2cfafe1e8462d5cd5c78cad4bb01f`  
		Last Modified: Sat, 19 Sep 2026 00:26:36 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6c4ba8048617822ec748599120a555a948f586c24c41e7b0be11a292e8cc86`  
		Last Modified: Sat, 19 Sep 2026 00:26:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50d26fb3e707d70825e0940617af7254e0e26c708162adacd7a8a6ee993e30c`  
		Last Modified: Sat, 19 Sep 2026 00:26:38 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0796bba4c8e7aceba1f47585888e9e6411ae204ed0a41beb9fbaf60daf20c96c`  
		Last Modified: Sat, 19 Sep 2026 01:38:33 GMT  
		Size: 21.0 MB (20969097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d92856137b786c3d0660b77f42813f9228c9d020806cc85e38e0d90da5e02a30`  
		Last Modified: Sat, 19 Sep 2026 01:38:34 GMT  
		Size: 36.9 MB (36934923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad18cc8080ef178f9932b573de8af23e28997c3e2d9bed0e4ba24ba241284e8`  
		Last Modified: Sat, 19 Sep 2026 01:38:32 GMT  
		Size: 790.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa0f013b53c11a2c3c178fce9a413b27391ce328fc88666649959bedf51603ce`  
		Last Modified: Sat, 19 Sep 2026 01:38:32 GMT  
		Size: 574.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25bf953c91380bf21d5bb682c4b213b3dc2f8f44c8ca307c4c6a6c124834a4fa`  
		Last Modified: Sat, 19 Sep 2026 01:38:34 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31b9e87c6838c573b6b46e1b275df03350d229d7a6e53e4c5b67b7976d6473c`  
		Last Modified: Sat, 19 Sep 2026 01:38:39 GMT  
		Size: 273.3 MB (273315767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6417021ad264ae0579c75acaee55d5086a0785c8012210e9b7a73112d725da65`  
		Last Modified: Sat, 19 Sep 2026 01:38:34 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4de2b3f66d992a423bd25849744372da944165546b61e6dc7ed9932ecf010c0`  
		Last Modified: Sat, 19 Sep 2026 01:38:35 GMT  
		Size: 2.5 KB (2544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:35-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:c88e8d5e74f6c9c0a4ae4944d9513d9f429855220aed53097f6a8cf10ce5b8a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 KB (61549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f802732d52c3d68a82cf0fe716404675db871af70a6cc95a41b6ed41e2be5875`

```dockerfile
```

-	Layers:
	-	`sha256:3ccaba86681c0fa9129f84e2c23d18d8410ce2ac43fa34a17b6867dd25a08fb0`  
		Last Modified: Sat, 19 Sep 2026 01:38:32 GMT  
		Size: 61.5 KB (61549 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:35-apache` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:77cc4db475b4c9562a5420bab25d07b31bc57b1af287b1b5af90f845e210f04e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **483.3 MB (483315280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7459b293b9ff96477c2ac27c94fb5f061229169db2ab4c80d171a5a44595267a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:22:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:22:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:22:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:22:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:22:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:22:35 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:22:35 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:26:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:26:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:26:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:26:16 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_VERSION=8.5.10
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Sat, 19 Sep 2026 00:26:16 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Sat, 19 Sep 2026 00:26:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:26:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:29:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:29:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:29:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:29:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:29:52 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:29:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:29:52 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:29:52 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:29:52 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 02:19:07 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Sat, 19 Sep 2026 02:22:54 GMT
ENV PHP_MEMORY_LIMIT=512M
# Sat, 19 Sep 2026 02:22:54 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Sat, 19 Sep 2026 02:22:54 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Sat, 19 Sep 2026 02:22:54 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:22:54 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Sat, 19 Sep 2026 02:22:54 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 02:22:54 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Sat, 19 Sep 2026 02:22:54 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Sat, 19 Sep 2026 02:22:54 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Sat, 19 Sep 2026 02:22:54 GMT
ENV NEXTCLOUD_VERSION=35.0.0
# Sat, 19 Sep 2026 02:23:47 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:23:47 GMT
COPY *.sh upgrade.exclude / # buildkit
# Sat, 19 Sep 2026 02:23:48 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Sat, 19 Sep 2026 02:23:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:23:48 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6779b1da15e3aae8ffc697263f547a05eaff7ea80f63924ba5376253a6f3a12b`  
		Last Modified: Sat, 19 Sep 2026 00:03:25 GMT  
		Size: 28.0 MB (27998032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c559b0d04e0683d78b09f50cb309a7899f1d2e117ac3a232a9eeae4a646961`  
		Last Modified: Sat, 19 Sep 2026 00:25:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d92a2694e1bdd7d3d2a88018f5f509a37a697bcc24d56430dafdb117e6dc5c0`  
		Last Modified: Sat, 19 Sep 2026 00:26:01 GMT  
		Size: 94.9 MB (94876759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46bf41ada33e60b208b04152cd937768247dab9dba24c66053af2d5aec5e127d`  
		Last Modified: Sat, 19 Sep 2026 00:25:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9afc84fe5eaaca6bd93bf12fc5b6ae617499cbaafd1447bd0caee7162fce7d4e`  
		Last Modified: Sat, 19 Sep 2026 00:30:03 GMT  
		Size: 4.1 MB (4097275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa7d672b1b0c041b828c672676fddb34f7394565cc3447587cc5ee56d3f3eec`  
		Last Modified: Sat, 19 Sep 2026 00:30:03 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cca03c28f65516f343d236d2a7a6bf8a63d2043a3451ff9be4a496cd06c73ea2`  
		Last Modified: Sat, 19 Sep 2026 00:30:03 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87febfd9568141a99e90200dab065bca6fafdd6a21ac7fc12724d0e01c21770`  
		Last Modified: Sat, 19 Sep 2026 00:30:03 GMT  
		Size: 14.6 MB (14620301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9bbd1bc2e71cf047b4482038a0a67187abf79570e384a26ee82e235cb72673`  
		Last Modified: Sat, 19 Sep 2026 00:30:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70bf9bf7ae03a23d85dc7648f9bb834cdc8fd5ad5125c187bc43757998fd4490`  
		Last Modified: Sat, 19 Sep 2026 00:30:04 GMT  
		Size: 13.3 MB (13258267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e52315da624857c9293d203ee97224fc0cbc3a3d301a9628b53cbf0fbb1e92c`  
		Last Modified: Sat, 19 Sep 2026 00:30:04 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba680f4dac7dfba31916ecbc5bbc8c8d442c4e41dd932c9a6085db6f3f4fa2f`  
		Last Modified: Sat, 19 Sep 2026 00:30:05 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9128cb617c6d6896df17afcedd511b300fa6ea4ca15413911c972aa5637b36`  
		Last Modified: Sat, 19 Sep 2026 00:30:05 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:863500eebf18d5f21d4e8992e6f88c7175bb9b145618b1091f70cd25ddf0a250`  
		Last Modified: Sat, 19 Sep 2026 02:24:19 GMT  
		Size: 20.1 MB (20073938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6626d8efd44bacb9c3747d3aab0e5e4ad7bc76cbd402a4358ccb6c28722741b`  
		Last Modified: Sat, 19 Sep 2026 02:24:19 GMT  
		Size: 35.1 MB (35063398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad2b3dc0508771d990d753638b1d1f7d93935232fd0b12d541cb897d713d6fa`  
		Last Modified: Sat, 19 Sep 2026 02:24:18 GMT  
		Size: 792.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb2da4af8d0cb07187de4bae5a8d05e1702214faee963ee50dfe9fef018eeeb`  
		Last Modified: Sat, 19 Sep 2026 02:24:18 GMT  
		Size: 570.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf52c183fd0c5e5e6df9f76b9c14e56ad35da703b24d83fb5956738f67f9eeb`  
		Last Modified: Sat, 19 Sep 2026 02:24:19 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dadad1c98d12376b2730c35efe8cbf5eb6eaa92c4068cf2f5dfcb0e28cec88a`  
		Last Modified: Sat, 19 Sep 2026 02:24:24 GMT  
		Size: 273.3 MB (273313386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e872c9ebd98cafea7893eb03c36ef50af7ec0ec7d94ad2003df15e8d428984d4`  
		Last Modified: Sat, 19 Sep 2026 02:24:21 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d956d09883e0a6d46ec0439fcfee1b89cd6ef437f3bfa1c2c71f426e644f54e6`  
		Last Modified: Sat, 19 Sep 2026 02:24:21 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:35-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:5029291bbd9a7b81d6db18fd6b2b350c25f1333cab75d062786770d9d88cd56f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 KB (61717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b494da1bfcfc0831e7891b9842dac40805f08c6e2054edf84b6c329eedaeb8b`

```dockerfile
```

-	Layers:
	-	`sha256:ca9fe6c720181ce1572e2bdfe5806fab79406b5cbc597ec61d5297e67f34542d`  
		Last Modified: Sat, 19 Sep 2026 02:24:18 GMT  
		Size: 61.7 KB (61717 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:35-apache` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:089ef9a384a2c0b51fb725b084b45066be78ea2f667cbc5a6f53efcb7d4539cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **469.5 MB (469524550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7c702d33d7943e2c8684fe9d53ea968c4bb18d9ee719b690d4ca6194495af6c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:30:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:30:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:30:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:30:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:30:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:30:32 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:30:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:30:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:30:39 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:30:40 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:30:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:30:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:30:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:30:40 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 00:30:40 GMT
ENV PHP_VERSION=8.5.10
# Sat, 19 Sep 2026 00:30:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Sat, 19 Sep 2026 00:30:40 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Sat, 19 Sep 2026 00:30:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:30:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:33:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:33:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:33:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:33:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:33:45 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:33:45 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:33:45 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:33:45 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:33:45 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 02:40:08 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Sat, 19 Sep 2026 02:43:21 GMT
ENV PHP_MEMORY_LIMIT=512M
# Sat, 19 Sep 2026 02:43:21 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Sat, 19 Sep 2026 02:43:21 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Sat, 19 Sep 2026 02:43:21 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:43:22 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Sat, 19 Sep 2026 02:43:22 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 02:43:22 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Sat, 19 Sep 2026 02:43:22 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Sat, 19 Sep 2026 02:43:22 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Sat, 19 Sep 2026 02:43:22 GMT
ENV NEXTCLOUD_VERSION=35.0.0
# Sat, 19 Sep 2026 02:44:11 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:44:11 GMT
COPY *.sh upgrade.exclude / # buildkit
# Sat, 19 Sep 2026 02:44:12 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Sat, 19 Sep 2026 02:44:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:44:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9121ca2c733ed1e136dc1485791030b81ac98d0f9f66d9cd83b343939764bfa9`  
		Last Modified: Sat, 19 Sep 2026 00:04:06 GMT  
		Size: 26.2 MB (26248928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647f09c662148580e344100735e97b1d7c87e9161bdd6bc66350d93c25f95252`  
		Last Modified: Sat, 19 Sep 2026 00:34:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b611a71d28f836a62cf6e17c4c0937d377b69accf4b9c252685151ca785b1572`  
		Last Modified: Sat, 19 Sep 2026 00:34:05 GMT  
		Size: 86.3 MB (86264761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebe7c3b2b85f1d791d0f22d945d181012441e80c97c74edbc4e9e30c0a194a77`  
		Last Modified: Sat, 19 Sep 2026 00:34:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892e47bc42fe598be4b80be823c00e008738bbca09df4c511010855ea7878d14`  
		Last Modified: Sat, 19 Sep 2026 00:34:02 GMT  
		Size: 3.8 MB (3763857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef8ce001927d9a0a96e2b5bcb607aac39f38712945effb55c67ec79e465db10`  
		Last Modified: Sat, 19 Sep 2026 00:34:03 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a8d66a5ece84575bd43f85e62a11a7a6e2acaa846a802d388d1ee686a55f2c`  
		Last Modified: Sat, 19 Sep 2026 00:34:03 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ee6ecbb491c3a5aaf17989b864cc7b86289305d3cf4cd07f1b027f178c0f83`  
		Last Modified: Sat, 19 Sep 2026 00:34:04 GMT  
		Size: 14.6 MB (14620373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6bf64f7ca5d4c0cfab9b9bcd662f21276537eb257f3367dfaee6988ddbd1241`  
		Last Modified: Sat, 19 Sep 2026 00:34:05 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f9174740ad51307d591b943256469418aed52d5eb69a6a67a19bdb860e81dd8`  
		Last Modified: Sat, 19 Sep 2026 00:34:05 GMT  
		Size: 12.6 MB (12635179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dd175869995fca995af7c6953afa3d6d51f7b3732ba44fbf33bd3b1a864de34`  
		Last Modified: Sat, 19 Sep 2026 00:34:06 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5322e5313fd8133f8fa8c86e54e34c5abef08e07908609f4bf4b7b0c23461ed0`  
		Last Modified: Sat, 19 Sep 2026 00:34:06 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85f22a8f6a1fc8e0b263a5920f25270eb2f5479adc13efda4b26aaa3b2a5d56`  
		Last Modified: Sat, 19 Sep 2026 00:34:06 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c129d0bfe661f8bc29f41388a32380bc0e96f3bb39d529dbddf541ddbddc6c2a`  
		Last Modified: Sat, 19 Sep 2026 02:44:43 GMT  
		Size: 18.0 MB (18007728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47a102c10e55005ea5ea467bb1e840f76903b80c7ef3f6423a904b132f7c6f8f`  
		Last Modified: Sat, 19 Sep 2026 02:44:44 GMT  
		Size: 34.6 MB (34644930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c481ddb618af64d7ecda2f06ba253d12b397de5d05028edfcc0b728346673d85`  
		Last Modified: Sat, 19 Sep 2026 02:44:42 GMT  
		Size: 790.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65560f9ad7b2698a30fd8436d568579607c13401a5d53f13b1faa62ed6f40b1e`  
		Last Modified: Sat, 19 Sep 2026 02:44:42 GMT  
		Size: 572.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9279f728155a386ea6e1b1f946d4912228b9cc2479a144c45285f4d1e595afd`  
		Last Modified: Sat, 19 Sep 2026 02:44:43 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b535d73fc30e9c2d0bf4ccc7e99db9b4b56db0d72608f19d860efc57b0ae26ef`  
		Last Modified: Sat, 19 Sep 2026 02:44:48 GMT  
		Size: 273.3 MB (273324870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515d5863f9a8f813b110b1400df77f4f25d89db3bca4c8ba501f9bacce6c10ae`  
		Last Modified: Sat, 19 Sep 2026 02:44:45 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487acffbcd4371e3e90b95acae85d0ee91de80fc3b3b88cce6713059031dc274`  
		Last Modified: Sat, 19 Sep 2026 02:44:45 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:35-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:aa815f8debd6e110d400effbef2f1664bc867f255a4829cef0d9519a7e5062f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 KB (61716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad4e65047188aaa430775837547802ecc54398e8a235a5fe97c77a1342be68a`

```dockerfile
```

-	Layers:
	-	`sha256:27989254f8058f5ae670e176c001789bcfb4facd549bf1a1a520b42b9f5cd23e`  
		Last Modified: Sat, 19 Sep 2026 02:44:42 GMT  
		Size: 61.7 KB (61716 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:35-apache` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:ec43ff8fbdc0dde4797652b9217c6bef7a5b90b3450eae8a109436a69f398da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **503.9 MB (503904598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:409f9667235ccfcb4d0ddd2df0e3c9151a2c3d14ea83a1ec738683a9151ac82d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:24:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:24:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:24:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:24:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:24:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:24:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:24:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:24:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:24:24 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:24:24 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:24:24 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_VERSION=8.5.10
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Sat, 19 Sep 2026 00:24:24 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Sat, 19 Sep 2026 00:24:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:24:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:28:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:28:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:28:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:28:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:28:02 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:28:02 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:28:02 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:28:02 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:28:02 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 01:44:40 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Sat, 19 Sep 2026 01:47:43 GMT
ENV PHP_MEMORY_LIMIT=512M
# Sat, 19 Sep 2026 01:47:43 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Sat, 19 Sep 2026 01:47:43 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Sat, 19 Sep 2026 01:47:43 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:47:43 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Sat, 19 Sep 2026 01:47:43 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:47:44 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Sat, 19 Sep 2026 01:47:44 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Sat, 19 Sep 2026 01:47:44 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Sat, 19 Sep 2026 01:47:44 GMT
ENV NEXTCLOUD_VERSION=35.0.0
# Sat, 19 Sep 2026 01:48:21 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:48:22 GMT
COPY *.sh upgrade.exclude / # buildkit
# Sat, 19 Sep 2026 01:48:22 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Sat, 19 Sep 2026 01:48:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:48:22 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738f7d8f678eaae491fd686d1c86a4a398257a316ddb21d6f7db39c5983bfd6b`  
		Last Modified: Sat, 19 Sep 2026 00:28:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a82c3c833948eb54d8ca382845613f35f60d8d0edd28075dce7958d15a6aa9`  
		Last Modified: Sat, 19 Sep 2026 00:28:26 GMT  
		Size: 110.2 MB (110179569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cbf9437dedf4c402e8723a899294ebc56d2e1a8c9ce13402c13916b7ea300c1`  
		Last Modified: Sat, 19 Sep 2026 00:28:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5915885c5c53e48e4799abeef7da94bca2adcbc6a3a304f8f20f38ed82c6079c`  
		Last Modified: Sat, 19 Sep 2026 00:28:23 GMT  
		Size: 4.3 MB (4314392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf5d81746c33d96fd499f1707c49bd71443235e4d3286a4e01dc92fdf0fc6dc`  
		Last Modified: Sat, 19 Sep 2026 00:28:24 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8c9985ee6323ffc9ece81ec71b53323185cdcc96581e2598d32ddeb014ed47`  
		Last Modified: Sat, 19 Sep 2026 00:28:24 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6db66a3cdc5c96d67bbc24a0e5b569c1c3350da535855cbd3f69c4f97590f2`  
		Last Modified: Sat, 19 Sep 2026 00:28:25 GMT  
		Size: 14.6 MB (14622508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c964260898889ac4cd277d45321bfeb48c51f820360ccf0d9559a4e04c2cd5a`  
		Last Modified: Sat, 19 Sep 2026 00:28:26 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:797f12211744a57657d02b8db55b9b529d5c731278a2a5ef5b2b8f4994b79796`  
		Last Modified: Sat, 19 Sep 2026 00:28:26 GMT  
		Size: 14.8 MB (14754528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3df07d632426d180411549ef574882382941a7b109052b0e21ab65b89e70f18`  
		Last Modified: Sat, 19 Sep 2026 00:28:27 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348e23024c6398ba5b3064e436ee6de76e0e284f057f9b073caca1b79d470a7c`  
		Last Modified: Sat, 19 Sep 2026 00:28:27 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82819385a4176451cc8c669debc171d2a9643c3bd1af7c01b0e729bb22d6a0d`  
		Last Modified: Sat, 19 Sep 2026 00:28:27 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ce3a1529a03ce667e9a6344f112a707914ca5b11b325e793736efcbfbc7c3c`  
		Last Modified: Sat, 19 Sep 2026 01:48:53 GMT  
		Size: 19.7 MB (19693930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28f59ae705ad530fb16f527dbda1371cfa243998da217e278d180d6d8f8d2ab`  
		Last Modified: Sat, 19 Sep 2026 01:48:53 GMT  
		Size: 36.8 MB (36819720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f46c5015c3da3daec1c66a40f8ff7c1128d4771d4009e7cb4acceb58d3f39b4`  
		Last Modified: Sat, 19 Sep 2026 01:48:52 GMT  
		Size: 789.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f14059823e596e81c909fe1028728fcfeec0b88c8e81ac7c7f30434ac8b9abdc`  
		Last Modified: Sat, 19 Sep 2026 01:48:52 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:738db5526b83e1f3ac392cb853c7d54b4cb00dbb3e6d142a401aa4460ec10f65`  
		Last Modified: Sat, 19 Sep 2026 01:48:53 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a56dff94aadf7e22752c697d69a820ac7abf08514f75f0fd2264771d934856e4`  
		Last Modified: Sat, 19 Sep 2026 01:48:58 GMT  
		Size: 273.3 MB (273316335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42190bede4450be244503433a179e8b28abef83f7671275c2705e8a424341835`  
		Last Modified: Sat, 19 Sep 2026 01:48:54 GMT  
		Size: 4.1 KB (4137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3b088057757535a4565bdd090a22a62e6447fae7a9e9d4ee07145a075104fb`  
		Last Modified: Sat, 19 Sep 2026 01:48:54 GMT  
		Size: 2.5 KB (2547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:35-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:2a20f34db5e1da553289acd47c55703aa489d309dfba3067f565025cf7eea74c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 KB (61776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3964fb22524f48f5f153186eebcbf79783ead75e3e92db05d4f58af8e6c5a660`

```dockerfile
```

-	Layers:
	-	`sha256:11bc0f5cbc209be8543d0307292a7f5ab684b9a04da4ba4ac7574447b1334e6e`  
		Last Modified: Sat, 19 Sep 2026 01:48:52 GMT  
		Size: 61.8 KB (61776 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:35-apache` - linux; 386

```console
$ docker pull nextcloud@sha256:e646b6b20ca8cde255989f3819136b77f2ae4735b16962eb1be080e7536fc60e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **514.1 MB (514072368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d601833256d2e5710e676cc31e4be0c832197b4adfe2be15f43ce237631479a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:21:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Sat, 19 Sep 2026 00:21:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Sat, 19 Sep 2026 00:21:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 00:21:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 00:21:24 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 00:21:24 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Sat, 19 Sep 2026 00:21:24 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 19 Sep 2026 00:21:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:21:31 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:21:32 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:21:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:21:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:21:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:21:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 00:21:32 GMT
ENV PHP_VERSION=8.5.10
# Sat, 19 Sep 2026 00:21:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Sat, 19 Sep 2026 00:21:32 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Sat, 19 Sep 2026 00:25:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:25:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:28:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:28:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:28:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:28:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:28:18 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:28:18 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:28:18 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:28:18 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:28:18 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 01:47:17 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Sat, 19 Sep 2026 01:49:40 GMT
ENV PHP_MEMORY_LIMIT=512M
# Sat, 19 Sep 2026 01:49:40 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Sat, 19 Sep 2026 01:49:40 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Sat, 19 Sep 2026 01:49:40 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:49:41 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Sat, 19 Sep 2026 01:49:41 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 01:49:41 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Sat, 19 Sep 2026 01:49:41 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Sat, 19 Sep 2026 01:49:41 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Sat, 19 Sep 2026 01:49:41 GMT
ENV NEXTCLOUD_VERSION=35.0.0
# Sat, 19 Sep 2026 01:50:18 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 01:50:18 GMT
COPY *.sh upgrade.exclude / # buildkit
# Sat, 19 Sep 2026 01:50:18 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Sat, 19 Sep 2026 01:50:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 01:50:18 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8fa51aa063d1c9d8582b37a45055739eef6ee879e1364bcb6b75a064ad0d1906`  
		Last Modified: Sat, 19 Sep 2026 00:04:01 GMT  
		Size: 31.3 MB (31340398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a166781bb5c234ab5c74417f8ddc37ee04ccb53ce3091ed4b09b4b34b258ef2`  
		Last Modified: Sat, 19 Sep 2026 00:24:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e55e48f6e018dfde9a1624fe69084dd53d57ec73501fb2baa378eff64fd2891`  
		Last Modified: Sat, 19 Sep 2026 00:24:52 GMT  
		Size: 116.1 MB (116148300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc29353e4e446c5a3ff9d0bf3bce14fe97a4efecbcc7f6c1a3ef2e657d53ac47`  
		Last Modified: Sat, 19 Sep 2026 00:24:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b672f3963ca18c3559fe8e2c3ba5681c37b83afb001fa044951a727791e5abf`  
		Last Modified: Sat, 19 Sep 2026 00:24:49 GMT  
		Size: 4.5 MB (4471260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bb7d31295c3f74253a9ef72b92070f6b3af7a60c3e26a2ed25870796936e7ea`  
		Last Modified: Sat, 19 Sep 2026 00:24:50 GMT  
		Size: 426.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037d49606c3832b6c896ce4594a2e3a64f43a7a40adb02c805b889d0f782f30c`  
		Last Modified: Sat, 19 Sep 2026 00:24:50 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9815c46363c48f222b9976bbf42ea3c570322c36fca6c00a5197b7d0d25fac`  
		Last Modified: Sat, 19 Sep 2026 00:28:29 GMT  
		Size: 14.6 MB (14621868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f0e4a0a17a25f013261813e5458a8d62fcf1c323e72c40624e2093fc33a13f`  
		Last Modified: Sat, 19 Sep 2026 00:28:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40b43f92974864ccc273c24ab424be15dad7eecad3b1dfc6892c5afed4151560`  
		Last Modified: Sat, 19 Sep 2026 00:28:29 GMT  
		Size: 15.6 MB (15605947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f87e703271f471f997c4cbc77ecc4e5d5e81a77ad1bc2620018699667580acb`  
		Last Modified: Sat, 19 Sep 2026 00:28:28 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc77157ab60844ccd648635fe759b12155cdae296b1dd468153a011b97cf6e31`  
		Last Modified: Sat, 19 Sep 2026 00:28:30 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a29e95a2c5d44bbef99cc58d418b14b54ea35a818a77d4e12e8ef6bcab0b8a4`  
		Last Modified: Sat, 19 Sep 2026 00:28:30 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4340cdd0cb706f43dcff6b9c0f4222ef194b61601653f0f857b5cf720baa57`  
		Last Modified: Sat, 19 Sep 2026 01:50:44 GMT  
		Size: 21.2 MB (21218480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6c9b54674da451363cfb6c011a2129e0de8f923a6662559de7a6c30d6247de`  
		Last Modified: Sat, 19 Sep 2026 01:50:45 GMT  
		Size: 37.3 MB (37336740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56cadd706677c9ebf23f1d19a29ec93d65aeb471ecc9e2a71a828197de818255`  
		Last Modified: Sat, 19 Sep 2026 01:50:44 GMT  
		Size: 791.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71dfef3ca1a77792eac984c196ee97a48763b2b29dc37b08a7e9fba7d6c65863`  
		Last Modified: Sat, 19 Sep 2026 01:50:43 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b824e1524566d14100e1df3a6cb248854fd0d7b71c7ebbaa6d85f9a8db4f3de9`  
		Last Modified: Sat, 19 Sep 2026 01:50:45 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7898648b4da972543f868fecf1b4325c33c37c930d9b9b05cd51b5b4e0938abb`  
		Last Modified: Sat, 19 Sep 2026 01:50:50 GMT  
		Size: 273.3 MB (273315446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40e22fc26f77f12e56d6f4de9071ac639ac5dba0090b42ee151e43ec853dcd18`  
		Last Modified: Sat, 19 Sep 2026 01:50:46 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16cfff5d725ab0ff6f33948854ca001eef999d727b5171166f882a3dc9618de`  
		Last Modified: Sat, 19 Sep 2026 01:50:46 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:35-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:c7d06080a0376f17b0d9a7975a23c8c209cbc5edf3e4853bf6a88a296ea3c82c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 KB (61487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7e0d0709051658e4effad174479becd2ff2e63ff673fc3de1fa2ceb091e74e`

```dockerfile
```

-	Layers:
	-	`sha256:2a19b630c6e67ad097ea5d156976ecb947998c57c49ffbdb793ae2faf267407b`  
		Last Modified: Sat, 19 Sep 2026 01:50:43 GMT  
		Size: 61.5 KB (61487 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:35-apache` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:3214eae7ece4ac11bd7ec29c1dd455debc8fda5ff4abde161bfe88f4a2f65bb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **517.9 MB (517859998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569b35c7a186e6e629ace792795d87f3606c4b4e1093704fe6dd1167294b4681`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:46:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:48:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:48:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:48:08 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:48:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_VERSION=8.5.10
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:19:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 31 Aug 2026 19:19:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:50:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:50:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:50:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:50:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:50:47 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:50:47 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:50:47 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:50:47 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:50:47 GMT
CMD ["apache2-foreground"]
# Wed, 16 Sep 2026 22:14:01 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Wed, 16 Sep 2026 22:19:53 GMT
ENV PHP_MEMORY_LIMIT=512M
# Wed, 16 Sep 2026 22:19:53 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Wed, 16 Sep 2026 22:19:53 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Wed, 16 Sep 2026 22:19:53 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Wed, 16 Sep 2026 22:19:54 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Wed, 16 Sep 2026 22:19:54 GMT
VOLUME [/var/www/html]
# Wed, 16 Sep 2026 22:19:54 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Wed, 16 Sep 2026 22:19:54 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Wed, 16 Sep 2026 22:19:54 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Wed, 16 Sep 2026 22:19:54 GMT
ENV NEXTCLOUD_VERSION=35.0.0
# Wed, 16 Sep 2026 22:20:51 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Wed, 16 Sep 2026 22:20:53 GMT
COPY *.sh upgrade.exclude / # buildkit
# Wed, 16 Sep 2026 22:20:54 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Wed, 16 Sep 2026 22:20:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 16 Sep 2026 22:20:54 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:b7baf8e783fe0af865d7a2b42e03fc5ff2fd8783eac0d1606ed71779572552ed`  
		Last Modified: Tue, 25 Aug 2026 00:53:06 GMT  
		Size: 4.9 MB (4896923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d7f285b69c6b6e05120463401f2005b48ccff04f0e89b7690e5fa989f57c93`  
		Last Modified: Tue, 25 Aug 2026 00:53:05 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6194ce864a158bf2728ae3cd95b22ecca7efca59ea59dcbf161041d23dff36e1`  
		Last Modified: Tue, 25 Aug 2026 00:53:05 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6e7c211aed14fa56d5d611350e3ab14956d52b7e3d32a393209c31aa8cb123`  
		Last Modified: Mon, 31 Aug 2026 19:25:06 GMT  
		Size: 14.6 MB (14637764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a190359640f20fcf46613e287ac3e14318b64ea7102a07a45efd9378086f994`  
		Last Modified: Mon, 31 Aug 2026 19:25:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6032b3637137f2216855055c4864ad0e83b55378c08d4c49521b5e5e9bc77550`  
		Last Modified: Tue, 15 Sep 2026 21:51:22 GMT  
		Size: 21.1 MB (21114536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7006af42ac975d3dcde4a55bd9795093efa97004f5a02ac148df2b2affd13a8`  
		Last Modified: Tue, 15 Sep 2026 21:51:21 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dd96293e65d901a2308316826c0d0abdf37ce1ed4d375469cf541a4e08b32a4`  
		Last Modified: Tue, 15 Sep 2026 21:51:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83a81239570e5732d747a5fd22940b72968f36cf2ce6dd358482a4339c0f8a4`  
		Last Modified: Tue, 15 Sep 2026 21:51:21 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b8ee06a82fb45c4b51c7239059a49a60b6368361c042698dc896697f56145e`  
		Last Modified: Wed, 16 Sep 2026 22:21:42 GMT  
		Size: 22.1 MB (22051582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d1d7cf6e89c54191c59acb257286be2c7a8103d3b2f4db4b69b8c97657bf0a`  
		Last Modified: Wed, 16 Sep 2026 22:21:43 GMT  
		Size: 38.6 MB (38610449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b66f16b16ab355ebb01a7fe7d5ee9dd19d21f10429d9e4de5ab0a7ed0a6bdae`  
		Last Modified: Wed, 16 Sep 2026 22:21:41 GMT  
		Size: 799.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a704fe757d5f9c486aae91cb6fd79457609e8fa5575f34cca5f89f2b0b414214`  
		Last Modified: Wed, 16 Sep 2026 22:21:41 GMT  
		Size: 582.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2433568953fe6a147a145b42310cefb098a42d05f7c5fcf5438f6280ce424900`  
		Last Modified: Wed, 16 Sep 2026 22:21:42 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:690945d4e52a96eadcf16ad4342e8401041da7ff4a5853c5ddbd0d38b5245b80`  
		Last Modified: Wed, 16 Sep 2026 22:21:48 GMT  
		Size: 273.3 MB (273317877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5aca085bea66ba8f461f358f8340abe1dc44448266733e4f1aa7022979dc09d`  
		Last Modified: Wed, 16 Sep 2026 22:21:44 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1662a8b13c3956b13bdeb8b8f370428004a1ed41e8e83fb7740d1ae4f4d67d51`  
		Last Modified: Wed, 16 Sep 2026 22:21:44 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:35-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:98e089a9b3ab37db66953d92a401f19f281130f3ea4ff59760fd208bae638d6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 KB (61627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b18956372409418a7cce17792c1e6c55a560c698c007de40dae3886e62f00d21`

```dockerfile
```

-	Layers:
	-	`sha256:b47e127ed2c716e0aa5917439dbbe4a89969cb4e9ee843ad6c15d301a2fa6426`  
		Last Modified: Wed, 16 Sep 2026 22:21:41 GMT  
		Size: 61.6 KB (61627 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:35-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:dc41f74c2ad46728c29517b8cc3746148a773822481933a1211c407cd331fc18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.6 MB (486585353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a784775400bc18e4a866665d4f1fbc33187f265fb041a741d89ed276d351a93`
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
# Sat, 19 Sep 2026 00:23:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 19 Sep 2026 00:23:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 19 Sep 2026 00:23:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 19 Sep 2026 00:23:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:23:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 00:23:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 00:23:26 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 00:23:26 GMT
ENV PHP_VERSION=8.5.10
# Sat, 19 Sep 2026 00:23:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Sat, 19 Sep 2026 00:23:26 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Sat, 19 Sep 2026 00:23:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 19 Sep 2026 00:23:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:26:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 19 Sep 2026 00:26:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:26:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 19 Sep 2026 00:26:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 19 Sep 2026 00:26:27 GMT
STOPSIGNAL SIGWINCH
# Sat, 19 Sep 2026 00:26:27 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 19 Sep 2026 00:26:27 GMT
WORKDIR /var/www/html
# Sat, 19 Sep 2026 00:26:27 GMT
EXPOSE map[80/tcp:{}]
# Sat, 19 Sep 2026 00:26:27 GMT
CMD ["apache2-foreground"]
# Sat, 19 Sep 2026 01:58:02 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Sat, 19 Sep 2026 02:00:09 GMT
ENV PHP_MEMORY_LIMIT=512M
# Sat, 19 Sep 2026 02:00:09 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Sat, 19 Sep 2026 02:00:09 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Sat, 19 Sep 2026 02:00:09 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:00:09 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Sat, 19 Sep 2026 02:00:09 GMT
VOLUME [/var/www/html]
# Sat, 19 Sep 2026 02:00:09 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Sat, 19 Sep 2026 02:00:09 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Sat, 19 Sep 2026 02:00:09 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Sat, 19 Sep 2026 02:00:09 GMT
ENV NEXTCLOUD_VERSION=35.0.0
# Sat, 19 Sep 2026 02:00:43 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v35.0.0/nextcloud-35.0.0.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Sat, 19 Sep 2026 02:00:43 GMT
COPY *.sh upgrade.exclude / # buildkit
# Sat, 19 Sep 2026 02:00:44 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Sat, 19 Sep 2026 02:00:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Sep 2026 02:00:44 GMT
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
	-	`sha256:0afe9a9d38447ff087f5e3049642c09a34a9a11d3cf31dc98faa64188ab0f1de`  
		Last Modified: Sat, 19 Sep 2026 00:26:44 GMT  
		Size: 4.3 MB (4338433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f43514835656d62942e1fd034db2d21e0c88b8ed2f4e847a53a7caf4a81af53`  
		Last Modified: Sat, 19 Sep 2026 00:26:44 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f341df22befb0351cc4dc36363cb13d60fc23cd47320420d4a62635b6869b3f4`  
		Last Modified: Sat, 19 Sep 2026 00:26:43 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64caaca1c1308a1c87fbe4468b747cc556411d2f19ab7874f76d749a182e32ad`  
		Last Modified: Sat, 19 Sep 2026 00:26:44 GMT  
		Size: 14.6 MB (14621239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac469efb2d028ed540869c86f5267998197fc0c9ef747c61cb7c083147cb44a2`  
		Last Modified: Sat, 19 Sep 2026 00:26:44 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f531863899598f0f83a22b5b1dff7396efa566ce703d068dd18ab184d0e65694`  
		Last Modified: Sat, 19 Sep 2026 00:26:45 GMT  
		Size: 14.5 MB (14460228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d51b506924b7ba1c0fd17888de6d54a972c1860a03e8bd790e91e5e779b5ff87`  
		Last Modified: Sat, 19 Sep 2026 00:26:45 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d30cdc92de3e42eceb0f1390861070b4c5e42031f14044ff6cef88744f4147c0`  
		Last Modified: Sat, 19 Sep 2026 00:26:45 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ea77da8b9c70b23e4d3828396a6cb36e3f8c0c9b7aa8a7c59d76c1334bc622`  
		Last Modified: Sat, 19 Sep 2026 00:26:45 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1c83e53b0ebb0313e9cb106ddbcc2484069940f3f023e442b31e569e4dda0fa`  
		Last Modified: Sat, 19 Sep 2026 02:01:22 GMT  
		Size: 20.3 MB (20288794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd3f3b5e0792db2710c659792692d27606067f87deb1e25ee03b0f2927fad2b`  
		Last Modified: Sat, 19 Sep 2026 02:01:23 GMT  
		Size: 37.1 MB (37075504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c414a39f70ab48bd91262980b132f44acf9312aeef2363b8fe367bf0a1c8f1`  
		Last Modified: Sat, 19 Sep 2026 02:01:20 GMT  
		Size: 791.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:778117f3ee0aa643b66c816c97f63cb91dec820f0f1864c40ad4e916bcdc92e8`  
		Last Modified: Sat, 19 Sep 2026 02:01:20 GMT  
		Size: 570.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381358ca5fe85d9cbd09d1477d368ca480d24a679d2558646dc6e08b18ce6bb1`  
		Last Modified: Sat, 19 Sep 2026 02:01:21 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8b774cae1148f05c7eb65bec4711f5ff3fd2e50ad1bd0f63745c7ac3565324`  
		Last Modified: Sat, 19 Sep 2026 02:01:28 GMT  
		Size: 273.3 MB (273313813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0baebc35151b753b977dcc5ea214ea08cfd288d5a3f564a4021bcad2e4d4cd9a`  
		Last Modified: Sat, 19 Sep 2026 02:01:20 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c00a439f19d6eda802b55d9f634dd70a4b17f7e7d272fadb11db0c0ce9458f`  
		Last Modified: Sat, 19 Sep 2026 02:01:23 GMT  
		Size: 2.5 KB (2549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:35-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:0836af8e98fd7bdfc5d90e4a0215dd7f008aa3d26ee6ca2544efecaa1912a7c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.5 KB (61540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0483ff3c0830bad0e83db1eb98b33c69baf0270614522fe2502e0dcbffd4e9b7`

```dockerfile
```

-	Layers:
	-	`sha256:da44d82cc2b715dd463c09a913d16d19120167a0972910d9cbd3ecb77278d2b4`  
		Last Modified: Sat, 19 Sep 2026 02:01:19 GMT  
		Size: 61.5 KB (61540 bytes)  
		MIME: application/vnd.in-toto+json
