## `friendica:dev`

```console
$ docker pull friendica@sha256:9aefd64035213968fd1af5d9e75380ac7f8042d1fc422b399d9af18c169c5936
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

### `friendica:dev` - linux; amd64

```console
$ docker pull friendica@sha256:0917475193f751b96f24df4f33a44b8eedd0ee6dcb44e2b75e3126a3efed26b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270569283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cd17019403fbb01ea907ab95827439ce621ebfad55b5941ce323022320c2b05`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:29 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:18:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:18:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:18:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:18:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:18:46 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:18:46 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:18:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:18:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:18:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:18:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:18:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:18:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:18:51 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 28 Oct 2026 01:18:51 GMT
ENV PHP_VERSION=8.4.27
# Wed, 28 Oct 2026 01:18:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 28 Oct 2026 01:18:51 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 28 Oct 2026 01:22:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:22:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:24:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:24:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:24:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:24:47 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:24:47 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:24:47 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:24:47 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:24:47 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 02:27:52 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Wed, 28 Oct 2026 02:28:00 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:28:00 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:30:09 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:30:09 GMT
ENV PHP_MEMORY_LIMIT=512M
# Wed, 28 Oct 2026 02:30:09 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Wed, 28 Oct 2026 02:30:09 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Wed, 28 Oct 2026 02:30:09 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Wed, 28 Oct 2026 02:30:10 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Wed, 28 Oct 2026 02:30:10 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 02:30:10 GMT
VOLUME [/var/www/data]
# Wed, 28 Oct 2026 02:30:10 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Wed, 28 Oct 2026 02:30:10 GMT
ENV FRIENDICA_VERSION=2026.11-dev
# Wed, 28 Oct 2026 02:30:14 GMT
RUN set -ex;     fetchDeps="       gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps; # buildkit
# Wed, 28 Oct 2026 02:30:14 GMT
COPY *.sh upgrade.exclude / # buildkit
# Wed, 28 Oct 2026 02:30:14 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Wed, 28 Oct 2026 02:30:14 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Wed, 28 Oct 2026 02:30:14 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b9574074e697fa66c3a9de92c88ab21a16393c952c97bf4bb2c31e8323bf2d3`  
		Last Modified: Wed, 28 Oct 2026 01:21:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bdc43c2c152fab84908765353c69ae8ac5a7fd0c75747d9df30adeac5f0bf44`  
		Last Modified: Wed, 28 Oct 2026 01:21:58 GMT  
		Size: 117.8 MB (117837894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb7a62bfbbda21766edcb38b0ca4d242aedf3f790102be3e62c62e616001b37e`  
		Last Modified: Wed, 28 Oct 2026 01:21:52 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcb306bf64eb03583d793b85bf4597aabf6dd2df0ab70f16623481e8f64d2d0a`  
		Last Modified: Wed, 28 Oct 2026 01:21:53 GMT  
		Size: 4.2 MB (4244047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b816fb0d0bda584b2c75ee0c51911e127af3d8cc0ae359592f327361eb8d088e`  
		Last Modified: Wed, 28 Oct 2026 01:21:54 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff8c9a1d97245c8cbc5a52d8e53758c86de19dcef4e42bc48ea19f378acafce`  
		Last Modified: Wed, 28 Oct 2026 01:21:54 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4bfd0f22dad33f771057b203bb40db39769f6a3cc2f0e1dedc57b731cddd4c0`  
		Last Modified: Wed, 28 Oct 2026 01:24:59 GMT  
		Size: 14.0 MB (14030170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de6c0396e0ea3f5ae84ec817c206f6db0f56772a696b07105214def4d5b1aaf5`  
		Last Modified: Wed, 28 Oct 2026 01:24:57 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da50abaf91d1288cd2dce45b23d35fdfed51a47209f600cda72fb242663a68e3`  
		Last Modified: Wed, 28 Oct 2026 01:24:58 GMT  
		Size: 13.8 MB (13755681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a4be3c16cdb2b5b549fbf4011c76cde8dace3b72607e892e041b75e712ed10`  
		Last Modified: Wed, 28 Oct 2026 01:24:57 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39cdefafb9a0225efeb52577c4a718f73d541f323538e5688e5ed032d3c5c29e`  
		Last Modified: Wed, 28 Oct 2026 01:24:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bcb484f998c620744e3c20a71a7d7a690aa94e06d84c991d38f7e1a758328a`  
		Last Modified: Wed, 28 Oct 2026 01:24:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef086bb33edd467a624a099680efd3406fd434a0dd4ac7a6d4e71be3cab11f3f`  
		Last Modified: Wed, 28 Oct 2026 01:24:59 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f378a05a14250218d05b8e6272f92993e7679ebc7ebe2d3fb9992284111f654`  
		Last Modified: Wed, 28 Oct 2026 02:30:23 GMT  
		Size: 20.9 MB (20876530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9587caf67bffae72f0fb4ec6f25685adb791dbb6277527b6a160b75184a6a4c`  
		Last Modified: Wed, 28 Oct 2026 02:30:23 GMT  
		Size: 936.1 KB (936064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e04a0ce7c28635b85f28d5340cbb1e870e0f0c210fc1a5c21fafba933ab6df3`  
		Last Modified: Wed, 28 Oct 2026 02:30:24 GMT  
		Size: 49.8 MB (49765854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:619807f8c8a36ceb6ec88fa05f191715fe3f5aefd6af99831ba0d561158d55c3`  
		Last Modified: Wed, 28 Oct 2026 02:30:23 GMT  
		Size: 591.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee73011a03f19d1008c28324990f1d8b2bbe4a180116818b102cc1ebc06954b6`  
		Last Modified: Wed, 28 Oct 2026 02:30:24 GMT  
		Size: 587.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2bbf71d41abdd36d661b8dfc8da212cb0e9b16e318e39affd9575af10ee92ec`  
		Last Modified: Wed, 28 Oct 2026 02:30:24 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9546978ed2002898904e50dd9afd3947dd73aeffd902212c3b753e9786d8466`  
		Last Modified: Wed, 28 Oct 2026 02:30:25 GMT  
		Size: 19.3 MB (19255971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e58e02c40309d79af058ff82c555f4726f19d76697cf0d7cc8f21cef5fad42`  
		Last Modified: Wed, 28 Oct 2026 02:30:25 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a09bb5241813addccff12c01e121cef5d6778638c19c5e81f6621e43948526`  
		Last Modified: Wed, 28 Oct 2026 02:30:25 GMT  
		Size: 924.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:dev` - unknown; unknown

```console
$ docker pull friendica@sha256:176813ca482c050f6030a97b4fb493061828f977363d5311c70058e726536f25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 KB (65808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5cd2d7bf38cd2fb1b24c2a07e72861e940072399d2814a9db85fa1385c31fff`

```dockerfile
```

-	Layers:
	-	`sha256:7b7ebacedd890b5ba5125ebf2887f0f363b0bc1c3f8b1e6a8abf25686c99a7e3`  
		Last Modified: Wed, 28 Oct 2026 02:30:22 GMT  
		Size: 65.8 KB (65808 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:dev` - linux; arm variant v5

```console
$ docker pull friendica@sha256:e10083efb3bb67e40b9ad59f042852a983339f3fdab63b220c322f24cb33ec2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.1 MB (240132193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fb61df5b4c7ee20025d6f3d1f9a686fc2431a0267a0876d94a9a4a57f80818`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:18:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:18:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:18:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:18:31 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:18:31 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:22:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:22:39 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:22:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:22:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:22:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:22:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:22:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 28 Oct 2026 01:22:39 GMT
ENV PHP_VERSION=8.4.27
# Wed, 28 Oct 2026 01:22:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 28 Oct 2026 01:22:39 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 28 Oct 2026 01:22:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:22:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:26:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:09 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:26:09 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:26:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:26:09 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:26:09 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:09 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:26:09 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:26:09 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 03:06:31 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Wed, 28 Oct 2026 03:06:46 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:06:46 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:10:31 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:10:31 GMT
ENV PHP_MEMORY_LIMIT=512M
# Wed, 28 Oct 2026 03:10:31 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Wed, 28 Oct 2026 03:10:31 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Wed, 28 Oct 2026 03:10:31 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Wed, 28 Oct 2026 03:10:31 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Wed, 28 Oct 2026 03:10:31 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 03:10:31 GMT
VOLUME [/var/www/data]
# Wed, 28 Oct 2026 03:10:31 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Wed, 28 Oct 2026 03:10:31 GMT
ENV FRIENDICA_VERSION=2026.11-dev
# Wed, 28 Oct 2026 03:10:40 GMT
RUN set -ex;     fetchDeps="       gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps; # buildkit
# Wed, 28 Oct 2026 03:10:40 GMT
COPY *.sh upgrade.exclude / # buildkit
# Wed, 28 Oct 2026 03:10:40 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Wed, 28 Oct 2026 03:10:40 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Wed, 28 Oct 2026 03:10:40 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dda3eafdf1d48354b1efb94d39a4c17e83a2659b0fdbb42c5530614dd56eeff9`  
		Last Modified: Wed, 28 Oct 2026 01:22:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7d51be5d91b4cabd11103f37a4d6cc104811e049c7319523d72978f723a61c`  
		Last Modified: Wed, 28 Oct 2026 01:22:22 GMT  
		Size: 94.9 MB (94882936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afac3a0631ba5d8bc84c66e32cba098802f5fae525c38b60d12cfede91e6b51`  
		Last Modified: Wed, 28 Oct 2026 01:22:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ab534e5b0e9519af78e5a9f47c699ebe7704da60a7fe25319c15d3a45674ac`  
		Last Modified: Wed, 28 Oct 2026 01:26:20 GMT  
		Size: 4.1 MB (4100028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095e628f3053fdb7100e95cfba4750b719885d63a13e3250135ffc18f212c506`  
		Last Modified: Wed, 28 Oct 2026 01:26:20 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed5cb745a6f3975192a7c2ba7a4251ecd2f73545d04507e4d726e4c2f5da6c14`  
		Last Modified: Wed, 28 Oct 2026 01:26:19 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c327db66c8225ff58acad1465e5a2d5bf8ba6d78d08225e5013836d79b6e4ab0`  
		Last Modified: Wed, 28 Oct 2026 01:26:20 GMT  
		Size: 14.0 MB (14027354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bf2ec5fefb582455872975472426d9150c60434a7ea85602a2ff9fc9a04257`  
		Last Modified: Wed, 28 Oct 2026 01:26:20 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ccd42f69f6ad1ec0ad5048c856442379cbcacf99f6ef4d9058f55406017fb20`  
		Last Modified: Wed, 28 Oct 2026 01:26:21 GMT  
		Size: 12.4 MB (12360313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659a18fc53697283283286d3400ed5316e1d7af20fa2913bfe6355de31d380f5`  
		Last Modified: Wed, 28 Oct 2026 01:26:21 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346685dd241fed22cc319cd8b7a49c1a411609d1fc47b03b744c53282f931d84`  
		Last Modified: Wed, 28 Oct 2026 01:26:21 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7a7118396ac58c9acd3f6ff89b9cb897807d375b89617b6458f4be8dcf6c73`  
		Last Modified: Wed, 28 Oct 2026 01:26:22 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72f6e961dd01a900c146d30a7fa75d957be4e64a39d9f53bfd4a874db4f4828`  
		Last Modified: Wed, 28 Oct 2026 01:26:22 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c18060b82a9da09ad6ae74156a52e0d434e913e8a699ac31073f9feda87b324`  
		Last Modified: Wed, 28 Oct 2026 03:10:50 GMT  
		Size: 20.2 MB (20191741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a38b03caafd70763c515d0dcdfd4aff45680537accf1e78de5ffa34311f0a8e`  
		Last Modified: Wed, 28 Oct 2026 03:10:49 GMT  
		Size: 904.3 KB (904311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c9a8f4d09f0144e348d844d24266272c7fd79253c28d48b0860c3113ac4a12`  
		Last Modified: Wed, 28 Oct 2026 03:10:50 GMT  
		Size: 46.9 MB (46894424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a01e5b2541b398d5d270a1cba6082b5d112b81aaf004a26eb25fec358ffe5a4`  
		Last Modified: Wed, 28 Oct 2026 03:10:49 GMT  
		Size: 590.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f82df3e7eb821b449439847e928a99d7777139472cc0f3465226859ceb0282c`  
		Last Modified: Wed, 28 Oct 2026 03:10:50 GMT  
		Size: 580.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe91d56036082c09bf75a5d51ddd93edf98a4330f0331f8770d9c758e050d7c`  
		Last Modified: Wed, 28 Oct 2026 03:10:50 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ae48c9a5ae594eadae47070b5ab18ec40e39dbd20d470844ca4c76f577cb66`  
		Last Modified: Wed, 28 Oct 2026 03:10:52 GMT  
		Size: 18.7 MB (18740579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1beebda8bfe3c192e711b682290fbb3da2ac9758d81430128368a6e1356d464d`  
		Last Modified: Wed, 28 Oct 2026 03:10:51 GMT  
		Size: 3.9 KB (3855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c9c6d11e13f92d98c72108c619ee6b718955b0926aa880303f449a488b02ce`  
		Last Modified: Wed, 28 Oct 2026 03:10:51 GMT  
		Size: 925.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:dev` - unknown; unknown

```console
$ docker pull friendica@sha256:5795d1da9f3afa2002940058a060c9f94bcbbc603b457c9381d69560b07c4efe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 KB (65956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe2f1febea824f968d736af755aae79c50029ac84687df188a6aebc67ed6d6ad`

```dockerfile
```

-	Layers:
	-	`sha256:e4c1074da6bba02d8b506a1653fbae00bfc4fce255c96b464c8178c00803ca80`  
		Last Modified: Wed, 28 Oct 2026 03:10:48 GMT  
		Size: 66.0 KB (65956 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:dev` - linux; arm variant v7

```console
$ docker pull friendica@sha256:35d09748b0aeb6b0f13904eea09b074e3adf7e409667afd91baa41763a14d3e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.0 MB (226956939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df92e2685c76c5fce84984dc534512319c98839772f15c8cd5b347cef71c1cc7`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:23:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:23:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:23:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:23:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:23:26 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:23:26 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:23:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:23:34 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:23:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:23:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:23:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:23:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:23:34 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 28 Oct 2026 01:23:34 GMT
ENV PHP_VERSION=8.4.27
# Wed, 28 Oct 2026 01:23:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 28 Oct 2026 01:23:34 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 28 Oct 2026 01:33:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:33:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:36:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:36:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:36:26 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:36:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:36:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:36:26 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:36:26 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:36:26 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:36:26 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:36:26 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 03:31:12 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Wed, 28 Oct 2026 03:31:24 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 03:31:24 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 03:34:16 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:34:16 GMT
ENV PHP_MEMORY_LIMIT=512M
# Wed, 28 Oct 2026 03:34:16 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Wed, 28 Oct 2026 03:34:16 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Wed, 28 Oct 2026 03:34:16 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Wed, 28 Oct 2026 03:34:16 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Wed, 28 Oct 2026 03:34:16 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 03:34:16 GMT
VOLUME [/var/www/data]
# Wed, 28 Oct 2026 03:34:16 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Wed, 28 Oct 2026 03:34:16 GMT
ENV FRIENDICA_VERSION=2026.11-dev
# Wed, 28 Oct 2026 03:34:23 GMT
RUN set -ex;     fetchDeps="       gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps; # buildkit
# Wed, 28 Oct 2026 03:34:23 GMT
COPY *.sh upgrade.exclude / # buildkit
# Wed, 28 Oct 2026 03:34:23 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Wed, 28 Oct 2026 03:34:23 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Wed, 28 Oct 2026 03:34:23 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5168b650d8f6b9f0dfd1592209d49191bf2b85f105be976b997e3324873d9863`  
		Last Modified: Wed, 28 Oct 2026 01:26:46 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2995dd4489847de3bec53a38bb5807dbe135be6c2e640cb01baac184dce7e3`  
		Last Modified: Wed, 28 Oct 2026 01:26:49 GMT  
		Size: 86.3 MB (86256978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea0a2ecbc5015f69c2a008faea28932a4361d23bd472b9284b2aa861fd610b5`  
		Last Modified: Wed, 28 Oct 2026 01:26:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5feda0cce4171de897d18b84fd8a59ecf72c6c4f7445f7ff13884651527c32`  
		Last Modified: Wed, 28 Oct 2026 01:26:47 GMT  
		Size: 3.8 MB (3768250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba41f9e6ec926891e5d2a9fff43f5c4c17b7d0745c43ec047b6c1677a830f91`  
		Last Modified: Wed, 28 Oct 2026 01:26:48 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a18dda3f9f6b169ad38c1c502d42dad140f35e8c63ce52c3ad4fa729972504d`  
		Last Modified: Wed, 28 Oct 2026 01:26:48 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162716007a882b3ceb956c6a140e2578bbfeb9b55751928fa144a88140975ace`  
		Last Modified: Wed, 28 Oct 2026 01:36:37 GMT  
		Size: 14.0 MB (14027458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15715b544b9b85f7d2bd89d83cda9be8cd551c2dfb11d3d517cff540ece7a270`  
		Last Modified: Wed, 28 Oct 2026 01:36:36 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:252df75fce1d2eace59b4eb87091a2412e327397a1a18f3886323a3f6290ee2d`  
		Last Modified: Wed, 28 Oct 2026 01:36:37 GMT  
		Size: 11.8 MB (11762153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0051c5ced5a15b9831050498c35d34f6c5f2acedeadcb6a53f49d839f155cc`  
		Last Modified: Wed, 28 Oct 2026 01:36:36 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d82baddc1fb443d5290c775a4df7d2bb7161377ba28b4b155daf707c17b6e84`  
		Last Modified: Wed, 28 Oct 2026 01:36:37 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dad7dced797545e05db7f525563f86aeee0a850a8bf23533ec6932b93dfd4bb`  
		Last Modified: Wed, 28 Oct 2026 01:36:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:936a93f7b960f17e298153da48d4c42894f15ddea04a37526c383f997f48c7b4`  
		Last Modified: Wed, 28 Oct 2026 01:36:38 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ecdf12a8ffab51ee16087d603ecdd90862762252d0254d0ace563e00a486c13`  
		Last Modified: Wed, 28 Oct 2026 03:34:32 GMT  
		Size: 20.1 MB (20094960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258d0316e68bb50cde5488c73e3ae9abd8219d7d06a08a385b7756528e876162`  
		Last Modified: Wed, 28 Oct 2026 03:34:31 GMT  
		Size: 900.3 KB (900326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c7e09f33bb17fb29ea2dbf788c3aa448355e8d4b18b236642babebb42912eee`  
		Last Modified: Wed, 28 Oct 2026 03:34:33 GMT  
		Size: 45.1 MB (45147225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dec06a9c75a0937c7f17fef4a2b5839fb9c2d80abb2bcf7bbcbedc1cd41334`  
		Last Modified: Wed, 28 Oct 2026 03:34:31 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b3a4f112ca4576a14d152119f482bd1289777afc1603fe32ac2fdfb93834159`  
		Last Modified: Wed, 28 Oct 2026 03:34:32 GMT  
		Size: 582.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a846fc7616f83c4d3d9663d79edb89614a2e76734f0949dd3dc6f976a6c2623`  
		Last Modified: Wed, 28 Oct 2026 03:34:32 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eac365d4cc8179d85cc32eba74a372870e22d06c06edeb925e135075f340e08`  
		Last Modified: Wed, 28 Oct 2026 03:34:34 GMT  
		Size: 18.7 MB (18715596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68c161c0fd69025bda72ee3e83ff76976dec4abf437850356b3fe179a3b60ddd`  
		Last Modified: Wed, 28 Oct 2026 03:34:34 GMT  
		Size: 3.9 KB (3854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70e096331d1f67fccba56e22c5fff698c4256dc6af8bbebb3f59b8b7019953b`  
		Last Modified: Wed, 28 Oct 2026 03:34:34 GMT  
		Size: 925.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:dev` - unknown; unknown

```console
$ docker pull friendica@sha256:74ed78f702fb0c197fad87e058540e16835c6f3971b772c87774ae6a61cebd22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 KB (65956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848d9231c1b10fdbf57206c152acc116791f82ffd905eeff316b9e2500a377d1`

```dockerfile
```

-	Layers:
	-	`sha256:bd79369032b3ee1af3c1b314a3145a7111fe2dc7158e470c3f2e46bdc444d0ea`  
		Last Modified: Wed, 28 Oct 2026 03:34:31 GMT  
		Size: 66.0 KB (65956 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:dev` - linux; arm64 variant v8

```console
$ docker pull friendica@sha256:cb4aae9e7abce392251461681da456ec7c13304c1f9db597bfd0ef17aeae614f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 MB (261278349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31e34f6664bd1154d9a010f5d8bbb41d7291336c26e03350c9d307abadb25b6f`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:22:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:23:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:23:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:23:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:23:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:23:09 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:23:09 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:23:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:23:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:23:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:23:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:23:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:23:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:23:16 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 28 Oct 2026 01:23:16 GMT
ENV PHP_VERSION=8.4.27
# Wed, 28 Oct 2026 01:23:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 28 Oct 2026 01:23:16 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 28 Oct 2026 01:23:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:23:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:26:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:37 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:26:37 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:26:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:26:37 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:26:37 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:37 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:26:37 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:26:37 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 02:39:18 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Wed, 28 Oct 2026 02:39:26 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:39:26 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:42:09 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:42:09 GMT
ENV PHP_MEMORY_LIMIT=512M
# Wed, 28 Oct 2026 02:42:09 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Wed, 28 Oct 2026 02:42:09 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Wed, 28 Oct 2026 02:42:10 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Wed, 28 Oct 2026 02:42:10 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Wed, 28 Oct 2026 02:42:10 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 02:42:10 GMT
VOLUME [/var/www/data]
# Wed, 28 Oct 2026 02:42:10 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Wed, 28 Oct 2026 02:42:10 GMT
ENV FRIENDICA_VERSION=2026.11-dev
# Wed, 28 Oct 2026 02:42:15 GMT
RUN set -ex;     fetchDeps="       gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps; # buildkit
# Wed, 28 Oct 2026 02:42:15 GMT
COPY *.sh upgrade.exclude / # buildkit
# Wed, 28 Oct 2026 02:42:15 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Wed, 28 Oct 2026 02:42:15 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Wed, 28 Oct 2026 02:42:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf70b66c8445ea6edbbacd61ff99a14338f98a39af8e7d364e83b33a221e842a`  
		Last Modified: Wed, 28 Oct 2026 01:26:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0603e5ef75c2ec23e18e0a7a22d4ac234bb99f44484fb965a972cdc1f0f9a69`  
		Last Modified: Wed, 28 Oct 2026 01:27:01 GMT  
		Size: 110.2 MB (110178455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b05b1741122dd05398839d8a4ae86e48c0b008c944ba6183b63890208e20d4b`  
		Last Modified: Wed, 28 Oct 2026 01:26:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249a92bbca5c3c259afee9b7154e162350d129b810ebfe89c2ed68c86de44443`  
		Last Modified: Wed, 28 Oct 2026 01:26:58 GMT  
		Size: 4.3 MB (4321199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e297ab5fbaaf2679451841ab3ae116ae5535f04238d161d22db1614470aa74df`  
		Last Modified: Wed, 28 Oct 2026 01:26:59 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9710d004ed80add43525445291232b4884eb091fda71ba406b4fddb47ce6294d`  
		Last Modified: Wed, 28 Oct 2026 01:26:59 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d42f832c9f44680f73c5f3d6b84aaa190b84630a991da4939d1d25464ab8851`  
		Last Modified: Wed, 28 Oct 2026 01:27:00 GMT  
		Size: 14.0 MB (14029714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a20b51eda28bf73b374aa53b3cb146e642af38fc72b19f86061bc9721a8c81f`  
		Last Modified: Wed, 28 Oct 2026 01:27:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:562a23fb755dd2343970a57e67d17ec9bd6c708248712e5bfe44fc3bc05dad47`  
		Last Modified: Wed, 28 Oct 2026 01:27:01 GMT  
		Size: 13.4 MB (13401380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ad4af4617da1a64a7fe87b676e72fa93121be944abab8a1a14195b8fb72b59`  
		Last Modified: Wed, 28 Oct 2026 01:27:01 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb09ecaae3a5233a492e61a7deb8d32983e398aba9867ea492a4c4acdc3004bd`  
		Last Modified: Wed, 28 Oct 2026 01:27:02 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb02907d65a904dfac8b8ab1e6caa308ac363a943cfe426fcce4ce599c886614`  
		Last Modified: Wed, 28 Oct 2026 01:27:02 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153a19a4bcf3238cf215501c8da29ab162f8e59a81e787445e6eca678a3decda`  
		Last Modified: Wed, 28 Oct 2026 01:27:03 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c86fcfa63a52afce34abdb70f771563e4367225ca270f1e029cdc8eb895b351`  
		Last Modified: Wed, 28 Oct 2026 02:42:24 GMT  
		Size: 20.6 MB (20621249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fb9d60687a551e49c7e4a87698e229090cfc955b58894318ae066c8e7f38f1`  
		Last Modified: Wed, 28 Oct 2026 02:42:24 GMT  
		Size: 889.6 KB (889554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1abaff46f60cbd2cd519e4223faf882862d7982473f46e48452054d53d57e8`  
		Last Modified: Wed, 28 Oct 2026 02:42:25 GMT  
		Size: 48.5 MB (48487226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f966553bbc9af676dbf0e1bd4e4b2298a5fd20f9b62060b120ebb82c184663bc`  
		Last Modified: Wed, 28 Oct 2026 02:42:23 GMT  
		Size: 590.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:952d3345868263c83dc2a180d9ec9d1e6fff3bca18ddb705a067cf0cb32bc714`  
		Last Modified: Wed, 28 Oct 2026 02:42:24 GMT  
		Size: 581.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31ac6db1675fd78f7a4f4ef4982e66036c2c98039624a9c76de6e096a4fc942`  
		Last Modified: Wed, 28 Oct 2026 02:42:25 GMT  
		Size: 139.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6cb4dc61eb06ddc518a320d64b0de56af81d06c4779662fca8f9be19de93e1b`  
		Last Modified: Wed, 28 Oct 2026 02:42:26 GMT  
		Size: 19.1 MB (19124253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1aec373f3f2c76d4d11f49c8c13359949a49d4c4950ff0f8baf6c3d69546171`  
		Last Modified: Wed, 28 Oct 2026 02:42:26 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04306d0200bff6fb1aabb9adf5ca6481de97e22c57f184d590190737e8ff9216`  
		Last Modified: Wed, 28 Oct 2026 02:42:26 GMT  
		Size: 924.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:dev` - unknown; unknown

```console
$ docker pull friendica@sha256:52d1a0b967910135bed00d9b6e919ad7acefff32c568e1ca70c93f949572ed30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 KB (66002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2488d4657b2a73eb09aaa9a4bc3b65008d12c7bd861c90045f175ea14b16bde`

```dockerfile
```

-	Layers:
	-	`sha256:cb38aeae180ad0e95aedb448ac7512b6e89bd1bcf6a63a246217b52dd549f6b1`  
		Last Modified: Wed, 28 Oct 2026 02:42:23 GMT  
		Size: 66.0 KB (66002 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:dev` - linux; 386

```console
$ docker pull friendica@sha256:5518e27d3050211fcd0f07ff7a7a672c4662205764f41e662ae804299eba532f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271867562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a52a470d0edc5cd181cf6b425dcc93a0ec076f79baee7ce065f5389498807195`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:22:51 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:23:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:23:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:23:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:23:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:23:10 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:23:10 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:23:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:23:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:23:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:23:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:23:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:23:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:23:17 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 28 Oct 2026 01:23:17 GMT
ENV PHP_VERSION=8.4.27
# Wed, 28 Oct 2026 01:23:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 28 Oct 2026 01:23:17 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 28 Oct 2026 01:23:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:23:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:26:34 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:34 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:26:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:26:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:26:34 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:26:34 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:26:34 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:26:34 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:26:34 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 02:32:48 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Wed, 28 Oct 2026 02:32:58 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 02:32:58 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 02:35:27 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:35:27 GMT
ENV PHP_MEMORY_LIMIT=512M
# Wed, 28 Oct 2026 02:35:27 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Wed, 28 Oct 2026 02:35:28 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Wed, 28 Oct 2026 02:35:28 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Wed, 28 Oct 2026 02:35:28 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Wed, 28 Oct 2026 02:35:28 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 02:35:28 GMT
VOLUME [/var/www/data]
# Wed, 28 Oct 2026 02:35:28 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Wed, 28 Oct 2026 02:35:28 GMT
ENV FRIENDICA_VERSION=2026.11-dev
# Wed, 28 Oct 2026 02:35:33 GMT
RUN set -ex;     fetchDeps="       gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps; # buildkit
# Wed, 28 Oct 2026 02:35:33 GMT
COPY *.sh upgrade.exclude / # buildkit
# Wed, 28 Oct 2026 02:35:33 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Wed, 28 Oct 2026 02:35:33 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Wed, 28 Oct 2026 02:35:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8de786efd9f843bb6c3b38a5b42b133b1940ce9f9efbdcf2a555339daf02c662`  
		Last Modified: Wed, 28 Oct 2026 00:11:00 GMT  
		Size: 31.4 MB (31368586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ddaebc5deb4a835055ecfdd83570530e2374e50c29d0f885cd4fe6c2653d1ef`  
		Last Modified: Wed, 28 Oct 2026 01:26:56 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d5e2376a5b84dea21ac16f27b5c1b95877ecdfcacb3e738a90000b56ef50eba`  
		Last Modified: Wed, 28 Oct 2026 01:26:58 GMT  
		Size: 116.1 MB (116139378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:526cef976c286917c4b1aef2d2beccba27b19363a8a3023c67e844908908101d`  
		Last Modified: Wed, 28 Oct 2026 01:26:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04076c9f9d159ea3d1f21b901973aeb78dce4d0006f87c40425ae0db0fae019d`  
		Last Modified: Wed, 28 Oct 2026 01:26:56 GMT  
		Size: 4.5 MB (4476994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74247f85f8ae4d6092873e74cd1b58b23585f3ada0f8e34aa00adee91936946`  
		Last Modified: Wed, 28 Oct 2026 01:26:57 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d5f3ed41c708fc28534581d549819bf5ef76ca2fe2818ea2dfbb4510eb8c9d`  
		Last Modified: Wed, 28 Oct 2026 01:26:57 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b92be1a8c780910cb298176be7408cdaf4fd64e58221b59246c7799206540c5`  
		Last Modified: Wed, 28 Oct 2026 01:26:58 GMT  
		Size: 14.0 MB (14029028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eae740816c907399399daae6de6ca1b4a73d46d5589f68d7fc6af3155a8485cb`  
		Last Modified: Wed, 28 Oct 2026 01:26:58 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3765a04c15f7fdd41e4d9f1c2a3273936c587e14e814930fce6de7919944b1`  
		Last Modified: Wed, 28 Oct 2026 01:26:58 GMT  
		Size: 14.1 MB (14136331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dcfe00d7882a36ecd1f09f91a7bcb8a4dd8cad3c4329a0edd4cd23f8de721a`  
		Last Modified: Wed, 28 Oct 2026 01:26:59 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a1d619d1e1663a876d23571e27014a296c7db353818d97975fcc89dcd5c291`  
		Last Modified: Wed, 28 Oct 2026 01:26:59 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07da265e68aa5670f09550a8b78ef9c482f2f0c9cb9f8d90d32098e79fb86f5`  
		Last Modified: Wed, 28 Oct 2026 01:27:00 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e855f41f57499de17462f25a61436de4edc36b204fc5d4e35811ebdeb8eb801`  
		Last Modified: Wed, 28 Oct 2026 01:27:00 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2884e54918c0f08becfc4d8c6c36df1ce52686c2c97f2a6c48f7a9fa3bcc8e`  
		Last Modified: Wed, 28 Oct 2026 02:35:43 GMT  
		Size: 21.1 MB (21105271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d289b66b7e946cabb415004db429c2032bd8e2dd6030bbbafae04019157891e`  
		Last Modified: Wed, 28 Oct 2026 02:35:42 GMT  
		Size: 904.8 KB (904751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd81b11636da2f7fe70248ef4c75f6f981ee297a91f39cd2b4df796f2ada622f`  
		Last Modified: Wed, 28 Oct 2026 02:35:43 GMT  
		Size: 50.1 MB (50080235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981810e3f2b1829ac9968e8304bfdabe4cac3e7f442752fb3772a8cad73f3cf2`  
		Last Modified: Wed, 28 Oct 2026 02:35:42 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9772c7dc49781b33a848e2ecd22ab327bc40cc955795e7fdea7e076411b78b1e`  
		Last Modified: Wed, 28 Oct 2026 02:35:43 GMT  
		Size: 580.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa32c2c3ab794d505d1c3e01ad6a8b54b7995e358fabb4644edbe0afe63be08`  
		Last Modified: Wed, 28 Oct 2026 02:35:43 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef20ba1625bcd42debc19ea5c5db1601ebc1c31ce11e2ce6e5c37830ac04565`  
		Last Modified: Wed, 28 Oct 2026 02:35:44 GMT  
		Size: 19.6 MB (19615170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ab61907dafd5e980f203414c3c6fe5a880fe24cb538b261057cf7c4e8bd44c`  
		Last Modified: Wed, 28 Oct 2026 02:35:44 GMT  
		Size: 3.9 KB (3855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cdc31781b4343ba23fe5db70114c6dae84eb6683c07c67a8505265231f0c0b`  
		Last Modified: Wed, 28 Oct 2026 02:35:44 GMT  
		Size: 924.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:dev` - unknown; unknown

```console
$ docker pull friendica@sha256:0f8e5dd29fe3ff8f7a2a094760a30c2bf6068dcef94b33e712710dccf5cf621d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 KB (65764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd4cdd8ae4f406006cd50aefd2323e91e452a68d4cd695d58fc0c67c13ca77d5`

```dockerfile
```

-	Layers:
	-	`sha256:f8dda32293d3962a22bbdf5fe34735fe84f008508db1ce343fe852ecf57d86a5`  
		Last Modified: Wed, 28 Oct 2026 02:35:41 GMT  
		Size: 65.8 KB (65764 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:dev` - linux; ppc64le

```console
$ docker pull friendica@sha256:289ca6db2f9e331c8ec7d4550a7d854b4347f765368b1d59d05a50707b0c43e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269380134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb34ed201dc4c3b68cfb23208cb034aa57549f7ba58e6eabd2e8776d02890eef`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 19:38:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 19:38:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 19:46:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 19:46:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 19:46:07 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 19:46:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 19:46:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 19:46:08 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 19:46:08 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 19:46:09 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 19:46:09 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 19:46:09 GMT
CMD ["apache2-foreground"]
# Tue, 27 Oct 2026 20:11:25 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Tue, 27 Oct 2026 20:11:45 GMT
ENV GOSU_VERSION=1.19
# Tue, 27 Oct 2026 20:11:45 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Tue, 27 Oct 2026 20:16:59 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 20:16:59 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 27 Oct 2026 20:16:59 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 27 Oct 2026 20:16:59 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Tue, 27 Oct 2026 20:16:59 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Tue, 27 Oct 2026 20:17:00 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Tue, 27 Oct 2026 20:17:00 GMT
VOLUME [/var/www/html]
# Tue, 27 Oct 2026 20:17:00 GMT
VOLUME [/var/www/data]
# Tue, 27 Oct 2026 20:17:00 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Tue, 27 Oct 2026 20:17:00 GMT
ENV FRIENDICA_VERSION=2026.11-dev
# Tue, 27 Oct 2026 20:23:51 GMT
RUN set -ex;     fetchDeps="       gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps; # buildkit
# Tue, 27 Oct 2026 20:23:52 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 27 Oct 2026 20:23:52 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Tue, 27 Oct 2026 20:23:52 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Tue, 27 Oct 2026 20:23:52 GMT
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
	-	`sha256:5c439b9c14c96a7e4f9eedd3f174f43625d4978a83e9779d614aa3384fa8706c`  
		Last Modified: Wed, 21 Oct 2026 19:46:45 GMT  
		Size: 14.0 MB (14045628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2d59b9468b4cb493469d9f672e4d570de87decc8f84e1247147eeca35afedaa`  
		Last Modified: Wed, 21 Oct 2026 19:46:44 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dc9f5b95c2900b83105b22ce2982fcc8d419548e2e4d13655b9551aafeeebb9`  
		Last Modified: Wed, 21 Oct 2026 19:46:45 GMT  
		Size: 14.2 MB (14165987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:731bb91d82409eda4f6fe37e1906e434e057b548bad57b2cf47de89196e7ae4e`  
		Last Modified: Wed, 21 Oct 2026 19:46:44 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c36c669e3a9f83f1a7ab9cb4c824bc7e16f31ef03488ae917291264c7cbcea`  
		Last Modified: Wed, 21 Oct 2026 19:46:45 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937164a917ae1050e72c4dd88bd2420a0b328f6b9d7c5ca15ef4c7adae7cb3d1`  
		Last Modified: Wed, 21 Oct 2026 19:46:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e205fff38082cea8dc33d3baab9c4814a9baea67fa6ffd84e3ee2d096e0603d`  
		Last Modified: Wed, 21 Oct 2026 19:46:46 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f21d40b795e5e2692539d9533fa626366d446444b7186853d0c6e1d3bab5a534`  
		Last Modified: Tue, 27 Oct 2026 20:18:13 GMT  
		Size: 21.1 MB (21067501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9855559726ea18d3bfee3fba453d66264c27f5bad09c0daed15a5d97ed3481e6`  
		Last Modified: Tue, 27 Oct 2026 20:18:12 GMT  
		Size: 894.4 KB (894438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6825bb2b0dccd7e8041ffafdd4eef6b2456afa79afc708ea352aeb29a5127d9a`  
		Last Modified: Tue, 27 Oct 2026 20:18:14 GMT  
		Size: 51.7 MB (51669388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c9d853d05e6a16f1d738ae3b1ca96170ec4e3a8f1750ab83d9c5efb3584999`  
		Last Modified: Tue, 27 Oct 2026 20:18:12 GMT  
		Size: 591.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8583e8332bfb4f7d2faaf360483319847973d48311aa780c34f51264958ffbe9`  
		Last Modified: Tue, 27 Oct 2026 20:18:13 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f8f5145f503ee4011602ab3898c75dcc6b24ae8ae027f7b1366b856a61a917c`  
		Last Modified: Tue, 27 Oct 2026 20:18:14 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026fae8fdd11962ac538eb0ced9cf7634ed9df6dea19ee8c9f57451a853c5fcb`  
		Last Modified: Tue, 27 Oct 2026 20:24:02 GMT  
		Size: 19.4 MB (19360580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c956711ff37d8650d631ebdafe36f7e716ed27ed42fb3bdfe217e60eeec2df4`  
		Last Modified: Tue, 27 Oct 2026 20:24:02 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ddebbadf54953e4775649d542cbfcd00f85985d797b669ce6f16cbbdbd48fc`  
		Last Modified: Tue, 27 Oct 2026 20:24:02 GMT  
		Size: 924.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:dev` - unknown; unknown

```console
$ docker pull friendica@sha256:2eea30a7d8aa609b68d8decd6162c28bd8a99862e3530101a3d16a1cd226b49a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 KB (65864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d733c3aa05ccd2a35f427d8111e9172dcce0a0d86d969eb154f1677247341d5`

```dockerfile
```

-	Layers:
	-	`sha256:d86b980b52e2a5f40373dd1b0e380e42cfee273adc8a917f3e38c13bbcaee5d0`  
		Last Modified: Tue, 27 Oct 2026 20:24:01 GMT  
		Size: 65.9 KB (65864 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:dev` - linux; riscv64

```console
$ docker pull friendica@sha256:3cfa5187dc5ebc6ea978c8974d6d2b2024ef3daece9578cb13511b150305afa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.5 MB (303496312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02afe7bb7059839c92470eb2825a9de1ca7c4e8181855e934aa8e69a5bf28c7c`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 10:44:03 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Fri, 23 Oct 2026 17:03:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 23 Oct 2026 17:03:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:01:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 23 Oct 2026 18:01:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:01:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 23 Oct 2026 18:01:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 23 Oct 2026 18:01:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 23 Oct 2026 18:01:52 GMT
STOPSIGNAL SIGWINCH
# Fri, 23 Oct 2026 18:01:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 23 Oct 2026 18:01:52 GMT
WORKDIR /var/www/html
# Fri, 23 Oct 2026 18:01:52 GMT
EXPOSE map[80/tcp:{}]
# Fri, 23 Oct 2026 18:01:52 GMT
CMD ["apache2-foreground"]
# Mon, 26 Oct 2026 21:44:03 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Mon, 26 Oct 2026 21:45:27 GMT
ENV GOSU_VERSION=1.17
# Mon, 26 Oct 2026 21:45:27 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 26 Oct 2026 22:14:49 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 22:14:49 GMT
ENV PHP_MEMORY_LIMIT=512M
# Mon, 26 Oct 2026 22:14:49 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Mon, 26 Oct 2026 22:14:49 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Mon, 26 Oct 2026 22:14:50 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Mon, 26 Oct 2026 22:14:51 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Mon, 26 Oct 2026 22:14:51 GMT
VOLUME [/var/www/html]
# Mon, 26 Oct 2026 22:14:51 GMT
VOLUME [/var/www/data]
# Mon, 26 Oct 2026 22:14:51 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Mon, 26 Oct 2026 22:14:51 GMT
ENV FRIENDICA_VERSION=2026.08-dev
# Mon, 26 Oct 2026 22:15:46 GMT
RUN set -ex;     fetchDeps="       gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps; # buildkit
# Mon, 26 Oct 2026 22:15:46 GMT
COPY *.sh upgrade.exclude / # buildkit
# Mon, 26 Oct 2026 22:15:46 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Mon, 26 Oct 2026 22:15:46 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Mon, 26 Oct 2026 22:15:46 GMT
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
	-	`sha256:f83acbfea40d9cafef12538e160f12c6b5ff26379304bb15e8e549d80019a2a1`  
		Last Modified: Fri, 23 Oct 2026 18:05:19 GMT  
		Size: 14.0 MB (14044067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc587bb5835e7f3e7fb1a78b6ca5fabcd678c230d8cbeb6e4542557675269e87`  
		Last Modified: Fri, 23 Oct 2026 18:05:15 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:301d1676c6e4743e47dfc7202068f5f6e6db7adc438e578e3d7b1946655e817a`  
		Last Modified: Fri, 23 Oct 2026 18:05:18 GMT  
		Size: 13.2 MB (13165346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:770b2da420683b6cec62bde8bcf0c476aae8cefd438367603461c5720c415c07`  
		Last Modified: Fri, 23 Oct 2026 18:05:14 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d60889d9ffbe3e4cf4b7b4f43d01e12f765692ccb8bca69af1b57d1428acb39`  
		Last Modified: Fri, 23 Oct 2026 18:05:17 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb051d536394b4c5e6865fe641ad101c1cac2b00420d94fb1ffd0f5506e50746`  
		Last Modified: Fri, 23 Oct 2026 18:05:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9a850f8d448877cbcc8ebd2615b0f30e7c6a122a58f9bb9bb517db954a3cc5`  
		Last Modified: Fri, 23 Oct 2026 18:05:19 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494552379a1b50fce6fa2011a230a9e39796632639e07e0e9cbe8dca2ed54f7f`  
		Last Modified: Mon, 26 Oct 2026 22:18:07 GMT  
		Size: 20.3 MB (20277245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381728779f8eecb65a4945662a751bcdd02b44c9844e2dbcb172a4aa12e82fd2`  
		Last Modified: Mon, 26 Oct 2026 22:18:01 GMT  
		Size: 1.1 MB (1103967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3668c8c607fbdb9d05a2f0796408a2d726127f67453249c1f5a804cedca06e74`  
		Last Modified: Mon, 26 Oct 2026 22:18:15 GMT  
		Size: 57.2 MB (57222985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9381646f8824bb44de252b3ca1600cca97cc4ecce774a7768d055015de5abc`  
		Last Modified: Mon, 26 Oct 2026 22:18:00 GMT  
		Size: 594.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1afdc687b1e65674fc0a751c22a12c72bd0bb9435cff23a67a2fa67fd59a916f`  
		Last Modified: Mon, 26 Oct 2026 22:18:02 GMT  
		Size: 593.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe0f21b8496d7467454ad2efd9cd0ac6427d7e30f54c1b2e09d5f9b3ffbcca68`  
		Last Modified: Mon, 26 Oct 2026 22:18:03 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df138f3cf51267c989888e682069b221d05f52c8d0e50dbbaefddd0dcbcd37c0`  
		Last Modified: Mon, 26 Oct 2026 22:18:11 GMT  
		Size: 18.7 MB (18696269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2a8592e0ed091ac71757e7ffdcc14387883529ce29a9c35ad69dc4a4dfc212`  
		Last Modified: Mon, 26 Oct 2026 22:18:05 GMT  
		Size: 3.8 KB (3779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a952a47ed06f03c1148aa1499645bfe8d6d8afa73951693f3532ce9d401efa19`  
		Last Modified: Mon, 26 Oct 2026 22:18:07 GMT  
		Size: 926.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:dev` - unknown; unknown

```console
$ docker pull friendica@sha256:51abf20d757a65292d7b11cf1fecc32827e102e37381ddfbbf7ee928eb3b120c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 KB (65872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04f50995c2a51a3c1ac1838d1d037f0722dca76585e669ea81222532821fb3c0`

```dockerfile
```

-	Layers:
	-	`sha256:57eb415f19332513c52fd96b78e170461236c48cd3c138648fa8f068a1028308`  
		Last Modified: Mon, 26 Oct 2026 22:18:00 GMT  
		Size: 65.9 KB (65872 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:dev` - linux; s390x

```console
$ docker pull friendica@sha256:72cfb0fcea23804df43225f2d6b0f682661b13991c1b97ba046a7f6ffa74c66b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.7 MB (242726428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caf70ae5e41aeeeddc31a8cefc0e3559fcf064944005120c4cbb7aa497aa8576`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:28:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:28:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:28:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:28:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:28:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:32:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:32:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:32:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:32:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:32:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:32:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:32:16 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 28 Oct 2026 01:32:16 GMT
ENV PHP_VERSION=8.4.27
# Wed, 28 Oct 2026 01:32:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 28 Oct 2026 01:32:16 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 28 Oct 2026 01:44:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:44:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:47:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:47:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:47:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:47:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:47:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:47:15 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:47:15 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:47:15 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:47:15 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:47:15 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 04:29:59 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         rsync         bzip2         msmtp         tini     ; # buildkit
# Wed, 28 Oct 2026 04:30:07 GMT
ENV GOSU_VERSION=1.19
# Wed, 28 Oct 2026 04:30:07 GMT
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends ca-certificates wget; 	if ! command -v gpg; then 		apt-get install -y --no-install-recommends gnupg2 dirmngr; 	elif gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		apt-get install -y --no-install-recommends gnupg-curl; 	fi; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Wed, 28 Oct 2026 04:32:05 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         mariadb-client         bash         libpng-dev         libjpeg62-turbo-dev         libtool         libmagick++-dev         libmemcached-dev         zlib1g-dev         libssl-dev         libgraphicsmagick1-dev         libfreetype6-dev         libwebp-dev         librsvg2-2         libzip-dev         libldap2-dev         libgmp-dev         libmagickcore-7.q16-10-extra         gettext     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;     docker-php-ext-configure ldap         --with-libdir=lib/$debMultiarch/     ;    docker-php-ext-install -j "$(nproc)"         pdo_mysql         gd         exif         zip         opcache         ctype         pcntl         ldap         gmp         intl     ;         pecl install apcu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0 --configureoptions 'enable-redis-zstd="yes" enable-redis-lz4="yes"';     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -r dpkg-query -S         | cut -d: -f1         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 04:32:05 GMT
ENV PHP_MEMORY_LIMIT=512M
# Wed, 28 Oct 2026 04:32:05 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Wed, 28 Oct 2026 04:32:05 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Wed, 28 Oct 2026 04:32:05 GMT
RUN set -ex;     a2enmod headers rewrite remoteip;     {      echo RemoteIPHeader X-Forwarded-For;      echo RemoteIPTrustedProxy 127.0.0.0/8;      echo RemoteIPTrustedProxy 10.0.0.0/8;      echo RemoteIPTrustedProxy 172.16.0.0/12;      echo RemoteIPTrustedProxy 192.168.0.0/16;     } > /etc/apache2/conf-available/remoteip.conf;     a2enconf remoteip; # buildkit
# Wed, 28 Oct 2026 04:32:06 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Wed, 28 Oct 2026 04:32:06 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 04:32:06 GMT
VOLUME [/var/www/data]
# Wed, 28 Oct 2026 04:32:06 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Wed, 28 Oct 2026 04:32:06 GMT
ENV FRIENDICA_VERSION=2026.11-dev
# Wed, 28 Oct 2026 04:32:10 GMT
RUN set -ex;     fetchDeps="       gnupg     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps; # buildkit
# Wed, 28 Oct 2026 04:32:10 GMT
COPY *.sh upgrade.exclude / # buildkit
# Wed, 28 Oct 2026 04:32:10 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Wed, 28 Oct 2026 04:32:10 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Wed, 28 Oct 2026 04:32:10 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:339d5b2a6ed9e2a6924e3ae4ce0b1ebaaf03703c49884018433f3933a87895fc`  
		Last Modified: Wed, 28 Oct 2026 00:10:36 GMT  
		Size: 29.9 MB (29922921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2cc3117588066d5749725e17816918b30cbfc73a8d8b07a3a4c032275c91692`  
		Last Modified: Wed, 28 Oct 2026 01:31:47 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c983c92f36e7eb471e57ad0f801ed6c2471416760949afa6f3daf17c3b72ca`  
		Last Modified: Wed, 28 Oct 2026 01:31:50 GMT  
		Size: 92.6 MB (92569764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb26f92ac8c9fe210da9a84d3a7d90fbb06735061ddbd56b354f3a376ff17db`  
		Last Modified: Wed, 28 Oct 2026 01:31:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398e634b2adff73c761879ccba6ba02caa5b75d83942f67229299a8cf209463f`  
		Last Modified: Wed, 28 Oct 2026 01:35:51 GMT  
		Size: 4.3 MB (4342247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c0713f588cb923981832521ac769d981711f33faafdc4c3c9fb3be65cbeebd`  
		Last Modified: Wed, 28 Oct 2026 01:35:51 GMT  
		Size: 435.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fb261e4a34dce955ec98d2374225abea5bf25f1b802ff4bfcc94333014b709`  
		Last Modified: Wed, 28 Oct 2026 01:35:51 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57ee074b7a12821a47c7a318d6da9cc8849f40302f5fca85107c5a5917946a6`  
		Last Modified: Wed, 28 Oct 2026 01:47:31 GMT  
		Size: 14.0 MB (14028359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7e7a2dc5ae6bb899357bab2c6621b4e81395e979fb218f98563d70ea1243fff`  
		Last Modified: Wed, 28 Oct 2026 01:47:31 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3141d55d448c6f30e589b67c5d7835a74de34a89155fb39bca5ae87e4cd54b`  
		Last Modified: Wed, 28 Oct 2026 01:47:31 GMT  
		Size: 13.5 MB (13510187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a4ae7fc0de210f94a4f8bed759530e55bd617940d13b7a00ac8e00355bfda1`  
		Last Modified: Wed, 28 Oct 2026 01:47:31 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:705e3fe8cabb3ca6cbcc44418f7b05681017035a060486ddd5c711b891b3cbf0`  
		Last Modified: Wed, 28 Oct 2026 01:47:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebe600b2d90c838f97ab4ce1337ec2de61d12e64dee7dce6930adb2b22dca81`  
		Last Modified: Wed, 28 Oct 2026 01:47:32 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37300ab3957f4bce4e2859d3b8afa9acfa3d7f5fe0cfc3c632a2436942e1b24b`  
		Last Modified: Wed, 28 Oct 2026 01:47:32 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85bb0449601e534d295225f3b5b3c2d9f599a05b36d3b1c05aac2ca740b5996`  
		Last Modified: Wed, 28 Oct 2026 04:32:26 GMT  
		Size: 20.2 MB (20150100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:023be8bcb4cd5f19f38e7a11e3e1a484b119b82b9727b7dd066d1b699ac87cf9`  
		Last Modified: Wed, 28 Oct 2026 04:32:25 GMT  
		Size: 908.2 KB (908157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02627291961d246f5398e5bbfed286194a6893d2290ebed440df62ef8f0d0186`  
		Last Modified: Wed, 28 Oct 2026 04:32:26 GMT  
		Size: 48.6 MB (48635882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060eb87ee336499c7c791a95f8ee6dfcb02d1a50cbef8e10bba7570248d07c98`  
		Last Modified: Wed, 28 Oct 2026 04:32:25 GMT  
		Size: 590.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753abeb6139b35a681ce2f8ef9007b78069ce04679715b21912102f62df52c5a`  
		Last Modified: Wed, 28 Oct 2026 04:32:26 GMT  
		Size: 585.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56cb87fe1d1f736feb0e274e48a474f43ed51c7e31abd2701fca0812cec8cb24`  
		Last Modified: Wed, 28 Oct 2026 04:32:25 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c29ff13f04bdc068c59c7dc7edef3712ab3aec639c66b8e8e19b00e8ec3aee32`  
		Last Modified: Wed, 28 Oct 2026 04:32:26 GMT  
		Size: 18.6 MB (18646983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce11ce0b50c299b2e40798ac4343c869d0543bce90c8368a01e64e16e5a2455e`  
		Last Modified: Wed, 28 Oct 2026 04:32:27 GMT  
		Size: 3.9 KB (3853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6097458dcc1874db7fde68bbe60c2de4bcb1d9f4964dcc89355e56cf378bf0ca`  
		Last Modified: Wed, 28 Oct 2026 04:32:27 GMT  
		Size: 926.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:dev` - unknown; unknown

```console
$ docker pull friendica@sha256:4156ceb8df47f35f677d2556c4b5754524ecc589c17561d794ca51e44702d52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 KB (65798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7973e28f64cd92b3b873c5fc1b1578365f1974c43860c5daf581d4cd4d1e3ac`

```dockerfile
```

-	Layers:
	-	`sha256:38cc1274ce5e89b22453eff4c497ab6d0ced82de934b4d2b69aa58c66959e9e8`  
		Last Modified: Wed, 28 Oct 2026 04:32:24 GMT  
		Size: 65.8 KB (65798 bytes)  
		MIME: application/vnd.in-toto+json
