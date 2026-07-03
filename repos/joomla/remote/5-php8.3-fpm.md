## `joomla:5-php8.3-fpm`

```console
$ docker pull joomla@sha256:6e89cde79a553132e97e819987ee62c54b3bb1fbcc73c5003d519efd109ced42
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

### `joomla:5-php8.3-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:237e90e05f1703c321e7420d3923f77c2751d721a5fdf71d1b9a01ccdd37261c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272204631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a48fbf14374e3ea4fcfd22dd6e32fa2cf39054286be44f33843dae14be2a503`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:33:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:33:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:33:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:33:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:33:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:33:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:33:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:33:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:33:48 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:33:48 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:33:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:33:48 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:41:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:41:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:43:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:43:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:43:50 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:43:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:43:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:43:51 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:43:51 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:43:51 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:43:51 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:43:51 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:23:45 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:23:45 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:23:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:25:45 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:25:45 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:25:45 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:25:45 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:25:45 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:25:45 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:25:46 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:25:46 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:25:46 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:25:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:25:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d05db49b5ea7a564a20f3d727535339d4f5460d8afe370d2910d9e1e634ca21`  
		Last Modified: Thu, 02 Jul 2026 20:36:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:928c8a5f9505f15561688d106951ef1ffe595880854ebf4a5aa364d18949d68a`  
		Last Modified: Thu, 02 Jul 2026 20:36:47 GMT  
		Size: 117.8 MB (117839494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3828855a29f8a7786ec75a2b155a2a3c0d627d2cce58bd090468cdba8fe443d8`  
		Last Modified: Thu, 02 Jul 2026 20:36:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74fb8eaf1504b454ce51c83b00cbbc4fbe290171ed7e1b2e840d21893a11274d`  
		Last Modified: Thu, 02 Jul 2026 20:44:01 GMT  
		Size: 12.8 MB (12753490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214a96270c3f396f2dbc2f0fbab38e33b26b811d9e2afd0632275f950a0776e1`  
		Last Modified: Thu, 02 Jul 2026 20:44:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de25bdfb656200bb2a47063f625a519ffcb4460ba3d62e8e1cca0f0ef69d7517`  
		Last Modified: Thu, 02 Jul 2026 20:44:01 GMT  
		Size: 11.9 MB (11902811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c327ed615b5a5dd4ce127f10bf1f4248ba8c026e5d22b5fb6112e17405a908`  
		Last Modified: Thu, 02 Jul 2026 20:44:00 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f416e82183ede5ffe8092a5f58226fdfbaa0bca48a6be7381ff7dafb8d0e1d9a`  
		Last Modified: Thu, 02 Jul 2026 20:44:01 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3756210c493d8982d3914a35a477aa0028e5c36abbb74efaa05b849bc91a02d8`  
		Last Modified: Thu, 02 Jul 2026 20:44:02 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e083bd096e763dea71e928cb5527b3b7725bbbf91093b1252fb57b435de0b0ee`  
		Last Modified: Thu, 02 Jul 2026 20:44:02 GMT  
		Size: 9.3 KB (9256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dae870371da489e15250b2876abaa16bfe23bb4179650b0e0706eefd7749592`  
		Last Modified: Thu, 02 Jul 2026 21:25:56 GMT  
		Size: 27.4 MB (27397979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2800aa99d3c25381121570efec32856c8275da2ad42beff646da83a8d8959d`  
		Last Modified: Thu, 02 Jul 2026 21:25:57 GMT  
		Size: 45.2 MB (45192424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:026b606e0b9d83ba1aa57ccd7430d99a4d1def9fb269e9b24514a058af5dcf66`  
		Last Modified: Thu, 02 Jul 2026 21:25:55 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f2b377216918152c033dfb50d70e261d7c89b95944a7ad449a185415ea9b43a`  
		Last Modified: Thu, 02 Jul 2026 21:25:55 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4112336ee451e1a12aae038227a6fe71c92556c9971f87108b075e37c307d9c`  
		Last Modified: Thu, 02 Jul 2026 21:25:57 GMT  
		Size: 27.3 MB (27314398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1f26d595237eee4a553e1433ec78ecc220c89f6f784f401bc7eeb1bc7a9f00`  
		Last Modified: Thu, 02 Jul 2026 21:25:56 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e009ae587a8ba395742be0c1da5f874941c7ffef6ef44d1c834e562fe2401ad`  
		Last Modified: Thu, 02 Jul 2026 21:25:58 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:b7f82a0b3098a7121a3aca760c59bd05a6b3486f6cdf6b9f36d81b5a2f19a330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6854f32baf5c11fefd5728ee534b0360219040c738354356ecb7eeb5b8a2cb2`

```dockerfile
```

-	Layers:
	-	`sha256:f65087a9ef1f7bf9107435d716e6f58f36edbb888b340dd54da1a5e6d6544712`  
		Last Modified: Thu, 02 Jul 2026 21:25:55 GMT  
		Size: 46.2 KB (46176 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm` - linux; arm variant v5

```console
$ docker pull joomla@sha256:fc1fd626bb1e12f2251ba471438ceec2a060e158625ad6c9e32bf998feadbc68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.4 MB (243418498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0ffe196ebc1fab1d911532a8de0cb1aa5e0a6ca93f3b89cd65ba1581ae13ad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:55:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:56:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:56:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:56:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:56:14 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:56:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:56:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:56:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:56:14 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:56:14 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:56:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:56:14 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:56:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:56:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:59:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:59:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:59:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:59:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:59:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:59:13 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:59:13 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:59:13 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:59:13 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:59:13 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:33:44 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:33:44 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:33:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:36:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:36:47 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:36:47 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:36:47 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:36:47 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:36:47 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:36:49 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:36:49 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:36:49 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:36:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:36:49 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87be2ae684f12b51ca9062acab7de8abab825d59174f6d0087df5299b2930485`  
		Last Modified: Thu, 02 Jul 2026 20:59:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d2a372c20b46b3c7ec01a436bb1ccfca6208f7862f58bc102b73e69e72a75f`  
		Last Modified: Thu, 02 Jul 2026 20:59:34 GMT  
		Size: 94.9 MB (94886987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b06ed9ccdfbe3814799d3d3307b0619d640bf42493d60e9d259e50c34fad8d`  
		Last Modified: Thu, 02 Jul 2026 20:59:32 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3139c8c30034a25752e725fb3f48a0ae3a8239cd647288d057f3256263d2bc79`  
		Last Modified: Thu, 02 Jul 2026 20:59:32 GMT  
		Size: 12.8 MB (12751090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a312e62b8f48f26fdee40f04f3a0b9c5740b87fa55dc28ddfa9bb7f81901d719`  
		Last Modified: Thu, 02 Jul 2026 20:59:33 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876394dcdc7cf57dba68446b455855040b0d6ef8f45febc185a035f065b51141`  
		Last Modified: Thu, 02 Jul 2026 20:59:33 GMT  
		Size: 10.7 MB (10695499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa76a8ac0284774313b0a5b3f195f0e66cf8a46d97defb7f26a438bd0508e649`  
		Last Modified: Thu, 02 Jul 2026 20:59:34 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e76ff3efdf5c842e5d966a344939053e101e4d7fb50461e2cf08e08fd23ffa7`  
		Last Modified: Thu, 02 Jul 2026 20:59:34 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b441700ee0a0a855ca8fec6fdd419ccac148e4f4a615b43c04dd7bd35bd643d7`  
		Last Modified: Thu, 02 Jul 2026 20:59:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d20a1de8f7894fad1bf37e9d2fa832b3d930b0e71913e6000d90320cc3e1b1`  
		Last Modified: Thu, 02 Jul 2026 20:59:35 GMT  
		Size: 9.3 KB (9255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7ce276af67e2efd421fb0a416279a0e851212d4c939adc997be1e202628c090`  
		Last Modified: Thu, 02 Jul 2026 21:36:58 GMT  
		Size: 26.8 MB (26824816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49d2d098f3cef922a356465ce93b75361666cd28c8bcc5a63719335b08555e0`  
		Last Modified: Thu, 02 Jul 2026 21:36:59 GMT  
		Size: 43.0 MB (42967797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6017204ceba341f7278292f555804d3014a3ec82c595a864538fe058fda49480`  
		Last Modified: Thu, 02 Jul 2026 21:36:57 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:699b22e69712c55df1a23af3eb92ce383409e57a271289c6ea9985ecfb4c29da`  
		Last Modified: Thu, 02 Jul 2026 21:36:57 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf1937441cf8a43e0a89361f846e4414587d07cbbc9185872f1170e61f57636`  
		Last Modified: Thu, 02 Jul 2026 21:36:59 GMT  
		Size: 27.3 MB (27314476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff95ea245526908520d615f2c940751b7fa52c5e27f09f255a56c31b0f49acc`  
		Last Modified: Thu, 02 Jul 2026 21:36:59 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8e7203dccbe9170f02f3b9f1031d9d96daa9cc30acd5a20ea8f36ddc1656fc9`  
		Last Modified: Thu, 02 Jul 2026 21:37:00 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:10927779f4d2ee8ba58e02dfae2bea3aefbe562ae07c5b98eac6899c7adcaa7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9465d7b8ec8b7a28e8e30745aea74ceeb7626ebac15300054b87ba6c0911469f`

```dockerfile
```

-	Layers:
	-	`sha256:e2a13720d86d86b4c2848ef639b29e88de3443449c1a1c2dd2f902d862dd63fc`  
		Last Modified: Thu, 02 Jul 2026 21:36:57 GMT  
		Size: 46.3 KB (46290 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm` - linux; arm variant v7

```console
$ docker pull joomla@sha256:989b45798ec6630a4e92e9aba410448e9c32443d0cc41d16f0d3587d98f9543f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.0 MB (230030876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2604601e99aad42522c469b0a5776e900bc7075d0aa01e6817cf85aa063d93d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:32:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:32:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:32:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:32:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:32:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:32:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:32:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:32:54 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:32:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:32:54 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:57:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:57:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:00:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:00:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:00:07 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:00:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:00:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:00:08 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:00:08 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 21:00:08 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 21:00:08 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 21:00:08 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:48:14 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:48:14 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:48:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:50:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:50:54 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:50:54 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:50:54 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:50:54 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:50:54 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:50:56 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:50:56 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:50:56 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:50:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:50:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f2c2c548750cc298a39eb761866c56de4ef54309400ef0df7314d8b901b0a5`  
		Last Modified: Thu, 02 Jul 2026 20:35:51 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b05b358b691e661e6e8c8b098b18c022e58f716f38ced2bbcc9c1bf2c383c20a`  
		Last Modified: Thu, 02 Jul 2026 20:35:53 GMT  
		Size: 86.3 MB (86256248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c1f83bbae8cbd052ab9044862a34643b17fd80a33a1f814f56bcbc3f0227e3`  
		Last Modified: Thu, 02 Jul 2026 20:35:51 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7475b528018f4883ea3c6b9dc48e01034272c744ab472edf926096a2dcb46151`  
		Last Modified: Thu, 02 Jul 2026 21:00:18 GMT  
		Size: 12.8 MB (12758849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7d486b06fd344e3add9e78f17d39c1b33b26e6e70a0f16884b9f3226b4f1cb`  
		Last Modified: Thu, 02 Jul 2026 21:00:17 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f57b326df7b65da17c0762f6371eda899392fe5e61f050bf8ced24b176f89d7`  
		Last Modified: Thu, 02 Jul 2026 21:00:18 GMT  
		Size: 10.1 MB (10086950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c4c6d5f398f7efc6583d85b4536005c2b70c117eb39e6332f9975a29cf3e8c`  
		Last Modified: Thu, 02 Jul 2026 21:00:17 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771f80226c56a0655d716b8f09131febdc9518eaf69dbf9f13743a9c01f11e3c`  
		Last Modified: Thu, 02 Jul 2026 21:00:19 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0bcba4a19c27e0eaba3511f778c9677d0650d45c9aea87c58e74f3f52ad4691`  
		Last Modified: Thu, 02 Jul 2026 21:00:19 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f884af5ff1285438d7ebd4075945c8d0bb850efccfab8899242b59c050aa06`  
		Last Modified: Thu, 02 Jul 2026 21:00:20 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62160b52c4ac2c01b4029a2620f6f7504918ad36d8d03a711ac80ef193638fd3`  
		Last Modified: Thu, 02 Jul 2026 21:51:05 GMT  
		Size: 26.0 MB (26011392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c6595267727dad6569dd715d8156c97b1ae5fe8fbc7d77ce8657a466a8e915`  
		Last Modified: Thu, 02 Jul 2026 21:51:06 GMT  
		Size: 41.4 MB (41373204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739e458a3b94dfba6c421fca4a088f6d8df06f0e25c1e1fa1860181fcdcce44a`  
		Last Modified: Thu, 02 Jul 2026 21:51:04 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d201d4fcdf9694506ff974137926069a98c2333ec1a591f51d1e9326f60669`  
		Last Modified: Thu, 02 Jul 2026 21:51:04 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4db8417ffd7679fd98e9f963b7df293fd9fb39d58bb0c76f6774f27c476fd9`  
		Last Modified: Thu, 02 Jul 2026 21:51:06 GMT  
		Size: 27.3 MB (27314569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e440a81ee208adfc1316ca7e8a8c2317ee63f8996a5c25c607ea0f643abf0c0`  
		Last Modified: Thu, 02 Jul 2026 21:51:05 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ed26ff713c8580fea4f9b6dad5382b652464d602d2f8e8ebf7e3569dc93f95`  
		Last Modified: Thu, 02 Jul 2026 21:51:07 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:bdab3dc0e954a548abf4b72b6f58935a5d1771770721b6cbcc232f634e5925bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a75d20959fa45b0e2b6cef8a77805211538ea3d1222afb3dccdaf085478e0e8f`

```dockerfile
```

-	Layers:
	-	`sha256:00f18a5ba76a8f4dfd223a49cc8af432ac6d3b7a0b9a852d34c33f6ef0e0582c`  
		Last Modified: Thu, 02 Jul 2026 21:51:04 GMT  
		Size: 46.3 KB (46292 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:6d6aa6127e0c3bff8c05625cdcc6a95857f66e88eb39404660ee3234cddd48a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263655217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd9d20f3e852c01641269d087fb5cf1dff968c14190d4a4c656572dfdc5aca1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:32:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:32:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:32:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:32:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:32:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:32:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:32:56 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:32:56 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:32:56 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:32:56 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:44:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:44:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:48:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:48:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:48:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:48:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:48:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:48:08 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:48:09 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:48:09 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:48:09 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:48:09 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:29:16 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:29:16 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:32:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:32:13 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:32:13 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:32:13 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:32:13 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:32:13 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:32:15 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:32:15 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:32:15 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:32:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:32:15 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a0ca11e432987f7a065151cd3d707620613839d5efe375f0c299ad0a92a576`  
		Last Modified: Thu, 02 Jul 2026 20:36:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7148470b2fd58f426cdb53a2f78773409d49ebb69621bc4ab34bb8dc689ddb98`  
		Last Modified: Thu, 02 Jul 2026 20:36:27 GMT  
		Size: 110.2 MB (110169856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c90e7e4c9feec444a44555536d857859cc8be0d1361bc6bcbe524ca93147e7`  
		Last Modified: Thu, 02 Jul 2026 20:36:22 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3aca14ff7f97b8237d1bd12e90eb8bf6efa18c9ad6cfc756682083679e6d4b`  
		Last Modified: Thu, 02 Jul 2026 20:48:20 GMT  
		Size: 12.8 MB (12753135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736e584a5d64e06da3097d15ee5fe756861ef04176fdd7107138b45628319181`  
		Last Modified: Thu, 02 Jul 2026 20:48:19 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed4e3488cae132941cd4aba0f76130b8d1c2eb2b158b60a598818d8f3aa0d72`  
		Last Modified: Thu, 02 Jul 2026 20:48:20 GMT  
		Size: 11.9 MB (11925021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e5be02d39549c69b56b18c9916a4d4dec024cffe43349527f4375255935b13`  
		Last Modified: Thu, 02 Jul 2026 20:48:19 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e440746a368e0f066be897be440cd5e3b25ab46b45ed7c40d898ac2d7ba70da`  
		Last Modified: Thu, 02 Jul 2026 20:48:20 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0b73490e1b6bfceb63f6850bd92b008c0e95d192418c7812c6be6bf71746b90`  
		Last Modified: Thu, 02 Jul 2026 20:48:20 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dafa910743e4478528952f25154512895497a2277bfc00e7fec332056170a498`  
		Last Modified: Thu, 02 Jul 2026 20:48:21 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b2913b9931cb4024599af81883944bb3702f9c3b9077f963aae8500b80ceddd`  
		Last Modified: Thu, 02 Jul 2026 21:32:25 GMT  
		Size: 27.2 MB (27214535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0834dda8786d04d8f1f7ecef5da699664021f1330ef3ac4024526fb225ad9b6`  
		Last Modified: Thu, 02 Jul 2026 21:32:25 GMT  
		Size: 44.1 MB (44111044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ec2652928f0aefe8f7de4ffeb9199a22db4d144604ab67450e511b07d6b7825`  
		Last Modified: Thu, 02 Jul 2026 21:32:23 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03100083540d288dcf1ad4e54674d0b178e2c9fa14a095c32b51750024b0ed5d`  
		Last Modified: Thu, 02 Jul 2026 21:32:24 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad5fa67d264533fdfc6a669ae6c5458e4bab9b9c4012f48a80fbf2228571b17`  
		Last Modified: Thu, 02 Jul 2026 21:32:25 GMT  
		Size: 27.3 MB (27314471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8dcd9f44236c0f64ca7c43d57e0da2b000df0e815eb6b72c1d9d67ec0469d91`  
		Last Modified: Thu, 02 Jul 2026 21:32:25 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1b590b215c5059443ce3bcc9754c3c77b26aceb41aa0710b01afa375089c13`  
		Last Modified: Thu, 02 Jul 2026 21:32:26 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:9ff4dc96549359b879860b20590e2af39e4c228e66a56513adfbfa1aa00aff57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5459c7c7382691f49e0a9088065b681645442933134947c187c53b365debdd10`

```dockerfile
```

-	Layers:
	-	`sha256:f2bd37f126c742cc42de4c0dedcf1649292902d7d1ed34ff8506493b93b042df`  
		Last Modified: Thu, 02 Jul 2026 21:32:23 GMT  
		Size: 46.3 KB (46328 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm` - linux; 386

```console
$ docker pull joomla@sha256:4cf7caeb215c296c2b3649797f0ad309618e15aa8ebf0ecc059dce5c189071d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.9 MB (272925716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de4475d22a48f7e4bb7c1b817a7072b92edef772d0140ceaaa51d941a2bb2a1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:32:57 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:33:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:33:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:33:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:33:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:33:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:33:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:33:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:33:25 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:33:25 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:33:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:33:25 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 20:43:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:43:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:46:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:46:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:46:20 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:46:20 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:46:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:46:20 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:46:20 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:46:20 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:46:20 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:46:20 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:24:12 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:24:12 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:24:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 21:26:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:26:26 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:26:26 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:26:26 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:26:26 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:26:26 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:26:27 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:26:27 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:26:27 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:26:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:26:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8287879fb603790195201132e235bfa76eb8651474e846c045d3900a5119638`  
		Last Modified: Thu, 02 Jul 2026 20:36:31 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9fe86f9d7bb1f8ecf9615fabe2332a86e83e058a8a8c30c0df052366bec7d79`  
		Last Modified: Thu, 02 Jul 2026 20:36:34 GMT  
		Size: 116.1 MB (116142741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087ae1e012689f8aad4ebabc5b9313db98a0b1199e589a93eb93ee062cfeaf03`  
		Last Modified: Thu, 02 Jul 2026 20:36:31 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59e419b50dca61668188371541fe258e0b586c967122ad4779deaaa19ad12a6`  
		Last Modified: Thu, 02 Jul 2026 20:46:30 GMT  
		Size: 12.8 MB (12752437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e794e1a45392e0a92cc40f5e3d55d21a1ee67a5b6aff37597d22c7fa62f37b99`  
		Last Modified: Thu, 02 Jul 2026 20:46:29 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62992fb39414ab9ef1ef2a039f66672493d327123b8a1a2c9efd97a09f2e7b14`  
		Last Modified: Thu, 02 Jul 2026 20:46:30 GMT  
		Size: 12.1 MB (12109914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b9f391f74fe5953b02b8dddae8f00785e15967d2e534f837a839beaedfa0526`  
		Last Modified: Thu, 02 Jul 2026 20:46:29 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa957da919b0175111cf8a406be2ce24ffaf47099582b762af54acb1a5d207f`  
		Last Modified: Thu, 02 Jul 2026 20:46:31 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996face6982042c8ac518bbb06994dbf4c2f16cdef6d81104ca84dc60e63b632`  
		Last Modified: Thu, 02 Jul 2026 20:46:31 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a08a6608388901d1f3f325b70592e93eea00d53af5aee8030e72f1f655204d5`  
		Last Modified: Thu, 02 Jul 2026 20:46:31 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb17b9202c8f5e68f4f7a2ab14b21f474a32bedd697b3e9ae21065ce71f5ca5`  
		Last Modified: Thu, 02 Jul 2026 21:26:37 GMT  
		Size: 27.8 MB (27842346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d7445b9cd3fc604f635bdcfb5d0f290965ff71d7888299881952c421e048a0`  
		Last Modified: Thu, 02 Jul 2026 21:26:38 GMT  
		Size: 45.4 MB (45444040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eca25a14a13444cc92be326d4f62c016730ccda4c409a770bd9d579d879a20`  
		Last Modified: Thu, 02 Jul 2026 21:26:36 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3490e5082dc4a370c8262a5f832527d9041f0ee8e77a4c0c8a7641f945bc50d`  
		Last Modified: Thu, 02 Jul 2026 21:26:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c6936ca4d52c0fb82ae0ffdff1422143304e5268da6edc0cfa67ea7f0f7196`  
		Last Modified: Thu, 02 Jul 2026 21:26:38 GMT  
		Size: 27.3 MB (27314409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2fbec03226c21664a302b812289d5b94f3abb1b68120cb390dedeea2a2430e`  
		Last Modified: Thu, 02 Jul 2026 21:26:37 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7344c44dfe1ce8ce631d62745530acae5b9074a05e4764d6913f1e8cbb372e9f`  
		Last Modified: Thu, 02 Jul 2026 21:26:38 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:1e2628235fcd60e71be6e865ee738d402be3c2d7c10ffdcdfba0a4b5b7bb924c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 KB (46141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65af4e36c4efb8bcfdb5164c744979acd7572de23f44aede7f549f423c2f914`

```dockerfile
```

-	Layers:
	-	`sha256:ca10c79365022a9b1bf72a559b93c3bbf690012e0dea76fd566fee7df5837ebb`  
		Last Modified: Thu, 02 Jul 2026 21:26:35 GMT  
		Size: 46.1 KB (46141 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm` - linux; ppc64le

```console
$ docker pull joomla@sha256:fcb14b37f88dd9c4e521a4f86576661e98e5e02ae234b390c3cc4fe5c4843a5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271300578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438a29fe484f28315158908c04d44b350491d70ebd2b07bafbfed6cddad61c7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Wed, 24 Jun 2026 01:47:53 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 24 Jun 2026 01:48:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 24 Jun 2026 01:48:31 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 24 Jun 2026 01:48:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 24 Jun 2026 01:48:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 24 Jun 2026 01:48:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 24 Jun 2026 01:48:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 24 Jun 2026 01:48:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 24 Jun 2026 01:48:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 24 Jun 2026 01:48:32 GMT
ENV PHP_VERSION=8.3.31
# Wed, 24 Jun 2026 01:48:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.31.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.31.tar.xz.asc
# Wed, 24 Jun 2026 01:48:32 GMT
ENV PHP_SHA256=66410cee07f4b2baeb0843140bb2a2b52ef930b5cf9b3d6e6d158b33aae8fa37
# Wed, 24 Jun 2026 02:27:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 24 Jun 2026 02:27:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:34:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 24 Jun 2026 02:34:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 24 Jun 2026 02:34:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 24 Jun 2026 02:34:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 24 Jun 2026 02:34:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 24 Jun 2026 02:34:46 GMT
WORKDIR /var/www/html
# Wed, 24 Jun 2026 02:34:46 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 24 Jun 2026 02:34:46 GMT
STOPSIGNAL SIGQUIT
# Wed, 24 Jun 2026 02:34:46 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 24 Jun 2026 02:34:46 GMT
CMD ["php-fpm"]
# Wed, 24 Jun 2026 10:15:51 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 24 Jun 2026 10:15:51 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 24 Jun 2026 10:15:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 24 Jun 2026 10:20:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 24 Jun 2026 10:20:22 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 24 Jun 2026 10:20:23 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 24 Jun 2026 10:20:23 GMT
VOLUME [/var/www/html]
# Wed, 24 Jun 2026 10:20:23 GMT
ENV JOOMLA_VERSION=5.4.6
# Wed, 24 Jun 2026 10:20:23 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Wed, 24 Jun 2026 10:20:26 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 24 Jun 2026 10:20:26 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 24 Jun 2026 10:20:27 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 24 Jun 2026 10:20:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 24 Jun 2026 10:20:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64e77efe72bf9ab01112d6628b561df155e58c8abb9a5c50ca8c3c2d3054015`  
		Last Modified: Wed, 24 Jun 2026 01:53:55 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a885bf66539705f27716480915d14f847c62afd59e7c77b0d7a2ec11fcf9f8`  
		Last Modified: Wed, 24 Jun 2026 01:53:59 GMT  
		Size: 109.6 MB (109598576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6270c259f3728f03e6c19bf8bc89dd6cfe4f6a02bdbe4c4a66ac81d4e83afc0f`  
		Last Modified: Wed, 24 Jun 2026 01:53:55 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e993bd805353a37aff8f6793ef5b7c519eb45d67f9a5eb3aa16f7b7edb008146`  
		Last Modified: Wed, 24 Jun 2026 02:31:07 GMT  
		Size: 12.8 MB (12750414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47eee37f7cc7b4a29cb70ad1a0dd48dc4e30b688b5015cf3448281b45ee99f1a`  
		Last Modified: Wed, 24 Jun 2026 02:31:06 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95eea082b0973fafd1d8e8c1cc98fd04a9be005a39954dc4d76d5dc03e561bd`  
		Last Modified: Wed, 24 Jun 2026 02:35:08 GMT  
		Size: 12.4 MB (12440312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b1fcb52c414cbc6d206c76a672f76100c964f277195d528508c6137781c086`  
		Last Modified: Wed, 24 Jun 2026 02:35:07 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b9c52388301003f7c11e201f23b41d720274c6b0e7cbd3231d03226a95709c`  
		Last Modified: Wed, 24 Jun 2026 02:35:07 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a81ead3cea4df8a3230f97669e60f6684c22caa3c4245b9d10854b8f8b8a42`  
		Last Modified: Wed, 24 Jun 2026 02:35:07 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c1ec6a87cbfd9e02a7a67615b0a073e9f7e127f18ace280a17143d5e0474a6`  
		Last Modified: Wed, 24 Jun 2026 02:35:09 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c1dd6b9fe752617ea95939e6fc277306e6b415a340f1f1da38a7a0641ab0b9`  
		Last Modified: Wed, 24 Jun 2026 10:20:44 GMT  
		Size: 28.6 MB (28555862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4ada7310d7dc1bae031211b92f32aeecc166c7419327b4738b3144a30cd1b1`  
		Last Modified: Wed, 24 Jun 2026 10:20:45 GMT  
		Size: 47.0 MB (47015877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b4650e57e041c9d92b2973f56d1ab6d82de9ec39a051c5027793f9813cb7b85`  
		Last Modified: Wed, 24 Jun 2026 10:20:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208928d6b1c93434b6da451755860f85582c698f8b81bfa4c6c8c228da855747`  
		Last Modified: Wed, 24 Jun 2026 10:20:42 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68a4de9aefc99a0e14a2e627fdaccc64b9745c08baa9f77921cf84eab5733fe`  
		Last Modified: Wed, 24 Jun 2026 10:20:45 GMT  
		Size: 27.3 MB (27314547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b214a959d0d9276f5239b0b97e909c0973b37bd592cee4e0f5a354b86841995`  
		Last Modified: Wed, 24 Jun 2026 10:20:44 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d31b8f5f10dcd5b9497b618a9aa02aedded7b80cef0ecb407b99a4389f924cf3`  
		Last Modified: Wed, 24 Jun 2026 10:20:45 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:3a138145fc00cfd2dd403ea75d18954a97b9748bcd28e1af8e81af17b4a2dcd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815f19df5f5c8a56810e4d64dc2332e96204e736d6378a2a6ef22e32d9fc649b`

```dockerfile
```

-	Layers:
	-	`sha256:c7d78f070a1da29af42f40a5125311ae0632524c4cec8628403aafd0a49edcdb`  
		Last Modified: Wed, 24 Jun 2026 10:20:42 GMT  
		Size: 46.2 KB (46221 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm` - linux; riscv64

```console
$ docker pull joomla@sha256:225e3151ca167533366c33ef6879826e475f05bee3331b2b7fc1ceaf4bf4f8cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.6 MB (306645583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d848d708047d42004becf95ef4196ebf0dcda6ad19297820c1d844d25bd21cd4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 25 Jun 2026 03:10:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 25 Jun 2026 03:12:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 25 Jun 2026 03:12:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 25 Jun 2026 03:12:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 25 Jun 2026 03:12:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 25 Jun 2026 03:12:45 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_VERSION=8.3.31
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.31.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.31.tar.xz.asc
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_SHA256=66410cee07f4b2baeb0843140bb2a2b52ef930b5cf9b3d6e6d158b33aae8fa37
# Thu, 25 Jun 2026 10:44:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 25 Jun 2026 10:44:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 13:21:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 25 Jun 2026 13:21:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 25 Jun 2026 13:21:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 25 Jun 2026 13:21:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 25 Jun 2026 13:21:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 25 Jun 2026 13:21:13 GMT
WORKDIR /var/www/html
# Thu, 25 Jun 2026 13:21:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 25 Jun 2026 13:21:14 GMT
STOPSIGNAL SIGQUIT
# Thu, 25 Jun 2026 13:21:14 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 25 Jun 2026 13:21:14 GMT
CMD ["php-fpm"]
# Sat, 27 Jun 2026 22:23:07 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 27 Jun 2026 22:23:07 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 27 Jun 2026 22:23:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 27 Jun 2026 22:49:54 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 27 Jun 2026 22:49:55 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sat, 27 Jun 2026 22:49:56 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Sat, 27 Jun 2026 22:49:56 GMT
VOLUME [/var/www/html]
# Sat, 27 Jun 2026 22:49:56 GMT
ENV JOOMLA_VERSION=5.4.6
# Sat, 27 Jun 2026 22:49:56 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Sun, 28 Jun 2026 00:33:38 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Sun, 28 Jun 2026 00:33:39 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sun, 28 Jun 2026 00:33:39 GMT
COPY makedb.php /makedb.php # buildkit
# Sun, 28 Jun 2026 00:33:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 28 Jun 2026 00:33:39 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5857a11081278c6794a11415cb81a403d5e56a1e98d5a05a474e4751b6bbbbab`  
		Last Modified: Thu, 25 Jun 2026 04:15:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f64aa12de76796ba620c1f61dfbf00595d86b22e83c70e23ab80e22f6f224c`  
		Last Modified: Thu, 25 Jun 2026 04:16:17 GMT  
		Size: 146.6 MB (146585183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75d48c7e93a7ac2ea8e95b78d618385a5865f4b0674a6016d1f7a6e51225d7c`  
		Last Modified: Thu, 25 Jun 2026 04:15:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f7087cd967ab0e0fd89621acd6fc6eb00edae45fb37ecad59331a58ee30f51`  
		Last Modified: Thu, 25 Jun 2026 11:36:57 GMT  
		Size: 12.8 MB (12758000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9abe71e45d83ec747e4194c364a76493be5db187cf00d0a8d61ef20095febf9`  
		Last Modified: Thu, 25 Jun 2026 11:36:53 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbeb8a122ce1c4621431ef8d08b55f32567fe6f5b0d97bc07d0ef8529d5728f8`  
		Last Modified: Thu, 25 Jun 2026 13:24:08 GMT  
		Size: 11.5 MB (11467608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c40289b7226abc8e405f8c33a78255c08d0602485125ec4ab294b4ae98bc66e`  
		Last Modified: Thu, 25 Jun 2026 13:24:06 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1be73edae3d5d9c3a92d10d5daf1f883ae16fef176ff85a68f5b287eb5d0691`  
		Last Modified: Thu, 25 Jun 2026 13:24:06 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28da24ad6367e0332f313c5faa2f2177bd349567a5d29f6e2d7588ebd0476d45`  
		Last Modified: Thu, 25 Jun 2026 13:24:06 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a7de4065080a1df4af3a0b9589c7de95783e4a02cae5484879d74c1496ab6b`  
		Last Modified: Thu, 25 Jun 2026 13:24:08 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feda34d35cf1793e18c1ad3c0d6bde75d9cbc6df2aaae61118f328bb8fd15147`  
		Last Modified: Sat, 27 Jun 2026 22:52:29 GMT  
		Size: 27.3 MB (27327489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe1af27d5b5c37d8a1fec429f535eeb185b6cdf4c5943b9848e4e9c387022ad`  
		Last Modified: Sat, 27 Jun 2026 22:52:34 GMT  
		Size: 52.9 MB (52891863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4e8972afeb54a90b2e9c373a5c0f9f46a4784623d079381131d62e07469ced`  
		Last Modified: Sat, 27 Jun 2026 22:52:17 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c4d4941d695208fed261cc96476418880fc159727f054b6f0882ba7722226f`  
		Last Modified: Sat, 27 Jun 2026 22:52:17 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939c79720e4013b2d83001c4d0998eef7815eda84027e301b9fa9c09de432c1d`  
		Last Modified: Sun, 28 Jun 2026 00:35:15 GMT  
		Size: 27.3 MB (27314431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7119d1f0c5367a77698093a9819d49d9f2394ef67ed479299cf9f375405189f8`  
		Last Modified: Sun, 28 Jun 2026 00:35:10 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b495cc3b46c26eb942c4303bb5ce3c903a3f79d5e921f59de38f9e1d117bc7`  
		Last Modified: Sun, 28 Jun 2026 00:35:11 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:5cbc70030f0f98e44ea4726a80528bc67b5d0e16a6c54d762f4fa1592b769083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225b917933ecf3cb4e07243e3b88a256ee5f483b461c50d42d78335f7cb73383`

```dockerfile
```

-	Layers:
	-	`sha256:bb265d6cfc9f8607bf3926d5f45fdb867937bda55af0f6b5efefe7efe226b8b7`  
		Last Modified: Sun, 28 Jun 2026 00:35:10 GMT  
		Size: 46.2 KB (46222 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm` - linux; s390x

```console
$ docker pull joomla@sha256:bdc37d5b87709f9cac0e55c3a400e91b51925797661752992b765e7934306387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246705545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e41d4b93907152dc5fa44b204ba2ff55443952b8911961ecb3f8c84da20b42b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:31:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:31:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:31:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:31:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:31:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:31:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:31:40 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:31:40 GMT
ENV PHP_VERSION=8.3.32
# Thu, 02 Jul 2026 20:31:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 02 Jul 2026 20:31:40 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Thu, 02 Jul 2026 21:10:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 21:10:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:14:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:14:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:14:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:14:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:14:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:14:47 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:14:48 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 21:14:48 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 21:14:48 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 21:14:48 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 22:38:47 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 22:38:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 22:38:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		zstd 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 22:41:07 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 22:41:07 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 22:41:07 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 22:41:07 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 22:41:07 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 22:41:07 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 22:41:09 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 22:41:09 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 22:41:09 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 22:41:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 22:41:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24549574cafa2d14758f9bad0b552d3186e9a87b47d125cf6f4e680109299ef5`  
		Last Modified: Thu, 02 Jul 2026 20:36:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b403cfa335a77323eea4ad7fa7bbad351654fd6d7e46de34561e1ae775e37e`  
		Last Modified: Thu, 02 Jul 2026 20:36:04 GMT  
		Size: 92.6 MB (92572435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39561fa42a7c5dbfbc6bf31633778e52d33970d79fc12092a8ccef1699c74a44`  
		Last Modified: Thu, 02 Jul 2026 20:36:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9545bd4662a47f8c131a15b5c255b7cb94147830030fdf669740772fc89e5c9`  
		Last Modified: Thu, 02 Jul 2026 21:15:09 GMT  
		Size: 12.8 MB (12759569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8c71c5198de9976767e2957bb4ebc60ecb7fe032c695125077be9c2f79e3da`  
		Last Modified: Thu, 02 Jul 2026 21:15:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3566009e313f1f8407e32876dc72ba448fb93b8a357dae8f42832fab0f5d5b3e`  
		Last Modified: Thu, 02 Jul 2026 21:15:09 GMT  
		Size: 11.8 MB (11772789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac4ada46dac71bc3ea0f303cdb40171e300faa5193a48cd5c2c9499311fda93`  
		Last Modified: Thu, 02 Jul 2026 21:15:09 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85073cd70352f7319f36b91f6a0562bc523694261b1bf3ac92587fc8bee6751`  
		Last Modified: Thu, 02 Jul 2026 21:15:10 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dedfa9a955c8eb18a4ca035bb5280acfb6d4049e6f4a4055500d8a41e328755`  
		Last Modified: Thu, 02 Jul 2026 21:15:10 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9adee43886200c3df6681f544d2217ab1f91e0b6b1af1c74916041e4499bf04`  
		Last Modified: Thu, 02 Jul 2026 21:15:10 GMT  
		Size: 9.3 KB (9258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18eca114afcef574182a42a6668d4b6986039c1a1e5efb76b419f912e4c31f5`  
		Last Modified: Thu, 02 Jul 2026 22:41:23 GMT  
		Size: 27.7 MB (27675627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc946cda48328b42f736e6e8bab5110defbe3b956aecd4ec4bb6f5062e45e62`  
		Last Modified: Thu, 02 Jul 2026 22:41:24 GMT  
		Size: 44.7 MB (44740720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725b66ac2d95d50b9db434e3837f6af01fff03a91f25e535269dd9e2f9219611`  
		Last Modified: Thu, 02 Jul 2026 22:41:23 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74310f116cb07042dd982ea984f186aceb6937dfeeb7a47a01c0e29806ab7dd8`  
		Last Modified: Thu, 02 Jul 2026 22:41:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:950a5d6d00c319e5b3aaa13a5cba49bd9fe619c58b2b53c2c6b082169c3eab11`  
		Last Modified: Thu, 02 Jul 2026 22:41:24 GMT  
		Size: 27.3 MB (27314401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bb423c3ae8bb6288a25897b84bae29b504147be5692936e86eb74f558727d7e`  
		Last Modified: Thu, 02 Jul 2026 22:41:24 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15f2f21d585073b9a529286b59a2f319af0b7dd8fccf2c9331588606e93b69a`  
		Last Modified: Thu, 02 Jul 2026 22:41:25 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:85da1b1096024d65ce727b405158ca3de1104f549d0e7b28f128f0c2b699043f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388a66176183b1b9dc43c6f19f9afa2e9f4939bbc615aacd5f5cd8e10294becb`

```dockerfile
```

-	Layers:
	-	`sha256:85145e72797739abf795694c8fc631da6f90a10a4a7bee5f7cdc98419e725658`  
		Last Modified: Thu, 02 Jul 2026 22:41:23 GMT  
		Size: 46.2 KB (46168 bytes)  
		MIME: application/vnd.in-toto+json
