## `espocrm:fpm-trixie`

```console
$ docker pull espocrm@sha256:9d4b5d6df106d9e6138c9a8ffd5fda9505249695f3c087219782d53559192e04
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `espocrm:fpm-trixie` - linux; amd64

```console
$ docker pull espocrm@sha256:f3410e7e7c598c9920f8765a7d6d4796e8bd51077d86daaf46a141d100767e91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256714004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab425ab1d0a2f242bfb16196f50cb3d7fc0d4f90414d541c9e3d5475ee30258`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:17:41 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:17:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:17:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:17:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:17:57 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:18:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:18:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:20:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:20:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:20:23 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:20:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:20:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:20:23 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:20:23 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:20:23 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:20:23 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:20:23 GMT
CMD ["php-fpm"]
# Thu, 03 Sep 2026 19:08:29 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:08:29 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:08:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:09:36 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:09:36 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:09:36 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:09:36 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:09:36 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:09:44 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:09:44 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:09:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:09:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e4e21edac3719784f3d99ea9a827b6325bd1b4b8bbab7fd73a51a3deb597d9`  
		Last Modified: Thu, 27 Aug 2026 20:20:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255a18af27b195a6141cf57ea54927e6a3050a42bf05a5d8b00a65485438aca8`  
		Last Modified: Thu, 27 Aug 2026 20:20:46 GMT  
		Size: 120.8 MB (120814198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017dd0d6f8be1a1570bdbdb22cb5028b076c13bc77e938e2a6ce08f85d4203d8`  
		Last Modified: Thu, 27 Aug 2026 20:20:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a703bdb7a61b84ad554bb6ecb3b7e05d2d0086b68282e9b57ab35ddd8c479ea6`  
		Last Modified: Thu, 27 Aug 2026 20:20:43 GMT  
		Size: 13.9 MB (13906991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3799e443bea822c91716c995507ced0efc104b8e5e38b7ef37eaecdda8f3fd2c`  
		Last Modified: Thu, 27 Aug 2026 20:20:44 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d61e9b603c13d765d36ecbfaaf58bde443a766fd9e1f7cee8ebc4621312651`  
		Last Modified: Thu, 27 Aug 2026 20:20:44 GMT  
		Size: 13.8 MB (13824563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f9d857b68420f90db3d390d76858c462e50f413f5be54740058758ea75dd87`  
		Last Modified: Thu, 27 Aug 2026 20:20:45 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68abfcb97d91c483c16ed532a5895116b7a3eff1d420c55f307f0acf7496cf8b`  
		Last Modified: Thu, 27 Aug 2026 20:20:45 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6de07086b75e045e81f30d270813079a714b8b44ebce004089c5beb53eb22a6`  
		Last Modified: Thu, 27 Aug 2026 20:20:46 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f215231af08a3853745254532ae83f7c7671d4c2726a8404f28b0de42c1289`  
		Last Modified: Thu, 27 Aug 2026 20:20:46 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9bad11dd41bc5fc40a1f0dbd4e8e91b7a18ee6370fa90af08c3792db7bf6359`  
		Last Modified: Thu, 03 Sep 2026 19:09:54 GMT  
		Size: 265.1 KB (265118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c7caadf74c560eb80495cc86ab21516511e7b201f6b11f8296583072f7ce58`  
		Last Modified: Thu, 03 Sep 2026 19:09:54 GMT  
		Size: 4.1 MB (4124928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6faf38868f996352de4844c3e79f7b403e0b274314b6a93203370404ee687dfb`  
		Last Modified: Thu, 03 Sep 2026 19:09:54 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee1867135ce704928fa645cd43352244967af4b233ac8f7031545eb757c869b`  
		Last Modified: Thu, 03 Sep 2026 19:09:56 GMT  
		Size: 74.0 MB (73968547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e470d296dee4aa3c3d1529a3b0fda87ffa5ea84ec65c617cdaeb6c16191e5b1e`  
		Last Modified: Thu, 03 Sep 2026 19:09:55 GMT  
		Size: 3.4 KB (3395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:dd9afa1215c9373ef821039b676e122c5993ed6755aa4d22b11f6b91a10dd506
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 KB (41638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71201c8515ea274847c6dcb9d17c3e477db07ff6591ff16e70bcdb4e7d06a1c2`

```dockerfile
```

-	Layers:
	-	`sha256:3939dea6fcd980238285ae550bc14d568a22fc15f15c415e8d04d3c01465584a`  
		Last Modified: Thu, 03 Sep 2026 19:09:54 GMT  
		Size: 41.6 KB (41638 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-trixie` - linux; arm variant v5

```console
$ docker pull espocrm@sha256:9cd9855f2826b00e2bb7383b9df8b1734efded4a214c05a56bc90333faffb120
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229511490 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8798f310d6597bab8414ef9c63871d67bca2475324305e180e87d03f702f977e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:19:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:19:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:19:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:19:46 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:19:46 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:19:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:19:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:22:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:22:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:23:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:23:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:23:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:23:00 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:23:00 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:23:00 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:23:00 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:23:00 GMT
CMD ["php-fpm"]
# Thu, 03 Sep 2026 19:08:49 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:08:49 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:08:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:10:21 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:10:21 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:10:21 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:10:21 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:10:21 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:10:30 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:10:30 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:10:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:10:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfed08b55a5cc661dd00e5deb5a3783926ee1ebd72a0ba58d4a0ad44400664a`  
		Last Modified: Thu, 27 Aug 2026 20:23:18 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91551b53781b61480ad2bcccfd44d4976de936671ea2cef8cf6e3517707bd74e`  
		Last Modified: Thu, 27 Aug 2026 20:23:21 GMT  
		Size: 97.3 MB (97251597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23a1d51343202dbd2c635031e8fdf8c9cdb147912818df5a4b62eb1dc7130225`  
		Last Modified: Thu, 27 Aug 2026 20:23:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33955799bf09946f7cc28f0881463ec442e663aeafc0b8bc05baf2d39576d000`  
		Last Modified: Thu, 27 Aug 2026 20:23:19 GMT  
		Size: 13.9 MB (13904883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9e65e87d4aaa7b586aa21c285ae275d9f9749ab525ca30fe6ce6970d3be35a`  
		Last Modified: Thu, 27 Aug 2026 20:23:20 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ca0c1e368b3dd6ed557fe080e73dc5fd089f2f37eafb492d47bacfe4bec46d`  
		Last Modified: Thu, 27 Aug 2026 20:23:20 GMT  
		Size: 12.3 MB (12338691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acf67f3b698404ad7b429e3a8f922c667300275da3a4d3c95a479f398c081e0e`  
		Last Modified: Thu, 27 Aug 2026 20:23:21 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03aca6f4357f97e0e29ae3d1f47ab9a5d5925deacd05b3773e6f4a8d32a0796`  
		Last Modified: Thu, 27 Aug 2026 20:23:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:859765bb79e6e71d956154217fc3ed3b5a5a83c34936ab79b1dd627f144665e4`  
		Last Modified: Thu, 27 Aug 2026 20:23:21 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2c445e848a90cbae8373e96aa02e8e996c4cb8baae07bd0635e484cfef435e1`  
		Last Modified: Thu, 27 Aug 2026 20:23:22 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fbe973078718149cec3cff7680999f5da394daa40848623f41b9a957ac50b9`  
		Last Modified: Thu, 03 Sep 2026 19:10:40 GMT  
		Size: 256.6 KB (256630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83abeeaa7797f529fbf83bc3d9ca3375fa513d0c8ae9783839f244dd6669c35c`  
		Last Modified: Thu, 03 Sep 2026 19:10:41 GMT  
		Size: 3.8 MB (3805203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2ef00281bf36f1869ffcc7554e023b37b29a49560e03ce986d1486984ee9cb`  
		Last Modified: Thu, 03 Sep 2026 19:10:41 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328f600830a4c0121f397a206eebf3081703b1084f9edfdb4830334f7764c929`  
		Last Modified: Thu, 03 Sep 2026 19:10:43 GMT  
		Size: 74.0 MB (73968528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cd155b334d3cfbe3830c005fcd174f9115efc8ac95c28979922107af4fa3952`  
		Last Modified: Thu, 03 Sep 2026 19:10:42 GMT  
		Size: 3.4 KB (3399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:2c374adc4b9eb9daefdeace93b3ce542d31c7fb1ee285cc7f6ce0df1aa16f44e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea229f9b65937273c0681ec9c8215bed20f809092a02ad04a4fd2f0b802007f`

```dockerfile
```

-	Layers:
	-	`sha256:27c3eddc3048db20d35d851b8a095be2ace5d7dec2cb40e6c15cf102bfb21fbd`  
		Last Modified: Thu, 03 Sep 2026 19:10:40 GMT  
		Size: 41.8 KB (41784 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-trixie` - linux; arm variant v7

```console
$ docker pull espocrm@sha256:02d1e6722e6f77d0d8a1be38586f20c55728ef51b2728a71ea999348e31490f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218080781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18b12e6b648b04ceaf45ff3cc339f3c8f289506a3f9883b8088209c3e2e1e41b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:17:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:17:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:17:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:17:19 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:17:19 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:24:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:24:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:27:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:27:11 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:27:11 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:27:11 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:27:11 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:27:11 GMT
CMD ["php-fpm"]
# Thu, 03 Sep 2026 19:06:25 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:06:25 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:06:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:07:50 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:07:50 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:07:50 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:07:50 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:07:50 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:07:59 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:07:59 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:07:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:07:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a622ec0d910b4682b04d62ab8e196b41a807219224ee8d1bffb8c3e5471beb45`  
		Last Modified: Thu, 27 Aug 2026 20:20:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082f264442595f63ebd66f3d4443d103f49c008dc95f4b1dedea8606c44854ad`  
		Last Modified: Thu, 27 Aug 2026 20:20:28 GMT  
		Size: 88.5 MB (88459777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cee783ef141fcb1dc8682e8cc1672b9f558bdc112ffcbc27eaefbba93f5cd5aa`  
		Last Modified: Thu, 27 Aug 2026 20:20:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f661460603faf4fac85655a1793ebf07b2b59b46361cf5114ba0666c0ffcd219`  
		Last Modified: Thu, 27 Aug 2026 20:27:22 GMT  
		Size: 13.9 MB (13904953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63ccddc896289ef206058e776f0d3a59920d7fe898345ea37eb7f1445c52eff`  
		Last Modified: Thu, 27 Aug 2026 20:27:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4803b9a77b43d36e4b282a7428993f1cb4af0b6208925c65df003206758846`  
		Last Modified: Thu, 27 Aug 2026 20:27:22 GMT  
		Size: 11.7 MB (11667434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74903933b320f0a4472fb857d9c3d21efaa3e9dc7d1e2b33a496913fa7e71dc1`  
		Last Modified: Thu, 27 Aug 2026 20:27:21 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3148d814ddd49154e19dedf034542ebc32705c8b5b0cd571750747fe4bc81e1`  
		Last Modified: Thu, 27 Aug 2026 20:27:22 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa6ec9f6de9374982ec9eb5e3bd4a1c982f79956e38a8d09d98a94227ab6758`  
		Last Modified: Thu, 27 Aug 2026 20:27:22 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc636136944a631495ea6706fd7810eb7c0ebafb3ce486949160196563184ecd`  
		Last Modified: Thu, 27 Aug 2026 20:27:23 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d6cae05779a884d19d724fdc2e114f0d17fd132409c251860526da68f8b3f2`  
		Last Modified: Thu, 03 Sep 2026 19:08:10 GMT  
		Size: 243.8 KB (243759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61ad6a5337ca8788c58dbacb8af66d46d018137ee832fee08a1a024e0dd52e74`  
		Last Modified: Thu, 03 Sep 2026 19:08:10 GMT  
		Size: 3.6 MB (3600196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:befe903f43f2046c3375d72b7bdea0ab4f60923f398dfe8509bc99716b6890dd`  
		Last Modified: Thu, 03 Sep 2026 19:08:10 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45936a2e1001c9e348b547a9a37fac0ea95813ab804eefef665ba545467950f`  
		Last Modified: Thu, 03 Sep 2026 19:08:12 GMT  
		Size: 74.0 MB (73968508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d987a49b925b35b883b70ef8ef988b21455e9dbdae476df28b321cf2082299b3`  
		Last Modified: Thu, 03 Sep 2026 19:08:11 GMT  
		Size: 3.4 KB (3397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:5e4b9f2dbc89ec248b8e6fda109a3acc661b6aa5b73c61dc7b0d1a2158d342bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033ea183f9cb736d5bab26f797f4fb74cd7ad65f52c69ef6b8683db7b89a88dc`

```dockerfile
```

-	Layers:
	-	`sha256:e493611ff7253ce145b1921677f448eede735712b9d0e571bef7df813df03c09`  
		Last Modified: Thu, 03 Sep 2026 19:08:09 GMT  
		Size: 41.8 KB (41783 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-trixie` - linux; arm64 variant v8

```console
$ docker pull espocrm@sha256:6f14bf7a3c6b983e823b56fec99cf58d246aa162b04e33629c3e8f286dd3c5fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249328237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad71631c1112c65d0c7bae3335e7c6e32ed1a60dd63df233fb5fb48e56b040f4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:18:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:18:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:18:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:18:19 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:18:19 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:18:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:18:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:21:30 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:21:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:21:30 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:21:30 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:21:30 GMT
CMD ["php-fpm"]
# Thu, 03 Sep 2026 19:16:50 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:16:50 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:16:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:18:07 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:18:07 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:18:07 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:18:07 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:18:07 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:18:15 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:18:15 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:18:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:18:15 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:872d895d3f6bced9b4cd053b519c60409d1fac964ff0ea4b9f7d7e18780fe479`  
		Last Modified: Thu, 27 Aug 2026 20:21:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db25094401122602c68b38bf36c55492e0e3918a9c5764897a19e12a54bb1561`  
		Last Modified: Thu, 27 Aug 2026 20:21:54 GMT  
		Size: 113.5 MB (113502274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18498fbd47dff3dc1638cc8751ca5e2cd2f7773cb969fa95e949c466ea27fd0d`  
		Last Modified: Thu, 27 Aug 2026 20:21:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0192c6dc3b006814d6a047723114cd5351a9938cd9b3745f7f76f046b9a78db9`  
		Last Modified: Thu, 27 Aug 2026 20:21:51 GMT  
		Size: 13.9 MB (13906675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eecfe4edc860003c5715de4fb8d3d460ea1527e02d428349840e80d358264211`  
		Last Modified: Thu, 27 Aug 2026 20:21:51 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d70c80146075b368c9792ac9db87784194a0de8e8e0ce066ec4757df9022486`  
		Last Modified: Thu, 27 Aug 2026 20:21:52 GMT  
		Size: 13.5 MB (13479031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36363b339b195b9946ff34e5b082184eed0aee1fd2bc32b28e2869c20b75d144`  
		Last Modified: Thu, 27 Aug 2026 20:21:52 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42be6aa7a8ffb34075ab0f703d1c453fbe75bf29d9d9a3fae76804b0d38dfb5`  
		Last Modified: Thu, 27 Aug 2026 20:21:53 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba62b891d4d5f729de802d86fa2fa2f4fe308b8963cbeae890a459d0506656e`  
		Last Modified: Thu, 27 Aug 2026 20:21:53 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40be9449ab21c6cdee3836239d9f28e615a2e42bedc4813129152c82764ad989`  
		Last Modified: Thu, 27 Aug 2026 20:21:54 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c12ded1e02e1cdcf82db6aaed47038933d0794d2ccd33e9ef2b69782b7e0cb2`  
		Last Modified: Thu, 03 Sep 2026 19:18:26 GMT  
		Size: 261.0 KB (261030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7897b894b1e763b8fcc2e631a6cb4315f5521a1faef9c610611ca6473360f9f5`  
		Last Modified: Thu, 03 Sep 2026 19:18:26 GMT  
		Size: 4.0 MB (4034111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1190eef1f4c35c5fbd736cae0fd3c3b5a68a2f0cc65cb58371e0ea989ee3a0`  
		Last Modified: Thu, 03 Sep 2026 19:18:26 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:652da4eb6763fc30027b601a248b7ecfec2581a096e40c0ce489d512e9075c68`  
		Last Modified: Thu, 03 Sep 2026 19:18:28 GMT  
		Size: 74.0 MB (73968519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ef85c7f1d798561cc7af7a218df328861a3e545bfeb8bed5471c2b78d722e6f`  
		Last Modified: Thu, 03 Sep 2026 19:18:27 GMT  
		Size: 3.4 KB (3400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:6b20ebd83256f792ec0fb1ff7dd4bc427a662abbbd398e20e6ed1084b99fae99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.8 KB (41837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:538767ea1bec2217b5f10d9227d4d40097360947be2209beb29c66c04562cdca`

```dockerfile
```

-	Layers:
	-	`sha256:805469bec47a38dffa543cc5fc894e0a74405c356dcfb97f7ab1923155a66855`  
		Last Modified: Thu, 03 Sep 2026 19:18:25 GMT  
		Size: 41.8 KB (41837 bytes)  
		MIME: application/vnd.in-toto+json

### `espocrm:fpm-trixie` - linux; 386

```console
$ docker pull espocrm@sha256:1a31ba2e8450d134cf7f6757cede5e9b3b3344d48e40ec6fccf142d7cedf2715
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.8 MB (256808362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b201bd11bb61c59d1bce29d389d70113471edc3e14dbdb0126a3c6bdd3086394`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Thu, 27 Aug 2026 20:23:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 27 Aug 2026 20:23:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 27 Aug 2026 20:23:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 27 Aug 2026 20:23:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:23:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:23:41 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:23:41 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:23:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 27 Aug 2026 20:23:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:27:08 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:27:08 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:27:08 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:27:08 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:27:08 GMT
CMD ["php-fpm"]
# Thu, 03 Sep 2026 19:07:27 GMT
LABEL org.opencontainers.image.source=https://github.com/espocrm/espocrm
# Thu, 03 Sep 2026 19:07:27 GMT
LABEL org.opencontainers.image.description=EspoCRM is a free and open-source CRM platform.
# Thu, 03 Sep 2026 19:07:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends         unzip         libldap-common 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:08:33 GMT
RUN set -eux;         aptMarkList="$(apt-mark showmanual)";         apt-get update;     apt-get install -y --no-install-recommends         libpq-dev         libpng-dev         libjpeg-dev         libwebp-dev         libfreetype6-dev         libzip-dev         libxml2-dev         libldap2-dev         libzmq5-dev         zlib1g-dev     ;             cd /usr;         curl -fSL https://github.com/zeromq/php-zmq/archive/616b6c64ffd3866ed038615494306dd464ab53fc.tar.gz -o php-zmq.tar.gz;         tar -zxf php-zmq.tar.gz;         cd php-zmq*;         phpize && ./configure;         make;         make install;         cd .. && rm -rf php-zmq*;         pecl install         ev         redis     ;         docker-php-ext-configure ldap         --with-libdir="lib/$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"     ;     docker-php-ext-configure gd         --with-freetype         --with-jpeg=/usr         --with-webp     ;         docker-php-ext-install -j$(nproc)         gd         pdo_pgsql         pdo_mysql         zip         ldap         exif         pcntl         bcmath     ;     docker-php-ext-enable         zmq         ev         redis     ;         rm -r /tmp/pear;         apt-mark auto '.*' > /dev/null; 	apt-mark manual $aptMarkList; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 19:08:33 GMT
RUN {     echo 'expose_php = Off';     echo 'error_reporting = E_ALL & ~E_NOTICE & ~E_DEPRECATED';     echo 'display_errors = Off';     echo 'display_startup_errors = Off';     echo 'log_errors = On';     echo 'memory_limit=256M';     echo 'max_execution_time=180';     echo 'max_input_time=180';     echo 'post_max_size=50M';     echo 'upload_max_filesize=50M';     echo 'date.timezone=UTC'; } > ${PHP_INI_DIR}/conf.d/espocrm.ini # buildkit
# Thu, 03 Sep 2026 19:08:33 GMT
ENV ESPOCRM_VERSION=10.0.7
# Thu, 03 Sep 2026 19:08:33 GMT
ENV ESPOCRM_SHA256=8414b10f64861f881056c27083192c1c0ce2329af74734332394b27a4618fb4f
# Thu, 03 Sep 2026 19:08:33 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 19:08:41 GMT
RUN set -eux;     curl -fSL "https://www.espocrm.com/downloads/EspoCRM-10.0.7.zip" -o EspoCRM.zip;     echo "${ESPOCRM_SHA256} *EspoCRM.zip" | sha256sum -c -;     unzip -q EspoCRM.zip -d /usr/src;     cp -a "/usr/src/EspoCRM-${ESPOCRM_VERSION}/." /var/www/html/;     rm -rf /usr/src/EspoCRM*;     mkdir -p /usr/src/espocrm;     cp -a ./client/ /usr/src/espocrm/;     cp -a ./public/ /usr/src/espocrm/;     rm -rf ./install;     find . -type d -exec chmod 755 {} +;     find . -type f -exec chmod 644 {} +;     chown -R root:root . /usr/src/espocrm;     chown -R www-data:www-data ./data ./custom ./client/custom;     chmod +x ./bin/command # buildkit
# Thu, 03 Sep 2026 19:08:41 GMT
COPY ./docker-*.sh ./entrypoint-utils.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 19:08:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 19:08:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9583c428f0ce675275744f3998a065a1e9e52013375d221a33a5bcf278fef2`  
		Last Modified: Thu, 27 Aug 2026 20:27:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d08f4bd0707bf0ef1bfdf298827e1ddeb1c00471884c6202959120b09127396`  
		Last Modified: Thu, 27 Aug 2026 20:27:34 GMT  
		Size: 119.0 MB (119043743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eda803618e8417da802e8e47cbe6160aa1879716a763109fdf60375909d1ea`  
		Last Modified: Thu, 27 Aug 2026 20:27:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66be3b67ace4a3b86393f5a5ea7fca544dd895b4c2444dd2cfb1277811b5fbea`  
		Last Modified: Thu, 27 Aug 2026 20:27:31 GMT  
		Size: 13.9 MB (13906149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87975a1b6452828e997c26b3da44f63c1c5bcc0dc30512cb95f2f309e1e6bec`  
		Last Modified: Thu, 27 Aug 2026 20:27:31 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98fa941f783ea142d72b52861ed0b979e7ccdfac78861cd6d92c2c3389234c22`  
		Last Modified: Thu, 27 Aug 2026 20:27:32 GMT  
		Size: 14.1 MB (14122424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ea6a88f6c3d6b06639ab8238f82654aafc68efd46ddeed1a36245d4796e09f`  
		Last Modified: Thu, 27 Aug 2026 20:27:33 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd9e22a5123dea8c7ba944c9c6114d002bd96231961c732fd047338403f722f`  
		Last Modified: Thu, 27 Aug 2026 20:27:33 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc61e02a4274305c902565c17e96cedbc4be90a0f36c8e80bc78aa271eb902c`  
		Last Modified: Thu, 27 Aug 2026 20:27:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ccda3b6e2ba1dde557c929604ec943a364bd650dc174d170fd5ea45e0be4fe`  
		Last Modified: Thu, 27 Aug 2026 20:27:34 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a491e2c2ed48747a70fae1906634025b076bbcc6d9a2aefd9dde88982e9a4ca8`  
		Last Modified: Thu, 03 Sep 2026 19:08:50 GMT  
		Size: 268.7 KB (268726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0f57d3a3c626a8e4bde912f7372caaa404019e98fc0518f6ba6b4f3827029fc`  
		Last Modified: Thu, 03 Sep 2026 19:08:51 GMT  
		Size: 4.2 MB (4178391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419c16a181fcb5c52877430074284912713eac0d4fed841a4339e941322867af`  
		Last Modified: Thu, 03 Sep 2026 19:08:50 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0999fdc269af00a6a1c90117eba5f5ce25a867f0da8c9170d4715b24cb940e2d`  
		Last Modified: Thu, 03 Sep 2026 19:08:52 GMT  
		Size: 74.0 MB (73968518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bec3dfbe037e4edf86a8b3b40fdcfa33e141aff50b75ebe01caa31cdd2ad2b`  
		Last Modified: Thu, 03 Sep 2026 19:08:51 GMT  
		Size: 3.4 KB (3398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `espocrm:fpm-trixie` - unknown; unknown

```console
$ docker pull espocrm@sha256:c1d624d317781199aa4593ffbde718e2011642854371628a726a0f9dfd6f9bd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 KB (41582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68973c9f5f95a3cb6480b975e6198b6c3f8ed07ca044b1ca09792b812c419f73`

```dockerfile
```

-	Layers:
	-	`sha256:844ac2c1547e9f5755f700b6279fdb9d1de3f1274ba4e1936b87240892cfbb46`  
		Last Modified: Thu, 03 Sep 2026 19:08:50 GMT  
		Size: 41.6 KB (41582 bytes)  
		MIME: application/vnd.in-toto+json
