## `nextcloud:stable-fpm`

```console
$ docker pull nextcloud@sha256:1bd4228e295600ce8a28966ad851976d6cacf368edc4d14c7a0059d3915e4dbe
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

### `nextcloud:stable-fpm` - linux; amd64

```console
$ docker pull nextcloud@sha256:c9f0f1a1b2e2a2b544e6edadafa2dbbb1091b697d15a40385db3f03ebbdcca49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.3 MB (509323335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:942112356db5b5e6a18ff38b9a2194a346f36f68c42661c3907bb87db5dd0ac0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:19:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:19:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:19:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:19:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:19:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:19:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:19:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:19:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:19:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:19:30 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:19:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:19:30 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:19:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:19:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:21:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:21:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:21:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:21:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:21:57 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:21:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:21:57 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:21:57 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:21:57 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 05:32:45 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 05:34:53 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 05:34:53 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 05:34:53 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 05:34:53 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:34:53 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 05:34:53 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:34:53 GMT
ENV NEXTCLOUD_VERSION=34.0.6
# Tue, 24 Nov 2026 05:35:29 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:35:29 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 05:35:29 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 05:35:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:35:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02f3ffa05ad356f0f8c20e08104996a198bc37d1d2032026f3beac364256552`  
		Last Modified: Tue, 24 Nov 2026 04:22:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e719b7b64e66ab19fc8396b89818636210b95aed510afbe29fff750e3839d2`  
		Last Modified: Tue, 24 Nov 2026 04:22:20 GMT  
		Size: 117.8 MB (117839014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe37452aa0010a33a9e5e06a329d2aa678152892c4bd4ca37ae5418db6c56ba`  
		Last Modified: Tue, 24 Nov 2026 04:22:16 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b673d607733f25f2415c4785e93364001013279a2d25de8b01f442e9520fae9e`  
		Last Modified: Tue, 24 Nov 2026 04:22:17 GMT  
		Size: 14.7 MB (14748685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4496679863fd9d29a48d2c3b47134b2f0cb90f2974efffff969c612bb31eea7f`  
		Last Modified: Tue, 24 Nov 2026 04:22:18 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b80264f63a50747681cfed955a583690f0012a6e741c0524e2cd8cf4d1df319a`  
		Last Modified: Tue, 24 Nov 2026 04:22:19 GMT  
		Size: 15.3 MB (15341268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d603721c2416bf9a67d2e62a007440150cdef421cb6d9153ec606aeddb59fcd`  
		Last Modified: Tue, 24 Nov 2026 04:22:19 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac08ef61bcbe6bb75c85fc9a8f28cf8122a8ca3859e6d3fd5c2cd11eb39a591`  
		Last Modified: Tue, 24 Nov 2026 04:22:19 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12eacbaf8bce15f2fd938794501f1abbbc8f8c5183dd32506a3ef9d59a90342e`  
		Last Modified: Tue, 24 Nov 2026 04:22:20 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e09ff8203eaa3bb18f404a8045b7ad8cb1535a1c46057f2517eee09fa613faf`  
		Last Modified: Tue, 24 Nov 2026 05:35:56 GMT  
		Size: 21.6 MB (21640615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a69e65cf09f2061c53ad41bfe14620cf96b73a13fde2bd702c020bd17c3b9397`  
		Last Modified: Tue, 24 Nov 2026 05:35:57 GMT  
		Size: 37.1 MB (37123621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5d2d8a589076f7a3fea315b84489edae77aef749018a6aa031da620f44fe6f`  
		Last Modified: Tue, 24 Nov 2026 05:35:55 GMT  
		Size: 803.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e763d006b43b8525ef01d61707db51207c2f34123fea1984aef63628815693ba`  
		Last Modified: Tue, 24 Nov 2026 05:36:01 GMT  
		Size: 272.8 MB (272767538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3565095c7bf729bc06f1d0d77d614ce46fe496f73430d6e0c7d8a218167ed449`  
		Last Modified: Tue, 24 Nov 2026 05:35:56 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56f57fc378c9237bb0c25a993e1546e2a5fb17c6458c168d8ac8cb913b42d225`  
		Last Modified: Tue, 24 Nov 2026 05:35:57 GMT  
		Size: 2.5 KB (2533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-fpm` - unknown; unknown

```console
$ docker pull nextcloud@sha256:e000e5943f37e062d6c72ef0251527a8885c8298bfb9bdfbfdf31010ce6ef275
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 KB (46145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:006d92c4ee9c1d7c6098712177bacd41a6ca71f893a476f53fe0fd27412fa658`

```dockerfile
```

-	Layers:
	-	`sha256:60ecedf4b68af9f3e8abf4f1e4682008e7377bef4830de88a2a8abe2eada2f0f`  
		Last Modified: Tue, 24 Nov 2026 05:35:55 GMT  
		Size: 46.1 KB (46145 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-fpm` - linux; arm variant v5

```console
$ docker pull nextcloud@sha256:3b746bf2bf2ca612e7c6ee1d6ff1bbbdb735b0d63e0860b12abbbb56388e0066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.6 MB (479631917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00e9f4653cedd3019fe36612a2cb8d4f1896616c641f9e2fa7080738868363e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:19:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:20:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:20:01 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:20:01 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:20:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:20:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:23:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:23:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:23:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:23:21 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:23:21 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:23:21 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:23:21 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:23:21 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 06:15:24 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 06:19:12 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 06:19:12 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 06:19:12 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 06:19:12 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:19:12 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 06:19:12 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 06:19:12 GMT
ENV NEXTCLOUD_VERSION=34.0.6
# Tue, 24 Nov 2026 06:20:03 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:20:03 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 06:20:03 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 06:20:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:20:03 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765f338d97704434a841d90f36d23f143b3a4a68c4aaf42a31845a0d11d56b19`  
		Last Modified: Tue, 24 Nov 2026 04:23:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e592306bcae09d254722c4c34278ed279c6ddaaa95000fdf4b88fb360d0374d`  
		Last Modified: Tue, 24 Nov 2026 04:23:42 GMT  
		Size: 94.9 MB (94884509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5512d34161724c55018fcf3b753907884138ec39498ecd93361ae7f4c83cd73`  
		Last Modified: Tue, 24 Nov 2026 04:23:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8ee27bd5ef8e5cdef36fc26a201761cffc33e41b21a4c9fb4027cb3c09efdac`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 14.7 MB (14745993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2bc816fec3538556be01c5442b650426c9aa231802b2d1bbbeea7018b95d02`  
		Last Modified: Tue, 24 Nov 2026 04:23:40 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f2e5fd2bf63d71b6716ec3c722eb93c9143dd3d5184e15ea40598227c8def9`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 13.3 MB (13307946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0557c257ee83345d1516119412661b5c76e1b4df47b94ff512fb44baa170a451`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91892a255d8d43c56dc16791e589112fb4c8cb86526fb9650a77c7e1f862b5c1`  
		Last Modified: Tue, 24 Nov 2026 04:23:41 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e0ed393e000fb387817b581d816ebe72020f05f7f3369416a4a374ecef247f`  
		Last Modified: Tue, 24 Nov 2026 04:23:42 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73b8a792950e46ee38fb3879212df221503867e5deecb7bf468fcd9ea576111`  
		Last Modified: Tue, 24 Nov 2026 06:20:32 GMT  
		Size: 20.7 MB (20671624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c09d52c8a2e2b46cf8da64fd8806c6c2dcc0aa8d4ab9830c3fe28cb8a5608b2`  
		Last Modified: Tue, 24 Nov 2026 06:20:33 GMT  
		Size: 35.2 MB (35229179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a108b742bccc26ddac033a1bec99dfa00717e70f698e5981a5d81acfc34e0825`  
		Last Modified: Tue, 24 Nov 2026 06:20:31 GMT  
		Size: 803.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6adcbeca91c8ee20816ae7db8fea03c3163c43ac8d0bd6127ba3f0737aed3d`  
		Last Modified: Tue, 24 Nov 2026 06:20:37 GMT  
		Size: 272.8 MB (272763471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:556299785b7f3f55d8c914fbdb7ead24fc3dfe20977dab7d8de065eacc6129e2`  
		Last Modified: Tue, 24 Nov 2026 06:20:32 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b48e178c10e59f8ca1df86a723014468c284dcd7c147866823b75a100833db9`  
		Last Modified: Tue, 24 Nov 2026 06:20:34 GMT  
		Size: 2.5 KB (2532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-fpm` - unknown; unknown

```console
$ docker pull nextcloud@sha256:d8314f75a8fa1e9c5b3af921b1502800329b04b37f8a925e94792895ce9e99ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cdc6732d9adb4e8a8918987a09e0cbf740e29e699598e740f02bf242f5d2b4`

```dockerfile
```

-	Layers:
	-	`sha256:cf15d3f75f5bf08e73b9936fc5a6601706073a950b426e238cc1bb5ecd4b814b`  
		Last Modified: Tue, 24 Nov 2026 06:20:31 GMT  
		Size: 46.3 KB (46265 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-fpm` - linux; arm variant v7

```console
$ docker pull nextcloud@sha256:c1055377d0ef9633e3d2184732cf90c51bcec74ccf367300ca9e1b18bc8e93a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.0 MB (466000777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a046c384745d939369fc1ec043aac203b9ee65289c6929db0e928c32949b80f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:29:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:29:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:29:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:29:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:29:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:29:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:29:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:29:03 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:29:03 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:29:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:29:03 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:29:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:29:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:32:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:32:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:32:03 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:32:03 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:32:03 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:32:03 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:32:03 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 06:35:55 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 06:39:12 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 06:39:12 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 06:39:12 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 06:39:12 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:39:12 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 06:39:12 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 06:39:12 GMT
ENV NEXTCLOUD_VERSION=34.0.6
# Tue, 24 Nov 2026 06:39:59 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:39:59 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 06:39:59 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 06:39:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:39:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f204f07b86f58ff47022820d21f2976623500f2e40864a42793e9f1a031dbaa`  
		Last Modified: Tue, 24 Nov 2026 04:32:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e817966b63afaa63e0bbbf808c4ebf13e784849892e0ed7f94894ece9a060b9a`  
		Last Modified: Tue, 24 Nov 2026 04:32:22 GMT  
		Size: 86.3 MB (86257288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea86a1ca71802557ef1396f7566b36faa9dd04bf0ae4ee0018abc60ac4f8a57a`  
		Last Modified: Tue, 24 Nov 2026 04:32:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17e32fdaca5599d6ec495696e9fd3ef1d7e42fda710486d6b74173c3b0c043f`  
		Last Modified: Tue, 24 Nov 2026 04:32:20 GMT  
		Size: 14.7 MB (14746186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ebc24c1186735bdef27fbd3db862bc435da6a5523a9ebbbbc2352ac1799bd4c`  
		Last Modified: Tue, 24 Nov 2026 04:32:20 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166cafefbbfb748625475f9f40322c7180189f115ea69a8271c75741a0ef0bc0`  
		Last Modified: Tue, 24 Nov 2026 04:32:21 GMT  
		Size: 12.6 MB (12593255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd95d8e65bad83eb2104c222d1aea8bc4ff338f90c749054b6311ae8471921f0`  
		Last Modified: Tue, 24 Nov 2026 04:32:21 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41b3ae5fb261ec90b27b0f86b625d590f576861b70cc3780872c183eb76fb812`  
		Last Modified: Tue, 24 Nov 2026 04:32:21 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7a11d46904084ef26ce7bc44818c0f2226df419c210b8a03389c907f98c1b69`  
		Last Modified: Tue, 24 Nov 2026 04:32:22 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb11eb0529b582e2134851e0be11f02309efaa25ca65665420a40497cc7de75`  
		Last Modified: Tue, 24 Nov 2026 06:40:28 GMT  
		Size: 18.5 MB (18541769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10d3d2b9aa24508368cd5a04d0fd6767e1bb3b4444ffaff386798026b41fc2eb`  
		Last Modified: Tue, 24 Nov 2026 06:40:29 GMT  
		Size: 34.8 MB (34815196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4597a6d4edd04b6050e02adf60d0cb8dcce6745ced61443f7966cd160c9286ba`  
		Last Modified: Tue, 24 Nov 2026 06:40:27 GMT  
		Size: 805.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8129524ece1fc9e2d8c9b5d9518f21abd8dcf5042d0c819a6890533aa9392718`  
		Last Modified: Tue, 24 Nov 2026 06:40:34 GMT  
		Size: 272.8 MB (272764210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb645bc7aa496d72b2ef695ea9a40a20dfd89ce77a55e5936d035e1402faf55`  
		Last Modified: Tue, 24 Nov 2026 06:40:28 GMT  
		Size: 4.1 KB (4148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48b3a8dfd7a6fbbe50e33aad560a3b4b9045233d0ad0e51b6dab54d35390ed96`  
		Last Modified: Tue, 24 Nov 2026 06:40:29 GMT  
		Size: 2.5 KB (2531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-fpm` - unknown; unknown

```console
$ docker pull nextcloud@sha256:f9c338396a56f4777c1c26092f504a868fe468d9fe5569061d832705f7b4480c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91d45acb569cc898687675821039990c94a742facbe5a4739df7ab3e67272520`

```dockerfile
```

-	Layers:
	-	`sha256:a932ab029c5e0d2ab8753193dfe9d9b022d85df48de49fd36bfb040f0a7a22b5`  
		Last Modified: Tue, 24 Nov 2026 06:40:27 GMT  
		Size: 46.3 KB (46265 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-fpm` - linux; arm64 variant v8

```console
$ docker pull nextcloud@sha256:0e388e2f084cf320404278c06862ab1dae926c990c57d0e3e8a554982a4e6317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.2 MB (500152942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16e1230c235af2af77f99cafb3ff904431edd01ac5650aea96b03a16ac116c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:20:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:20:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:20:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:20:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:20:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:20:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:20:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:20:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:20:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:20:41 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:20:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:20:41 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:20:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:20:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:24:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:24:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:24:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:24:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:24:03 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:24:03 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:24:03 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:24:03 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:24:03 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 05:46:10 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 05:49:12 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 05:49:12 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 05:49:12 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 05:49:12 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:49:12 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 05:49:12 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:49:12 GMT
ENV NEXTCLOUD_VERSION=34.0.6
# Tue, 24 Nov 2026 05:49:53 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:49:53 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 05:49:53 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 05:49:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:49:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe090be87910ab9e70294da74ccf3913cce1878c3a63b17601c09e4ea25a7aa`  
		Last Modified: Tue, 24 Nov 2026 04:24:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e117375cb54ea26b013bc8689ec9f40614163a3e06bfaeb137bfa2deec99d0`  
		Last Modified: Tue, 24 Nov 2026 04:24:27 GMT  
		Size: 110.2 MB (110180651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72412675caff0c0a0892a32cfa8e4557e7ea463c66b573e8774ca7bce9c5c9b9`  
		Last Modified: Tue, 24 Nov 2026 04:24:23 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ee7fa8921d2a71cd342c2b33c8ca67d53c3a41c708d50dc9d498bf5c13f07e`  
		Last Modified: Tue, 24 Nov 2026 04:24:25 GMT  
		Size: 14.7 MB (14748311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ffd90aaa5408f7a41ec630d9c17b6f382b969aae22004f81a20bd15de364a33`  
		Last Modified: Tue, 24 Nov 2026 04:24:25 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64139171d759e2bd675fc359f88dc86afd23d95a8dcd3fd75476740c78344293`  
		Last Modified: Tue, 24 Nov 2026 04:24:25 GMT  
		Size: 14.9 MB (14915839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef9161c8de11205e12642207a42583fc7a50817211c8df34db61cd1377a89c1`  
		Last Modified: Tue, 24 Nov 2026 04:24:26 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0fb5680a69c576295520678cfd8dec8eb88c78013d878ed4606d5a17d9aca4`  
		Last Modified: Tue, 24 Nov 2026 04:24:26 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43f298f4d4a4295268cdbb72a598d1f925537fcfd9d941b7369b96add64a4d9`  
		Last Modified: Tue, 24 Nov 2026 04:24:27 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2561150c6acc46e4dc0e63785fc5ba98126410b3087f6ee6d846490273decba9`  
		Last Modified: Tue, 24 Nov 2026 05:50:25 GMT  
		Size: 20.3 MB (20310496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f09ba225cbdb9500c789197314cb551cb7305ce9542408625a8eac97505bd5b`  
		Last Modified: Tue, 24 Nov 2026 05:50:26 GMT  
		Size: 37.0 MB (37012250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baa9874fde4833032ce69f234654d25e6bbcd39202320108aabcedcbf701ff0b`  
		Last Modified: Tue, 24 Nov 2026 05:50:24 GMT  
		Size: 804.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd9651ae2bbb4779c520d2d4d3ac6edd7bf3af4900c3ac2b0cd6c3636674708`  
		Last Modified: Tue, 24 Nov 2026 05:50:32 GMT  
		Size: 272.8 MB (272766958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ad5383903ee6025af62fab2e25271b546142f7470b26ae91b703797717c3b6`  
		Last Modified: Tue, 24 Nov 2026 05:50:25 GMT  
		Size: 4.1 KB (4148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0d47ed0a6152143002d0e438233e79655d4cfa13003a418360a5d781c23437`  
		Last Modified: Tue, 24 Nov 2026 05:50:27 GMT  
		Size: 2.5 KB (2528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-fpm` - unknown; unknown

```console
$ docker pull nextcloud@sha256:45dead39893baf056715ce597923c80f5b00eb4c57d067de7001611c8ad5b7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd8d9577c5a14dd8de1c5330c16c9c2f039a7e292993569e001bb06c09a9595`

```dockerfile
```

-	Layers:
	-	`sha256:7748e8657c3a7fdee81d9ca1c6f11baf17bf15dd810c7cd75b3fbb96d6c6d549`  
		Last Modified: Tue, 24 Nov 2026 05:50:24 GMT  
		Size: 46.3 KB (46305 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-fpm` - linux; 386

```console
$ docker pull nextcloud@sha256:f88b3bfabf93eda01df63cb4313e225254b126598569c21bf1714700320a59fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **510.3 MB (510301462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26701f33b7d74fb2b36ee82798cb9659c420c9858391cf74547da3539c2d13b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:19:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:19:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:19:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:19:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:19:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:19:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:19:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:19:45 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:19:45 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:19:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:19:45 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:19:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:19:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:22:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:22:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:22:50 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:22:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:22:50 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:22:50 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:22:50 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:22:50 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:22:50 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 05:36:57 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 24 Nov 2026 05:39:23 GMT
ENV PHP_MEMORY_LIMIT=512M
# Tue, 24 Nov 2026 05:39:23 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Tue, 24 Nov 2026 05:39:23 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Tue, 24 Nov 2026 05:39:23 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:39:23 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Tue, 24 Nov 2026 05:39:23 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:39:23 GMT
ENV NEXTCLOUD_VERSION=34.0.6
# Tue, 24 Nov 2026 05:40:00 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:40:00 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 05:40:00 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 05:40:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:40:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1147bf4aa950340032769fade421d97a92b954878b46b676560bad1465526f36`  
		Last Modified: Tue, 24 Nov 2026 04:23:09 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724bcab02ba2c909ad3bf2555cbd0484e05e9d53395b97c1bf68d62b613d0018`  
		Last Modified: Tue, 24 Nov 2026 04:23:13 GMT  
		Size: 116.1 MB (116139370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36fc314ae685cc59a18491311c448828398448a5824fcc0ee0d8392e0c20c51f`  
		Last Modified: Tue, 24 Nov 2026 04:23:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33fd2f153e8a8b72bd7a762e573933183614f9ac709eafc27e985344d1fd2431`  
		Last Modified: Tue, 24 Nov 2026 04:23:10 GMT  
		Size: 14.7 MB (14747599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90cdbb2160526279967cc4fa9b13b56814e6a29513f6fddd2dcea9985afb4424`  
		Last Modified: Tue, 24 Nov 2026 04:23:11 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fbd88229dc0fd9e1ed75c7fbfc64be285aa6bd37259e3907f3c382f5f5c229`  
		Last Modified: Tue, 24 Nov 2026 04:23:12 GMT  
		Size: 15.8 MB (15758861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc4fa97b46729b10290af28f46c978686bdacd07498913a02e7d5b52f2d9431`  
		Last Modified: Tue, 24 Nov 2026 04:23:12 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5596a67f4336228009e72358dd38dda953570497d4ca9b57acb5bdaebe6fea`  
		Last Modified: Tue, 24 Nov 2026 04:23:12 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5ecd70ebfd2b0e3e4bb0a800e4beda786357e4e6b6b4ff6764b89782f1486c`  
		Last Modified: Tue, 24 Nov 2026 04:23:13 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845b692efb0c3c52f355bb2ecb7408d2bb97b05c6edf7eca4d5d1019f75f33a6`  
		Last Modified: Tue, 24 Nov 2026 05:40:27 GMT  
		Size: 22.0 MB (21964092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020ffcc260087c6d621956cec4883212453a3235738c0e31f6d10ecaad64aeb7`  
		Last Modified: Tue, 24 Nov 2026 05:40:27 GMT  
		Size: 37.5 MB (37547834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89890e99a7e225c36d174f8f44eed54c9e0e1b725c6a7429922faf6fddb88d02`  
		Last Modified: Tue, 24 Nov 2026 05:40:26 GMT  
		Size: 806.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ebf2f5d6db8d7051e7f63c4e827aa72d5d23edd6fbed888dae931c3d0e73a7f`  
		Last Modified: Tue, 24 Nov 2026 05:40:32 GMT  
		Size: 272.8 MB (272765373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f4ec17b8f9501fc9cefa142aa48283a50383dee63d386e9f23698101cf099d4`  
		Last Modified: Tue, 24 Nov 2026 05:40:27 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e123c9f6fb75f4cc85055e32728d081bb2ca9bc9ec33cca4a35fece2920fca`  
		Last Modified: Tue, 24 Nov 2026 05:40:28 GMT  
		Size: 2.5 KB (2534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-fpm` - unknown; unknown

```console
$ docker pull nextcloud@sha256:c88b63295eafc53363c49e99792f6ffb733556b7e7c65e87ae49ed6f38bf2d17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 KB (46102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a1542e00002f979f514a6a1aa53d8a86317adf2f29c0222cf38f5861633be0`

```dockerfile
```

-	Layers:
	-	`sha256:abc66ce052cd02192c13c7bc93ae10d5ecbce513fe418e3a3ab5f449ac185a9a`  
		Last Modified: Tue, 24 Nov 2026 05:40:25 GMT  
		Size: 46.1 KB (46102 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-fpm` - linux; ppc64le

```console
$ docker pull nextcloud@sha256:2f86c63c59e5c99d4295d70c5e5c4d2f843dfdcd516ca01d0e3d75aa37ee8316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **508.0 MB (507999394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d85013a5295478dcbe9dee2488a92165db2e9a14943fd231b2953938c9f95e83`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:51:49 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_VERSION=8.5.13
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Thu, 19 Nov 2026 14:24:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:24:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:36:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:36:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:36:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:36:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:36:24 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:36:25 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:36:25 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:36:25 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:36:25 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 20:10:13 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Thu, 19 Nov 2026 20:16:53 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 19 Nov 2026 20:16:53 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 19 Nov 2026 20:16:53 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Thu, 19 Nov 2026 20:16:53 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 20:16:53 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Thu, 19 Nov 2026 20:16:53 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 20:16:53 GMT
ENV NEXTCLOUD_VERSION=34.0.6
# Thu, 19 Nov 2026 20:17:57 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 20:17:58 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 19 Nov 2026 20:17:58 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Thu, 19 Nov 2026 20:17:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 20:17:58 GMT
CMD ["php-fpm"]
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
	-	`sha256:795bf0438fe8353c5b200785892e009d0abd0c840ed5fbf4c53939d1b1dee12d`  
		Last Modified: Thu, 19 Nov 2026 14:30:36 GMT  
		Size: 14.8 MB (14762840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2ba4b0e63c46bdcb4561b300d37739c0f3d10237b9a8fa15d35d8cd8f879dd`  
		Last Modified: Thu, 19 Nov 2026 14:30:36 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:002ed467fe4e3d7d5c14b0e59d1fe397d850c32e96e49551b9bf1bc82dc93cae`  
		Last Modified: Thu, 19 Nov 2026 14:36:51 GMT  
		Size: 15.5 MB (15544771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462f3ca1adc4db4d23a972130c35fb37834e19e30b60c8f506a4c35b10856888`  
		Last Modified: Thu, 19 Nov 2026 14:36:51 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:748e4e745d249d691339c6f0fc146e75c6294b057389aa9a868a300dbe3b15b3`  
		Last Modified: Thu, 19 Nov 2026 14:36:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa542f6f48436497f56041e1fe958eca730b5b5b087475fcf8d2f3d30ff770c7`  
		Last Modified: Thu, 19 Nov 2026 14:36:51 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab004fa0628c69d9d374bc1db2e47015216bc5796d09e03d2d6012f5b882238`  
		Last Modified: Thu, 19 Nov 2026 20:19:12 GMT  
		Size: 22.8 MB (22780441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335f8b16fbf1998debc23f9f087dfd6afd45b83f55fb427e03076ae86676340c`  
		Last Modified: Thu, 19 Nov 2026 20:19:13 GMT  
		Size: 38.8 MB (38837516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:805f0bbc83aa9b7756519896da3c9b985dbae49e1f2731133fb5b009b3d43e6d`  
		Last Modified: Thu, 19 Nov 2026 20:19:11 GMT  
		Size: 809.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bd4a6a4e2d53e86e0d373c364be09143f6435109dc7e01b06fde28429ccc974`  
		Last Modified: Thu, 19 Nov 2026 20:19:18 GMT  
		Size: 272.8 MB (272774456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315967a21ac196e54b4946ea0d6fbd293976ca5e70acafa91c4b033619f0122f`  
		Last Modified: Thu, 19 Nov 2026 20:19:12 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020ce5a25745c2ebf2a4f8746885576d81676160d907223f5c3e9eb2b853cc95`  
		Last Modified: Thu, 19 Nov 2026 20:19:13 GMT  
		Size: 2.5 KB (2531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-fpm` - unknown; unknown

```console
$ docker pull nextcloud@sha256:372ad399c3093da18454fbe711419d2aea2f35081d84cc4ff6ae64c78c1b46bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc58b4687d2827f4749441a37a15733bce107a29aba43a3eb5d911f4dc444618`

```dockerfile
```

-	Layers:
	-	`sha256:061b356f62932743add8ab2329a7ca35a08a24b2002e6ead0b7395308605a053`  
		Last Modified: Thu, 19 Nov 2026 20:19:11 GMT  
		Size: 46.2 KB (46201 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-fpm` - linux; riscv64

```console
$ docker pull nextcloud@sha256:3dbebf5fc90abeb669ee6cc2b8b4a10518493c14e06a01b7adb7ef256c721e4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **542.7 MB (542656550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a956bc89ef88672af4f3e4e5336dd1ba1d42f19a09dcb57aa542a8124aea7b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 17:47:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 20:59:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 20:59:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 00:12:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 06 Nov 2026 00:12:48 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 00:12:49 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 06 Nov 2026 00:12:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 06 Nov 2026 00:12:49 GMT
WORKDIR /var/www/html
# Fri, 06 Nov 2026 00:12:49 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 06 Nov 2026 00:12:49 GMT
STOPSIGNAL SIGQUIT
# Fri, 06 Nov 2026 00:12:49 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 06 Nov 2026 00:12:49 GMT
CMD ["php-fpm"]
# Mon, 09 Nov 2026 10:52:42 GMT
RUN set -ex;         apt-get update;     apt-get install -y --no-install-recommends         busybox-static         bzip2         libldap-common         libmagickcore-7.q16-10-extra         rsync     ;     apt-get dist-clean;         mkdir -p /var/spool/cron/crontabs;     echo '*/5 * * * * php -f /var/www/html/cron.php' > /var/spool/cron/crontabs/www-data # buildkit
# Mon, 09 Nov 2026 11:28:34 GMT
ENV PHP_MEMORY_LIMIT=512M
# Mon, 09 Nov 2026 11:28:34 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Mon, 09 Nov 2026 11:28:34 GMT
ENV PHP_OPCACHE_MEMORY_CONSUMPTION=128
# Mon, 09 Nov 2026 11:28:34 GMT
RUN set -ex;         savedAptMark="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libcurl4-openssl-dev         libevent-dev         libfreetype6-dev         libgmp-dev         libicu-dev         libjpeg-dev         libldap2-dev         liblz4-dev         libmagickwand-dev         libmemcached-dev         libpng-dev         libpq-dev         libwebp-dev         libxml2-dev         libzip-dev     ;         debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)";     docker-php-ext-configure ftp --with-ftp-ssl;     docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp;     docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch";     docker-php-ext-install -j "$(nproc)"         bcmath         exif         ftp         gd         gmp         intl         ldap         pcntl         pdo_mysql         pdo_pgsql         sysvsem         zip     ;         pecl install APCu-5.1.28;     pecl install igbinary-3.2.17RC1;     pecl install imagick-3.8.1;     pecl install --configureoptions 'enable-memcached-igbinary="yes"'         memcached-3.4.0;     pecl install --configureoptions 'enable-redis-igbinary="yes" enable-redis-zstd="yes" enable-redis-lz4="yes"'         redis-6.3.0;         docker-php-ext-enable         apcu         igbinary         imagick         memcached         redis     ;     rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark;     ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so         | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }'         | sort -u         | xargs -rt dpkg-query --search         | awk 'sub(":$", "", $1) { print $1 }'         | sort -u         | xargs -rt apt-mark manual;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     apt-get dist-clean # buildkit
# Mon, 09 Nov 2026 11:28:35 GMT
RUN {         echo 'opcache.enable=1';         echo 'opcache.interned_strings_buffer=32';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.save_comments=1';         echo 'opcache.revalidate_freq=60';         echo 'opcache.jit=1255';         echo 'opcache.jit_buffer_size=8M';     } > "${PHP_INI_DIR}/conf.d/opcache-recommended.ini";         echo 'apc.enable_cli=1' >> "${PHP_INI_DIR}/conf.d/docker-php-ext-apcu.ini";         {         echo 'apc.serializer=igbinary';         echo 'session.serialize_handler=igbinary';         echo 'session.upload_progress.enabled=0';     } >> "${PHP_INI_DIR}/conf.d/docker-php-ext-igbinary.ini";         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > "${PHP_INI_DIR}/conf.d/nextcloud.ini";         mkdir /var/www/data;     mkdir -p /docker-entrypoint-hooks.d/pre-installation              /docker-entrypoint-hooks.d/post-installation              /docker-entrypoint-hooks.d/pre-upgrade              /docker-entrypoint-hooks.d/post-upgrade              /docker-entrypoint-hooks.d/before-starting;     chown -R www-data:root /var/www;     chmod -R g=u /var/www # buildkit
# Mon, 09 Nov 2026 11:28:35 GMT
VOLUME [/var/www/html]
# Mon, 09 Nov 2026 11:28:35 GMT
ENV NEXTCLOUD_VERSION=34.0.5
# Mon, 09 Nov 2026 11:33:33 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.5/nextcloud-34.0.5.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Mon, 09 Nov 2026 11:33:35 GMT
COPY *.sh upgrade.exclude / # buildkit
# Mon, 09 Nov 2026 11:33:35 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Mon, 09 Nov 2026 11:33:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 09 Nov 2026 11:33:35 GMT
CMD ["php-fpm"]
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
	-	`sha256:fcab1195d9b37cc32f0b3d01dbdbf85b15e10a03f55862011a51151f404f6b01`  
		Last Modified: Thu, 05 Nov 2026 22:03:27 GMT  
		Size: 14.7 MB (14716408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90b6b6d0f1f0b94cb39f7ae510569c32bb58176cac0344e1588f6c23853e73b`  
		Last Modified: Thu, 05 Nov 2026 22:03:22 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca31de0f3845557b12d9c40674b0d89abcd7034bf76c48df6e10901862dd8cf5`  
		Last Modified: Fri, 06 Nov 2026 00:16:06 GMT  
		Size: 14.3 MB (14275827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d48f5086b4f1aba4ec10fe230369c8399ff4527b477984f3106124d11a7f5a5a`  
		Last Modified: Fri, 06 Nov 2026 00:16:03 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a013b65115a780081b83c9003263c32bd7b95529ae961d5ddf142afe27cf8d0`  
		Last Modified: Fri, 06 Nov 2026 00:16:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040693ab4c9249bd50ab544cf9270d54ed8ca62870d58585300a295e8b6329cb`  
		Last Modified: Fri, 06 Nov 2026 00:16:03 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d4b7f96578bdfff658c7770de64555c47d9f2dc667eb965e239c9288c7cfee`  
		Last Modified: Mon, 09 Nov 2026 11:40:18 GMT  
		Size: 20.1 MB (20055234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99dd4f05f334c83642424bb5cd3ae0f20726bd9f4b7a709c21c4ba22567f4cd0`  
		Last Modified: Mon, 09 Nov 2026 11:40:27 GMT  
		Size: 46.0 MB (46036671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae043ec16099f1b7353c71a72bf7bbe571c19b76ca415687d83bd8a2e1c84e1d`  
		Last Modified: Mon, 09 Nov 2026 11:40:09 GMT  
		Size: 808.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c7d30cb27e6697ee0f1717c35af360f3c0bc881ac02bc0062e4ae05b9454430`  
		Last Modified: Mon, 09 Nov 2026 11:40:59 GMT  
		Size: 272.6 MB (272626725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20a47a9bcaf83ed09c3aa64b8053a10f770f769ecf774a90caaa09be80773350`  
		Last Modified: Mon, 09 Nov 2026 11:40:12 GMT  
		Size: 4.2 KB (4151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44720c36ec4f6dac0963b252fdbb1aef8d4c9d466386ae785fccff0efbb96a02`  
		Last Modified: Mon, 09 Nov 2026 11:40:15 GMT  
		Size: 2.5 KB (2533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-fpm` - unknown; unknown

```console
$ docker pull nextcloud@sha256:e1f509e39c98b48c9851187f360ef16c681a6e70cc2c7bc68a68bddd494701b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:148084491ebc24a359f46d9000ce91c1d56df7dec357cb8534afcc02eb65628c`

```dockerfile
```

-	Layers:
	-	`sha256:1e7124b3ccd0234da5ac549716b42b3bcbe2df001d8b89d6f232633b7cc2b2ab`  
		Last Modified: Mon, 09 Nov 2026 11:40:08 GMT  
		Size: 46.2 KB (46201 bytes)  
		MIME: application/vnd.in-toto+json

### `nextcloud:stable-fpm` - linux; s390x

```console
$ docker pull nextcloud@sha256:ccd3aab1632db766740a7efe19559046ffde6dfbca87550babe7f61f2a161d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.9 MB (482890912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baccfc8bd91e323e68af06ba6249b1259d7ed10281296044d583c029155577a3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:16:22 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:16:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:16:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:16:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:16:37 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_VERSION=8.5.13
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.13.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.13.tar.xz.asc
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_SHA256=607602acaf0c3061818e9916ec44a058e8b3d43959a83862b9cd3ec7bf5b785f
# Tue, 24 Nov 2026 04:23:00 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:23:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:26:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:26:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:26:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:26:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:26:08 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:26:09 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:26:09 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:26:09 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:26:09 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 06:03:57 GMT
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
ENV NEXTCLOUD_VERSION=34.0.6
# Tue, 24 Nov 2026 06:06:45 GMT
RUN set -ex;     fetchDeps="         gnupg         dirmngr     ";     apt-get update;     apt-get install -y --no-install-recommends $fetchDeps;         curl -fsSL -o nextcloud.tar.bz2 "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2";     curl -fsSL -o nextcloud.tar.bz2.asc "https://github.com/nextcloud-releases/server/releases/download/v34.0.6/nextcloud-34.0.6.tar.bz2.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 28806A878AE423A28372792ED75899B9A724937A;     gpg --batch --verify nextcloud.tar.bz2.asc nextcloud.tar.bz2;     tar -xjf nextcloud.tar.bz2 -C /usr/src/;     gpgconf --kill all;     rm nextcloud.tar.bz2.asc nextcloud.tar.bz2;     rm -rf "$GNUPGHOME" /usr/src/nextcloud/updater;     mkdir -p /usr/src/nextcloud/data;     mkdir -p /usr/src/nextcloud/custom_apps;     chmod +x /usr/src/nextcloud/occ;         apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps;     apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:06:46 GMT
COPY *.sh upgrade.exclude / # buildkit
# Tue, 24 Nov 2026 06:06:46 GMT
COPY config/* /usr/src/nextcloud/config/ # buildkit
# Tue, 24 Nov 2026 06:06:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:06:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e8f79b2858fb492441512f76f2c49057b0d1abb4f9de6b2dc867dafcc063`  
		Last Modified: Tue, 24 Nov 2026 04:19:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abe10b798f52d575f19affeb15246c3caf3e86bb2aa5492972842df597cfebd`  
		Last Modified: Tue, 24 Nov 2026 04:19:38 GMT  
		Size: 92.6 MB (92570324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0fde7a72c979be6285246b12ed6242fbc2e49f60b30adc8e9fd06e3635708b`  
		Last Modified: Tue, 24 Nov 2026 04:19:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabcdf72e063573afb10b706adb94962ab8613ed5cb88b4e08b332abd1b09e60`  
		Last Modified: Tue, 24 Nov 2026 04:26:24 GMT  
		Size: 14.7 MB (14747010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473ffcb8e6502de139d717d69ab913e610cdaf7bdaa9124a69d80c939f2d5502`  
		Last Modified: Tue, 24 Nov 2026 04:26:23 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f684b606b67508e2bc7e8e9c2e03c193d79db7d2e3dd934fbcfa5d380923ec0`  
		Last Modified: Tue, 24 Nov 2026 04:26:24 GMT  
		Size: 14.6 MB (14629489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab2600cb20489b1f010fc44f6094a89313b77e8147065bf3e1104da286b4bcb`  
		Last Modified: Tue, 24 Nov 2026 04:26:23 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7c4506e5c49a0408f1db5f85f3b454c9a95ff05e91511ba3e79453512f8e30b`  
		Last Modified: Tue, 24 Nov 2026 04:26:24 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d8b3972de73700521638a20d6267af06e5668cab0f533a7d499bbc89fd123ce`  
		Last Modified: Tue, 24 Nov 2026 04:26:24 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61f0cbc78d5e8d680c09daa0e38a3130a4c344ba2a43611b97b65d59d5e27e9`  
		Last Modified: Tue, 24 Nov 2026 06:07:21 GMT  
		Size: 21.0 MB (20968377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9554b3f8a91835cbe449fe608a74420f8cd68142f0f68460d9b15e704a51287c`  
		Last Modified: Tue, 24 Nov 2026 06:07:21 GMT  
		Size: 37.3 MB (37280831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f884f813d9116f8a2d5727417c1442fef0666103815c7fe691d36ad087a0be`  
		Last Modified: Tue, 24 Nov 2026 06:07:20 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2109bf6187806b08abef169592774135a880f4d2cfe26dd64ad0a4707274ac09`  
		Last Modified: Tue, 24 Nov 2026 06:07:25 GMT  
		Size: 272.8 MB (272764447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff9c02515eafe2ecb8f163b0ae0731c2ee1687c704d1f48743f19344129715ad`  
		Last Modified: Tue, 24 Nov 2026 06:07:21 GMT  
		Size: 4.2 KB (4150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a129ca477d1a2750e0ba0df90aa6478eba755beab67c1e334cda54ee1dcf4ef`  
		Last Modified: Tue, 24 Nov 2026 06:07:22 GMT  
		Size: 2.5 KB (2530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nextcloud:stable-fpm` - unknown; unknown

```console
$ docker pull nextcloud@sha256:e38c6b765f57c22c23557d86ce4ad57a3dc27153f74814a18510ae3f6d118f65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 KB (46138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81436feb08296c954d7eacea1da5266bf6d181507f1ef9d4f781b2f8d470d7d`

```dockerfile
```

-	Layers:
	-	`sha256:e245b10d019e9de131e24b20ef913f857b7ad54435c18b3c54ff17143dbf2737`  
		Last Modified: Tue, 24 Nov 2026 06:07:20 GMT  
		Size: 46.1 KB (46138 bytes)  
		MIME: application/vnd.in-toto+json
