## `nextcloud:stable-apache`

```console
$ docker pull nextcloud@sha256:0e5688ba0988b9112cf03f9c6bab53eccb466d278435f6596f16c1f25acacf74
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
$ docker pull nextcloud@sha256:1d154af14e2e590de1b3df3459e4e883e3fda7882ec49ad0e98978da868ddf9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **511.2 MB (511231470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d6741625948dbcf396b8f0849b136ea82739d3efd79691cf11403eb90e7f176`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:21:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:21:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:21:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:21:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:21:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:21:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:21:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:21:14 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:21:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:21:14 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:21:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:21:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:24:27 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:24:27 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:24:27 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:24:27 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 02:44:39 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 06 Oct 2026 02:46:45 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 06 Oct 2026 02:46:45 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 06 Oct 2026 02:46:45 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 06 Oct 2026 02:46:45 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:46:45 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 06 Oct 2026 02:46:45 GMT
VOLUME [/var/www/html]
# Tue, 06 Oct 2026 02:46:45 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 06 Oct 2026 02:46:45 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 06 Oct 2026 02:46:45 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 06 Oct 2026 02:46:45 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Tue, 06 Oct 2026 02:47:19 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:47:19 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 06 Oct 2026 02:47:19 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 06 Oct 2026 02:47:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:47:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06d38994c79b19a032ce7776dcdb8a51011c98e6705b56935e74aead91503bb`  
		Last Modified: Tue, 06 Oct 2026 01:24:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ec16867954f0644986e8414b37a5849cb07d2a8e7d8cd278c2be654c0821b1`  
		Last Modified: Tue, 06 Oct 2026 01:24:53 GMT  
		Size: 117.8 MB (117842880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadac184c029c1a71b40dd1385e7eb7d23f31cda157d0797ae49853d2764da35`  
		Last Modified: Tue, 06 Oct 2026 01:24:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37af3e95c477787b7d69fdf6bd100e2aec6c5c59b8239b541facc7bfbfc0e91`  
		Last Modified: Tue, 06 Oct 2026 01:24:50 GMT  
		Size: 4.2 MB (4239074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa171a020838bcc05bc5a1c7e4a74a2e18f6e2b7d21ff15eddfa01c184a2cc0a`  
		Last Modified: Tue, 06 Oct 2026 01:24:51 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4527b7aef5dbcaf48a24ea1fda6d7cac47e2fd6bcc0b681f361290a366475f6`  
		Last Modified: Tue, 06 Oct 2026 01:24:51 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abeca9d74cb7381d9e1b25aac55e8629c7890be8fcd33867286bd2e829ed1ab`  
		Last Modified: Tue, 06 Oct 2026 01:24:52 GMT  
		Size: 14.6 MB (14636662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1de721bd737707a80a1d444b72cc525a1ac8e2f5966cc6ac3e47258dfdd835`  
		Last Modified: Tue, 06 Oct 2026 01:24:52 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2ad9d76f9759ab7c09e2a574f19751adc25af0636ba493f1e9cc228b874e2`  
		Last Modified: Tue, 06 Oct 2026 01:24:53 GMT  
		Size: 15.2 MB (15193125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10234afeedea0abac3169513698b863017fb236609b80f86794b3142eed6325`  
		Last Modified: Tue, 06 Oct 2026 01:24:54 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4814c1f6b2f7c598af4fabaebb885063e0da0f5728f313475b605957c2708ce0`  
		Last Modified: Tue, 06 Oct 2026 01:24:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4682996e77b865fad8a9c997e326b34a7ca512700f8cbc10e46d371a6366f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:54 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e56706d2b55df760b4986accef52f12b3e7abb4782473dbcb6ced93ea49430`  
		Last Modified: Tue, 06 Oct 2026 02:47:46 GMT  
		Size: 21.5 MB (21460046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c750d37db29148167f0dc05173e0c1fd3e9243f8754ed9ee4cdf5adcb0b95a2`  
		Last Modified: Tue, 06 Oct 2026 02:47:46 GMT  
		Size: 36.9 MB (36937183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7772f93832bf4d242abe56deddd4f568276299134ca1a5cf5e77e4a928dff287`  
		Last Modified: Tue, 06 Oct 2026 02:47:45 GMT  
		Size: 790.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a7d9a41afee321ea85c30afcb98ec2ed35fd3f259a197dbe08eac4137a9f26`  
		Last Modified: Tue, 06 Oct 2026 02:47:45 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a256392989242afad6d9ebeb1240ad6fab784c29529651b2bb0e5bba4b257e3c`  
		Last Modified: Tue, 06 Oct 2026 02:47:46 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1223b1c9c526961c5f15f0d72e7673833d5de90d1273417d21f4774ae15c25b2`  
		Last Modified: Tue, 06 Oct 2026 02:47:51 GMT  
		Size: 271.1 MB (271065218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37708d3105258a160ee4c238a1bb28a83eac963d35c4b8d6d54ef02ce2743168`  
		Last Modified: Tue, 06 Oct 2026 02:47:47 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934e8074b24d93221473c8317e098b620281b870201638da34ce1aa9fdce83c5`  
		Last Modified: Tue, 06 Oct 2026 02:47:47 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:fbcc2c958f70553d3b4dc4e71772b33195dc16ca2391dac7b88c19a8e5a7cb00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 KB (62201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:451005d323030b4052e3edd906feb82263903189272d0c544df7c949140631e8`

```dockerfile
```

-	Layers:
	-	`sha256:0fde95943a286126d0249d6f9f9c474a3d48c4967ea28a2701ad6debddd682e2`  
		Last Modified: Tue, 06 Oct 2026 02:47:44 GMT  
		Size: 62.2 KB (62201 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:c9274e236b9ec77c4b3fb5778ce32769b7b48e37c5669b517cb8a11d59ac239e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **481.5 MB (481536350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7327d6a1aa30911e6ee6eb7068a4e4b2aa41ba0502ef047d14da3461a9d51ca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:24:51 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:25:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:25:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:25:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:25:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:25:13 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:25:13 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:25:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:25:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:25:23 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:25:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:25:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:25:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:25:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:25:23 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:25:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:25:23 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:25:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:25:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:28:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:28:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:28:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:28:58 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:28:58 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:28:58 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:28:58 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:28:58 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 03:15:04 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 06 Oct 2026 03:18:47 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 06 Oct 2026 03:18:47 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 06 Oct 2026 03:18:47 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 06 Oct 2026 03:18:47 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:18:48 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 06 Oct 2026 03:18:48 GMT
VOLUME [/var/www/html]
# Tue, 06 Oct 2026 03:18:48 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 06 Oct 2026 03:18:48 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 06 Oct 2026 03:18:48 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 06 Oct 2026 03:18:48 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Tue, 06 Oct 2026 03:19:38 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:19:38 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 06 Oct 2026 03:19:38 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 06 Oct 2026 03:19:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 03:19:38 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b2a2b75718692062d2233b469d344ea4056a90e5ae0e7923c7f56044257a0`  
		Last Modified: Tue, 06 Oct 2026 01:29:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652d871a56859c69353b6f9a347973471c444d71ebc370a5fae4b0629ba92799`  
		Last Modified: Tue, 06 Oct 2026 01:29:19 GMT  
		Size: 94.9 MB (94876667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb22f7db8d9c1b31afe4d104409584747ca04bc6d6f3da968209db098a0a3bd`  
		Last Modified: Tue, 06 Oct 2026 01:29:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a372f0404d02f879dc449b28ef3b436fb0eb0e40fc446f33d45889c44a2d38`  
		Last Modified: Tue, 06 Oct 2026 01:29:17 GMT  
		Size: 4.1 MB (4097275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42f4c80532182254f102c0d7d1bf6a8a996f34b5bea96664d757e5e9408d509a`  
		Last Modified: Tue, 06 Oct 2026 01:29:18 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e52495f73425630f80a99c156d0f22bf6b3c5bbade621dd9478f330b971141b`  
		Last Modified: Tue, 06 Oct 2026 01:29:18 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2db66c45cdba66e4c84a7d9ddfdadd12bb80f63ada51a76cfc89459c38155e8`  
		Last Modified: Tue, 06 Oct 2026 01:29:19 GMT  
		Size: 14.6 MB (14633785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ad27575d68d7eec50ea6bbeb740c200a094d10b4062ee4e08ca6494aaef63fd`  
		Last Modified: Tue, 06 Oct 2026 01:29:19 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85c60f0d7c355580d3d84cc573616b9cb30c111f9f0e5ea693bdea4d857a747`  
		Last Modified: Tue, 06 Oct 2026 01:29:19 GMT  
		Size: 13.3 MB (13262910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cebb2c8cf4d69d639ad1378f6de077291bc4fd5d7677a78d347fc4446109ab7c`  
		Last Modified: Tue, 06 Oct 2026 01:29:20 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7429413e13a160cc35f5649e31d7e2e46adfef2d32279219ed0dbef6b4cd99`  
		Last Modified: Tue, 06 Oct 2026 01:29:20 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cbed9ff324e9738bac5d58951df98a60c8760eb9020e1269c2ceb8700d9c01f`  
		Last Modified: Tue, 06 Oct 2026 01:29:20 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3696a334e4197185e3e9e2f3463139bc8e84aa2ae4bee35dcfda1700e250e898`  
		Last Modified: Tue, 06 Oct 2026 03:20:09 GMT  
		Size: 20.5 MB (20516843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:408b4ea98b7ab2ffaf2f7db0d1a6b5064f52c233f313059ae1014e664a756322`  
		Last Modified: Tue, 06 Oct 2026 03:20:09 GMT  
		Size: 35.1 MB (35065404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac790f8589175af0f8f0a245152b5bc134e202084e6073aef22fa2362b0cfa64`  
		Last Modified: Tue, 06 Oct 2026 03:20:08 GMT  
		Size: 795.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac6c2fbc689d19a06afb39c3f12147163261e5e6e88c7a738742a926589e6a8`  
		Last Modified: Tue, 06 Oct 2026 03:20:08 GMT  
		Size: 578.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54de469129bc41ff0f28dea94528c1d214e969a97c7c5a67592765441cb169ca`  
		Last Modified: Tue, 06 Oct 2026 03:20:09 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0bce0bffb915438944f2f5d267bb5c19cd9019a42e93ef454ae4c25139a2a2`  
		Last Modified: Tue, 06 Oct 2026 03:20:14 GMT  
		Size: 271.1 MB (271062029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5aa9f09da4be2bd468d771dc02bde0a8d4d72e73bd634c08cfd46a5a574bfc4`  
		Last Modified: Tue, 06 Oct 2026 03:20:10 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3aa281747773932b1482894dcde88a036d87658d27d903ef2bde1ace5034058`  
		Last Modified: Tue, 06 Oct 2026 03:20:10 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:111436be97d527c3fa99ab11c1152785ccf4e3ebae293f6a2e47d65bc9645ff7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 KB (62385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c80f34855c9720d0b2bff82e11069f589604fc3ae811fda0561f4c8ce0f3b18e`

```dockerfile
```

-	Layers:
	-	`sha256:0634a0011c11276f89121598cc9b3d56ac8313388453262f096fa33e2fecf72c`  
		Last Modified: Tue, 06 Oct 2026 03:20:08 GMT  
		Size: 62.4 KB (62385 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:d20aca9ef93420a1ee54a9c6b6306f696e34d719ec8a335d7de36272cf63fdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.7 MB (467687100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a6842fa749d13996d97e468f7dc1f1c182e055aa969e4e82924541cbdc48e39`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:27:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:27:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:27:47 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:27:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:27:48 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:27:48 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:31:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:31:04 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:31:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:31:05 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:31:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:31:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:34:10 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:34:10 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:34:10 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:34:10 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 03:33:55 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 06 Oct 2026 03:37:21 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 06 Oct 2026 03:37:21 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 06 Oct 2026 03:37:21 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 06 Oct 2026 03:37:21 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:37:21 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 06 Oct 2026 03:37:21 GMT
VOLUME [/var/www/html]
# Tue, 06 Oct 2026 03:37:21 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 06 Oct 2026 03:37:21 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 06 Oct 2026 03:37:21 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 06 Oct 2026 03:37:21 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Tue, 06 Oct 2026 03:38:10 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 03:38:11 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 06 Oct 2026 03:38:11 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 06 Oct 2026 03:38:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 03:38:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d460ede25fb3385204549c0698292e64106c41e80019c13740aec930cdade0`  
		Last Modified: Tue, 06 Oct 2026 01:30:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d2f00c6f9057044548c1ae704cdf4e6a25e64802e629ae720dfbfadb129524`  
		Last Modified: Tue, 06 Oct 2026 01:30:50 GMT  
		Size: 86.3 MB (86264971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4cba97257370eafe744930740cc5be563c6688bbff797ff52f25ea2083bdeb`  
		Last Modified: Tue, 06 Oct 2026 01:30:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8533be2706ee928ff1697260243f241166e50c9e5170a8a536cade43f29860`  
		Last Modified: Tue, 06 Oct 2026 01:34:20 GMT  
		Size: 3.8 MB (3763866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab07c2f207c920831f0b59d0a7f1ddeb2ba17025e01cd8f48e20d653018817f`  
		Last Modified: Tue, 06 Oct 2026 01:34:20 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905f09356c790c04a4012e32309b0c701d6c856861b707605ba63b50c54a5a93`  
		Last Modified: Tue, 06 Oct 2026 01:34:20 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df41a0b27deac8c23ea6c2b557569ab8baa512f7fb32911742fb9ab1570abc30`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 14.6 MB (14633928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a879de8db5f30ea6f70abf1500f735e73237f7ba13b4396ee0e74e45daaea1`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa6a452e6a7283bbcb55db896880b9bcc423e88184c55b9a7281f0f50d57925`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 12.6 MB (12636774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9107dd155dee6f7356e1d79d4b2363a22eeba72ea9ddc64ef8e72f4162c6e772`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe60d3a39ec5744eb09e04e1f9ef5ea9f362192e3477b1329ab4ff32f67080d`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a80d2b4169cdb89c03e7dc53a6e4d44dd5616cb04fceef6c820aee6747b761`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c919a88a8f577f98e5fc75c8e9997d5d48c2078b36cdb92cef7037270c3b277`  
		Last Modified: Tue, 06 Oct 2026 03:38:42 GMT  
		Size: 18.4 MB (18406826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b7007418d17645d8ab7d618115642148c84d54c8c48693f20d712d5ae27dcd`  
		Last Modified: Tue, 06 Oct 2026 03:38:42 GMT  
		Size: 34.6 MB (34646038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b7c7b45000f4204aa3f71f30ab48a70206bc429353ebd3b84ab6ac1d33b93ec`  
		Last Modified: Tue, 06 Oct 2026 03:38:41 GMT  
		Size: 792.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a54deb2517a9b5c72ca04286b9420e0f9bb36eb53b2572541077b46ced342c0`  
		Last Modified: Tue, 06 Oct 2026 03:38:41 GMT  
		Size: 574.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2297e386c7b73a2f41b8a419dd51455710e37d8044da96a379eedd59a3488533`  
		Last Modified: Tue, 06 Oct 2026 03:38:42 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4945d8010cda5bdf8de800f2b8d87d63d6f86ebb0d3ea0155b4d5d1cc4a2bb2`  
		Last Modified: Tue, 06 Oct 2026 03:38:47 GMT  
		Size: 271.1 MB (271062593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35555321546317a4a79dafefa6438325289af727e4c5bd32c01e59311ebeff8`  
		Last Modified: Tue, 06 Oct 2026 03:38:43 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f33e95f466554e2f352a731f661f27d2fa7ddf509c92a79b187d2e87adedd252`  
		Last Modified: Tue, 06 Oct 2026 03:38:43 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:60f93f35ffefbac676a6fed28987d7b0e9c42604ddcc9082de58a4f59a3d225a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 KB (62385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477f9ea5d7216f5741cca1d063953c171c39c568105cdac568f2e5d9382dfdb9`

```dockerfile
```

-	Layers:
	-	`sha256:b64e521e552f419de3c4a2b398ecc22ec2fd7c4686e8455ffc3e8f3ff53aa1e1`  
		Last Modified: Tue, 06 Oct 2026 03:38:41 GMT  
		Size: 62.4 KB (62385 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:9a5a24fb19745421e6485c50a1cab3d9532c59bb5ddf03aac01ad9eb1f8cd832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **502.1 MB (502130480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6adc157989d301926e225796e3ce2a703de7d720176f7688c3a3d4cd58b12b9e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:21:06 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:21:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:21:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:21:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:21:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:21:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:21:23 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:21:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:21:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:21:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:21:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:21:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:21:39 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:25:01 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:25:01 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:25:01 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:25:01 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 02:38:39 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 06 Oct 2026 02:41:38 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 06 Oct 2026 02:41:38 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 06 Oct 2026 02:41:38 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 06 Oct 2026 02:41:38 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:41:39 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 06 Oct 2026 02:41:39 GMT
VOLUME [/var/www/html]
# Tue, 06 Oct 2026 02:41:39 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 06 Oct 2026 02:41:39 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 06 Oct 2026 02:41:39 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 06 Oct 2026 02:41:39 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Tue, 06 Oct 2026 02:42:21 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:42:21 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 06 Oct 2026 02:42:21 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 06 Oct 2026 02:42:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:42:21 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb3cff3ed5c6d12e587fcf1d3c958a0aa558085f4c61e7f500f25ad596241c8`  
		Last Modified: Tue, 06 Oct 2026 01:25:22 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6c490b6fbed29387e934b76c4adf4483597151f5c0ea4edb364b9d163f2680`  
		Last Modified: Tue, 06 Oct 2026 01:25:25 GMT  
		Size: 110.2 MB (110179368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c313724d28c43dad9f9a70b83664d1c226a1526fdeb254de05672eb9a9cf574e`  
		Last Modified: Tue, 06 Oct 2026 01:25:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26927100228d8d32c9bca523ccaf7dcacefcf7594e04b6d1597aaa981a043cd3`  
		Last Modified: Tue, 06 Oct 2026 01:25:23 GMT  
		Size: 4.3 MB (4314438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55494ee3c0696dd307a9e4232ace97ce88019e8ff31f692d1a752426d4594939`  
		Last Modified: Tue, 06 Oct 2026 01:25:23 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e1d5ac410126dd897a90cf5ee5ee4e83a69ef067fe9174ee0cce240c585391`  
		Last Modified: Tue, 06 Oct 2026 01:25:24 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b00d683c0242d74528f7b991c6353f605b00520234957f96a72c8f354c100e0`  
		Last Modified: Tue, 06 Oct 2026 01:25:24 GMT  
		Size: 14.6 MB (14636214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1de83bc612772a14e1524714148c17e99d273fbd7caa370e38655e97a5c14b`  
		Last Modified: Tue, 06 Oct 2026 01:25:25 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f69f3c819aca41043bd4b999ac9402fb8a3a3c9a10eaa90db39e69e3591b2c6`  
		Last Modified: Tue, 06 Oct 2026 01:25:25 GMT  
		Size: 14.8 MB (14756918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b00a15ef4bc9c359a7b6eb9ab5c5702957ffac926873e60aa9181eb9faadc5`  
		Last Modified: Tue, 06 Oct 2026 01:25:26 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae06c250deb8110ddcfb9e1fa981b7dced7822f982bb75bfd82109fdee90ab6`  
		Last Modified: Tue, 06 Oct 2026 01:25:26 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74044605f48190ec1ab60671c416f9d877753ade1d7149e059097dc76f6d46c0`  
		Last Modified: Tue, 06 Oct 2026 01:25:27 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a0f6610db1d7a7a274f1305a3d630cbda8d21d8d3c8ac83a1c4d0459b3dc9f`  
		Last Modified: Tue, 06 Oct 2026 02:42:52 GMT  
		Size: 20.1 MB (20141721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3096fd88877d36d9aa0f386797accaf7485ac75740813ec59fc2375afc8cff26`  
		Last Modified: Tue, 06 Oct 2026 02:42:53 GMT  
		Size: 36.8 MB (36823193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65821428fc531965d21474316b674249619f076c38b6848219f058990ca65cd0`  
		Last Modified: Tue, 06 Oct 2026 02:42:51 GMT  
		Size: 793.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be636d6da3e1f679641fa6659a802dacc98469e12aaa34dc6f81f662da6766c`  
		Last Modified: Tue, 06 Oct 2026 02:42:51 GMT  
		Size: 570.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f24c09b6a217101a12d3d40a719768716f7f30c3161233a964fcf810532a575`  
		Last Modified: Tue, 06 Oct 2026 02:42:52 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319df0f53c5acdac0f4842b25138d8a76a3a5e64be544a2cb5c566b9888b239f`  
		Last Modified: Tue, 06 Oct 2026 02:42:57 GMT  
		Size: 271.1 MB (271064415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b164825d2ea9dd14309801493711713094187da7788c6121936814356a90a48e`  
		Last Modified: Tue, 06 Oct 2026 02:42:54 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8de1a84da878cdace3e3661474dc9037ad23fd1a7b59752adf3bd3edea6c832`  
		Last Modified: Tue, 06 Oct 2026 02:42:54 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:126a206cf9ccbea070dd038b350aa3f8a75afdd9be955b61d4a10611f8d11797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.5 KB (62451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f052e4191b0c979d6661b7eeba4ca60ee1211f72a07ddf7f44ef0fddeab0d65a`

```dockerfile
```

-	Layers:
	-	`sha256:bcf9c579a3a48c450d7a28e50045d7c19af3e93d89a79f69496a3e63eb1e4811`  
		Last Modified: Tue, 06 Oct 2026 02:42:51 GMT  
		Size: 62.5 KB (62451 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; 386

```console
$ docker pull nextcloud@sha256:4e3baa205e1bd46383da4861abd9f42e0e18787a1aaa2783073eddff414e5c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **512.4 MB (512377964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544d10c99ad480649e58f94575100ea600009d30eb50365016713cb59b0b8507`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:21:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:22:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:22:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:22:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:22:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:22:22 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:22:22 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:22:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:22:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:22:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:22:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:22:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:22:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:26:22 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:26:22 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:26:22 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:26:22 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 02:43:58 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 06 Oct 2026 02:46:22 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 06 Oct 2026 02:46:22 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 06 Oct 2026 02:46:22 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 06 Oct 2026 02:46:22 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:46:22 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 06 Oct 2026 02:46:22 GMT
VOLUME [/var/www/html]
# Tue, 06 Oct 2026 02:46:23 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 06 Oct 2026 02:46:23 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 06 Oct 2026 02:46:23 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 06 Oct 2026 02:46:23 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Tue, 06 Oct 2026 02:46:59 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:47:00 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 06 Oct 2026 02:47:00 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 06 Oct 2026 02:47:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:47:00 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10fcafa6d3cca6533cc1c913c67edbd15b62fc0b07ff8a0c4fed55517bbe466`  
		Last Modified: Tue, 06 Oct 2026 01:26:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f226632471a620b16e5e51f47bd84a6fbf26514b6a60e07f89ae4dddecf86644`  
		Last Modified: Tue, 06 Oct 2026 01:26:47 GMT  
		Size: 116.1 MB (116149067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02c051f47314dad0de0732c594c03c8986a6da635c7fc1999f5b634731af144`  
		Last Modified: Tue, 06 Oct 2026 01:26:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f0b7a23ad56b2656c627073e1b6df61e0272a58a24ef7212659ab7e372277f`  
		Last Modified: Tue, 06 Oct 2026 01:26:45 GMT  
		Size: 4.5 MB (4471220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2303944d59a7ae0dd0c66c1d35d95cce49d52a4e9a4810268414195d4ef32f84`  
		Last Modified: Tue, 06 Oct 2026 01:26:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb8a507a493b924c99aefae41484e4a25bb8716300bf33bb78a7a5433719863`  
		Last Modified: Tue, 06 Oct 2026 01:26:45 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e8468bbaa6d68b43805fc26eec6af1c38a4969ec535dae6bb697798fe692cb`  
		Last Modified: Tue, 06 Oct 2026 01:26:47 GMT  
		Size: 14.6 MB (14635509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273eb0a4cedbbe00c9c45571649d68191663f34c15bcddb8e9147d6ac1ad55b6`  
		Last Modified: Tue, 06 Oct 2026 01:26:47 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24cc7643dba8d3a0b6c6f4de904a4ccd0025e543b97273c426adebb2b600418`  
		Last Modified: Tue, 06 Oct 2026 01:26:47 GMT  
		Size: 15.6 MB (15608905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b3039f930d038ed45940ea89d03bb959b99687eae8e39947db0990698b8da0`  
		Last Modified: Tue, 06 Oct 2026 01:26:48 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1710034fc1ce26038b2f606307c10adaece180f0cf46bb01168d49e73573452`  
		Last Modified: Tue, 06 Oct 2026 01:26:48 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fdbbe34f0e69558c14715663a7a2378ea5984e865dd3226f3517dc103f0f14`  
		Last Modified: Tue, 06 Oct 2026 01:26:48 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af8c7ed4aa7625a7d714df8d09026504b3e0e12cfce47c943942ece7ce41cb7`  
		Last Modified: Tue, 06 Oct 2026 02:47:26 GMT  
		Size: 21.7 MB (21744422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5f5406f5f630c1cfcca7a90321b7a7d50f9b648f23eba264e97b8ca60ba6b6`  
		Last Modified: Tue, 06 Oct 2026 02:47:27 GMT  
		Size: 37.3 MB (37337811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4320e5dfcd3e2b08ce4e5c6aebb319d36dc5ff1f6dd1f3d5badae9684f74c2`  
		Last Modified: Tue, 06 Oct 2026 02:47:25 GMT  
		Size: 794.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd28ffa06bf83874ed2b5085b1eb27fbf972a4d8bb9d18cb4fce25fe6dbebac8`  
		Last Modified: Tue, 06 Oct 2026 02:47:25 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367d4d55bd04b7775590fe284f1110036309bd550445d5de4bab3a3a41f0513b`  
		Last Modified: Tue, 06 Oct 2026 02:47:27 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4b171ff30d17e5b2cd4e59f1ef3c52e8fdc9716de5f8dce2112e78626855914`  
		Last Modified: Tue, 06 Oct 2026 02:47:32 GMT  
		Size: 271.1 MB (271063797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f557f0ddf21de49c2bede6f17ec706b7a34fb96509c43833fa780999cbd1d70`  
		Last Modified: Tue, 06 Oct 2026 02:47:28 GMT  
		Size: 4.1 KB (4135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35208b2a28fe10bae3d0c81c642cd5763fa0e57edabcf0f3c9c2f115d0d04e6`  
		Last Modified: Tue, 06 Oct 2026 02:47:28 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:32303fdc29e23a2f7c224e0045b4fe88d8c1e144e96285b0b3719356a86bfb3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 KB (62129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659e4adb36e8dc224d87d1e4d0a917e55583a0585cb5ed1e7c97a86ed550fcd1`

```dockerfile
```

-	Layers:
	-	`sha256:0bcd30e1c6fd89cdede868b52ab7be6369e79abc35097dfbc86528d16726645d`  
		Last Modified: Tue, 06 Oct 2026 02:47:25 GMT  
		Size: 62.1 KB (62129 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:44aeeea2070303361f9014e37d0f711e7222c4e84f469d3514a99a8e2bd5401b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.3 MB (510254471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8cee2acd4af3ec8f976a4751f3f9be8abc01411cdf1ec83acce81a1da1a4b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:05:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 02:06:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 02:06:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:06:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 02:06:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 02:06:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 02:06:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 02:14:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 02:14:25 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 02:14:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 02:38:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 02:38:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:43:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 02:43:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:43:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 02:43:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 02:43:51 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 02:43:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:43:52 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 02:43:52 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 02:43:52 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 13:40:14 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 06 Oct 2026 13:46:07 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 06 Oct 2026 13:46:07 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 06 Oct 2026 13:46:07 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 06 Oct 2026 13:46:07 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 13:46:08 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 06 Oct 2026 13:46:08 GMT
VOLUME [/var/www/html]
# Tue, 06 Oct 2026 13:46:09 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 06 Oct 2026 13:46:09 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 06 Oct 2026 13:46:10 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 06 Oct 2026 13:46:10 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Tue, 06 Oct 2026 13:47:13 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 13:47:13 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 06 Oct 2026 13:47:13 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 06 Oct 2026 13:47:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 13:47:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f4c3ba8f520985bdafac3d3cf597f71fc2df13a13c28d40fa74686237cddca`  
		Last Modified: Tue, 06 Oct 2026 02:13:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ec1afed59b6051b2c4360952bc5184afdd5f96bfc6375613861a64dd0931a6`  
		Last Modified: Tue, 06 Oct 2026 02:13:42 GMT  
		Size: 109.6 MB (109613006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808db6c906f6422950e5d4354d10cdb64c810315d4f011e8b2a3e0a263c035e`  
		Last Modified: Tue, 06 Oct 2026 02:13:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb34396ca65b7de68ca91d2fffa68cff8ad9622eb4be9ee1ad4f2b99ab396cbd`  
		Last Modified: Tue, 06 Oct 2026 02:22:10 GMT  
		Size: 4.9 MB (4896922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dc20a3709861d6fb705b736002aaf915f9505e1b57b85a0be64e2e04d44b17`  
		Last Modified: Tue, 06 Oct 2026 02:22:10 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48dada0fcbe125591b76d10b2317e9a578244febc1e11352bf93fe4587ea642`  
		Last Modified: Tue, 06 Oct 2026 02:22:10 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21de91135bdc4206f8776b7eae0e221bc726b139d04f3f85935f5f08a4207a`  
		Last Modified: Tue, 06 Oct 2026 02:44:30 GMT  
		Size: 14.6 MB (14635650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfa36c207d6e443980a24c97dbd6371bfbff715f27da9a5624d6005dbdfd8cf`  
		Last Modified: Tue, 06 Oct 2026 02:44:29 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c42ffc1505b43039fec68d63506645d8483d0577a009e2fe61f1b9465f09dd`  
		Last Modified: Tue, 06 Oct 2026 02:44:30 GMT  
		Size: 15.2 MB (15185004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26db9ffb61fbfd88bc5f8c7455c482ccdb9fc494ba2bf6ebc2055068ee081ce9`  
		Last Modified: Tue, 06 Oct 2026 02:44:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90d5e6e7ef4618613c546186e6073f65aaac824455d9aac8d5d1286df5c7ca9`  
		Last Modified: Tue, 06 Oct 2026 02:44:30 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff703047c3fcf38dda1201fe2a54caa45bb08e86ef84a32db3a6491fd7ebff47`  
		Last Modified: Tue, 06 Oct 2026 02:44:30 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1211043996b7db0b98286d8d1bc588dc714788562eb656018d93c0b3c9e3198`  
		Last Modified: Tue, 06 Oct 2026 13:48:09 GMT  
		Size: 22.6 MB (22580957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f4d746ae7bf8cae4fe80d44a2bf1f765fcbf89e321633c06aeaa95125802d0`  
		Last Modified: Tue, 06 Oct 2026 13:48:10 GMT  
		Size: 38.6 MB (38612186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35e207c3e8ab51b38e0ad007f0f56e53577e7937b18f2b0b4e51ede97da2ab2`  
		Last Modified: Tue, 06 Oct 2026 13:48:08 GMT  
		Size: 796.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8474356ac8f0fac8efd1fcde5af9d02a41585953721f71e9de122698a3bd2664`  
		Last Modified: Tue, 06 Oct 2026 13:48:08 GMT  
		Size: 578.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586310512fcaa58173697ac88630156ee97116399d7833b435dd39d01f3d1967`  
		Last Modified: Tue, 06 Oct 2026 13:48:10 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d321c413f0e71bca5bed614cfb674e9423e8cd79f683d8a02f53f20769b8da`  
		Last Modified: Tue, 06 Oct 2026 13:48:15 GMT  
		Size: 271.1 MB (271065195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1729f06a12a0e5b0a0a5a51502fa51efbc8b7a710d2ffb7ae5da5b8737f85378`  
		Last Modified: Tue, 06 Oct 2026 13:48:11 GMT  
		Size: 4.1 KB (4134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d6de298b1425905b0afb95cd5682588742dfdb8c45921735da332dc175a30f`  
		Last Modified: Tue, 06 Oct 2026 13:48:11 GMT  
		Size: 2.5 KB (2550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:190d9972bf1858ab2dea1dcf7b78a71b4f392dba391123169382a630230c3e96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 KB (62291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c390b2c9c2087f038de9f38ce1ee4b6afa2aa387dac639cefea6502ac683a8f`

```dockerfile
```

-	Layers:
	-	`sha256:8979ceb8a896a75988254a43bc7d905b35e2476adc901ebff6af25ea87ded22e`  
		Last Modified: Tue, 06 Oct 2026 13:48:08 GMT  
		Size: 62.3 KB (62291 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; riscv64

```console
$ docker pull nextcloud@sha256:a0b3b495f6bfc2216e0730fb3a8318a27d83b5ac9ec9a5ddbe2f569390e66fd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **544.7 MB (544686829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f67776b137f123d2bfbbd36f7a14d55e0cd636f063038d1ac169b8bddd203b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 13:40:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 13:42:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 13:42:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 13:42:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 13:42:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 13:42:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 13:42:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 14:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 14:48:33 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 17:57:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 17:57:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 18:57:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 18:57:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 18:57:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 18:57:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 18:57:56 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 18:57:56 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 18:57:56 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 18:57:56 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 18:57:56 GMT
CMD ["apache2-foreground"]
# Thu, 08 Oct 2026 20:38:39 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 08 Oct 2026 21:15:35 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 08 Oct 2026 21:15:35 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 08 Oct 2026 21:15:35 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 08 Oct 2026 21:15:35 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 21:15:36 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 08 Oct 2026 21:15:36 GMT
VOLUME [/var/www/html]
# Thu, 08 Oct 2026 21:15:37 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Thu, 08 Oct 2026 21:15:37 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Thu, 08 Oct 2026 21:15:37 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Thu, 08 Oct 2026 21:15:37 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Thu, 08 Oct 2026 21:20:16 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 08 Oct 2026 21:20:17 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 08 Oct 2026 21:20:17 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 08 Oct 2026 21:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 08 Oct 2026 21:20:17 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48aaf34f6bbd390cdb6465c85eb5a7f863d1234fcab5d9f06f044f3083428268`  
		Last Modified: Tue, 06 Oct 2026 14:45:17 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e83dba9bd9a90fae32fda7544beed84181e93ba7de5e63377339f9b1c98dc7`  
		Last Modified: Tue, 06 Oct 2026 14:45:44 GMT  
		Size: 146.6 MB (146597027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29baf3a93736ee739c55151019f11266588429784b2b8a433a17201dc995d68`  
		Last Modified: Tue, 06 Oct 2026 14:45:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4b8c8d7858f65af436bdc1c287c7f87605de438f0cde1f5223d97f7e86cdfd`  
		Last Modified: Tue, 06 Oct 2026 15:48:27 GMT  
		Size: 4.0 MB (4047419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641e32a1ed79b687c6aca6f0e89a3398c7c1e37545fb8ed0330b48875ac88df2`  
		Last Modified: Tue, 06 Oct 2026 15:48:26 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c2230167315d1d89238b6af4f2b8714ed13e4a337b367cde24217b1098e9a5`  
		Last Modified: Tue, 06 Oct 2026 15:48:26 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb79af22041feaebdce777641d11376aae65c808b6569327cc6ea2f39aded9`  
		Last Modified: Tue, 06 Oct 2026 19:01:25 GMT  
		Size: 14.6 MB (14635606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295ab5a6636592c5e621731c2b7c409c8fb4a0fdc2cf087b02133eb1c50a8cf2`  
		Last Modified: Tue, 06 Oct 2026 19:01:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcd002d23b3323ec5b49f25b43f9fc856213b5ad1041823dba6e2d787be979f`  
		Last Modified: Tue, 06 Oct 2026 19:01:26 GMT  
		Size: 14.1 MB (14104497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dbc04bda6f28dbff8df8e478c95b78da2da238c95bdb20f1494261257ed15a`  
		Last Modified: Tue, 06 Oct 2026 19:01:21 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398062558475d24c6d49e49427b9071ab8f80f17e12e980d9694345116acdd49`  
		Last Modified: Tue, 06 Oct 2026 19:01:23 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5acb4d25f83790b27076ea838f61679b5ddfb13bd1955918e465b65647048e`  
		Last Modified: Tue, 06 Oct 2026 19:01:24 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7774b46de8f8450ce2399405835e1da5282fe9c3fbc2c7545698c0cff45973`  
		Last Modified: Thu, 08 Oct 2026 21:27:00 GMT  
		Size: 19.9 MB (19913267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d270a3f85581cbc71872f222cf1227f69def37b574243fd8e68c7b484c338d28`  
		Last Modified: Thu, 08 Oct 2026 21:27:08 GMT  
		Size: 46.0 MB (45968024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a6aa080352be5ad28589c98ecaa87833b2cb0585532f65d45af4778404a7356`  
		Last Modified: Thu, 08 Oct 2026 21:26:53 GMT  
		Size: 797.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff976600a4196492ffe2d1d46be8d89239926fd6dfc448cb7d7e042a4d3fc856`  
		Last Modified: Thu, 08 Oct 2026 21:26:52 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6590354f73fd44eea5a70093c824ef38042107bce5a54dcd3b02aa1d2c9abf99`  
		Last Modified: Thu, 08 Oct 2026 21:26:54 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc41076305473b7969e0dd6766c5d1b425fc9277b45e72ffc609422d0d44d9c`  
		Last Modified: Thu, 08 Oct 2026 21:27:42 GMT  
		Size: 271.1 MB (271073238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b853af40e4d351ebb47996eac2fa9293c93577886df3252bd1c5595f0ac2cb`  
		Last Modified: Thu, 08 Oct 2026 21:26:57 GMT  
		Size: 4.1 KB (4137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d284766f7a1f302342e03d589a91d8bee329419ecb60dae6601bd0d56937a6`  
		Last Modified: Thu, 08 Oct 2026 21:27:00 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:a2db84ff4745b957ece9c6a272b7be3454d1ad32f70d8fab93d01592ae309a3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 KB (62291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568e70b37c1ceb2af3292a4288f5d19616395c0512a4f2e8dce60033c1c571c2`

```dockerfile
```

-	Layers:
	-	`sha256:df76b6007a82f1d2bec7798c65fc3716c7a4fb4c2f4699cebeb4516111c0b9ea`  
		Last Modified: Thu, 08 Oct 2026 21:26:52 GMT  
		Size: 62.3 KB (62291 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-apache` - linux; s390x

```console
$ docker pull nextcloud@sha256:75b403c8b7374ebe9b4b785db9d020277dd232f6b1202578a9c43a83f7221d79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.9 MB (484874671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77406150d43457e7808fabf4fd8931973a8074bf305531858acdea3b11663236`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:20:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:20:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:20:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:20:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:20:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:20:36 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:20:36 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:24:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:24:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:27:32 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:27:32 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:27:32 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:27:32 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 02:55:48 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 06 Oct 2026 02:58:02 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 06 Oct 2026 02:58:02 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 06 Oct 2026 02:58:02 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 06 Oct 2026 02:58:02 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:58:02 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 06 Oct 2026 02:58:02 GMT
VOLUME [/var/www/html]
# Tue, 06 Oct 2026 02:58:02 GMT
RUN a2enmod headers rewrite remoteip ;     {      echo 'RemoteIPHeader X-Real-IP';      echo 'RemoteIPInternalProxy 10.0.0.0/8';      echo 'RemoteIPInternalProxy 172.16.0.0/12';      echo 'RemoteIPInternalProxy 192.168.0.0/16';     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip # buildkit
# Tue, 06 Oct 2026 02:58:02 GMT
ENV APACHE_BODY_LIMIT=1073741824
# Tue, 06 Oct 2026 02:58:02 GMT
RUN {      echo 'LimitRequestBody ${APACHE_BODY_LIMIT}';     } > /etc/apache2/conf-available/apache-limits.conf;     a2enconf apache-limits # buildkit
# Tue, 06 Oct 2026 02:58:02 GMT
ENV NEXTCLOUD_VERSION=34.0.4
# Tue, 06 Oct 2026 02:58:32 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.4/nextcloud-34.0.4.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:58:32 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 06 Oct 2026 02:58:32 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 06 Oct 2026 02:58:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Oct 2026 02:58:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c91620974d08bb58f31425d89c71eb019c1b831653d750708927ef95e21402`  
		Last Modified: Tue, 06 Oct 2026 01:23:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518a5e39bfbf0adf885bceb28955afa7d9aab04b7156e7954655d2b1d249cfc9`  
		Last Modified: Tue, 06 Oct 2026 01:23:56 GMT  
		Size: 92.6 MB (92574660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da235c7b6698ddf09a93cb34c609557ee0b2d5275fb8689801285fd21fc188c0`  
		Last Modified: Tue, 06 Oct 2026 01:23:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fd9ea9d15582ffd25516088bf7a5da6a1b2cc58a616e523e985785be637e4c`  
		Last Modified: Tue, 06 Oct 2026 01:23:55 GMT  
		Size: 4.3 MB (4338457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93840999bdee60be8f9e326ffe7ba11cf6cc82b90fc17eb95abe1b017a36c0d7`  
		Last Modified: Tue, 06 Oct 2026 01:23:55 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c09c4138934f435453647a21294d5951fb5ea2db1be5fa89cc4e253c9a3ca0`  
		Last Modified: Tue, 06 Oct 2026 01:23:55 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d5ffb340ecd8fae75f7785c550bd2c36e501affef034c6676e24297a480057`  
		Last Modified: Tue, 06 Oct 2026 01:27:48 GMT  
		Size: 14.6 MB (14634856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2027b94bcb16a77358f38e22c0c538d204045e7e7beba2ecec46292fdbbed2aa`  
		Last Modified: Tue, 06 Oct 2026 01:27:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af0d356b7fc3d3928c77a4df5e6dccd1b7e03ba834921a89f335a70e69c92a6`  
		Last Modified: Tue, 06 Oct 2026 01:27:49 GMT  
		Size: 14.5 MB (14462826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a1c236e4bd0937ca32076d46eef3823b1f2d57ba37238be582148267d9e547`  
		Last Modified: Tue, 06 Oct 2026 01:27:48 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377a092069621035c87653eefd1b73249837fe5a85228e2a9751eb783df3b397`  
		Last Modified: Tue, 06 Oct 2026 01:27:49 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d33c06d8107beff662a7fef285772234ede698715e14716084afc9cece0bca4`  
		Last Modified: Tue, 06 Oct 2026 01:27:49 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb2d1f2d0ca45b1f557b5989d2375be6f2bdde58eb1a76d282b44e573e8e9b5`  
		Last Modified: Tue, 06 Oct 2026 02:59:08 GMT  
		Size: 20.8 MB (20799819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb7e9945d7d230d576379bc820814c727317bfdc9a2b3a86a26b79f548f9839`  
		Last Modified: Tue, 06 Oct 2026 02:59:08 GMT  
		Size: 37.1 MB (37078138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e692f4edfb9ec332c4afd5f06aa59261ff85105e2cb0869f490fb701a76592`  
		Last Modified: Tue, 06 Oct 2026 02:59:08 GMT  
		Size: 798.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bfbed529f66b07525b8dd7750954d7928094706d8aad7eaa1af9075d8019409`  
		Last Modified: Tue, 06 Oct 2026 02:59:08 GMT  
		Size: 571.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ac04963c22b5e9bebfb1765b73d82744d0805f5c7f9a1b2a8472465d88c8cb`  
		Last Modified: Tue, 06 Oct 2026 02:59:09 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592d6dd1e87e1b711e2eb9c5fa093bd49d9e6dc8c69d93a3c373943d704c0aba`  
		Last Modified: Tue, 06 Oct 2026 02:59:13 GMT  
		Size: 271.1 MB (271062729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869a28d14a7e2e0dfbcb9324a81f029dd99d270eabc1766252610646a591be08`  
		Last Modified: Tue, 06 Oct 2026 02:59:09 GMT  
		Size: 4.1 KB (4136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da50f58f66054c2d3930df12421421257af1ca008f045e1572ba644bc52150c1`  
		Last Modified: Tue, 06 Oct 2026 02:59:10 GMT  
		Size: 2.5 KB (2546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-apache` - unknown; unknown

```console
$ docker pull nextcloud@sha256:c5979f30acc1bc9a57def446c56449b431a4e1635268e23d59b9cffa77bd0b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 KB (62191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f76f9bef125a18e32fdea7048a41cdbcb62d9de40c2893c61e118fe2eb05a20`

```dockerfile
```

-	Layers:
	-	`sha256:87fc4e2739544ae5776441dc56a862a64ce2829eecf78799fbfe5912db5c2255`  
		Last Modified: Tue, 06 Oct 2026 02:59:08 GMT  
		Size: 62.2 KB (62191 bytes)  
		MIME: application/vnd.in-toto+json
