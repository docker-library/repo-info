## `matomo:fpm`

```console
$ docker pull matomo@sha256:6805b341cc05f06ea679158ba6bb745d0e27f206e928703ef33a0c169d554f96
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

### `matomo:fpm` - linux; amd64

```console
$ docker pull matomo@sha256:6e0acafcfc9b5abcb05592a623712d5ede073bc32ada78eb3c62b126275c055c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199179227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2809a67875494308f9891742e3bb7675fba95a3e15491796839b08e67d04f07`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:37:11 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:37:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:37:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:37:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:37:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:37:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:37:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:37:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:37:28 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:37:28 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:37:28 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:37:28 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:37:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:37:36 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:40:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:40:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:40:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:40:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:40:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:40:15 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:40:15 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:40:15 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:40:15 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:40:15 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:25:21 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 02 Jul 2026 21:25:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:25:21 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:25:21 GMT
ENV MATOMO_VERSION=5.11.2
# Thu, 02 Jul 2026 21:25:30 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:25:30 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 02 Jul 2026 21:25:30 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:25:30 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:25:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:25:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9def46a34bb2b93f461b6a73f3ee60556fd03630bc1ca1d02befd3587e4677`  
		Last Modified: Thu, 02 Jul 2026 20:40:36 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69eb640036e47a770c0eba835f6a25db60afd4c5c72ee4291ef7dd37888f9fe6`  
		Last Modified: Thu, 02 Jul 2026 20:40:40 GMT  
		Size: 117.8 MB (117839814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:352655ce85b03efd5ff9696d97ec22490c1e29b5a5766272798dfe7f6d5925a1`  
		Last Modified: Thu, 02 Jul 2026 20:40:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c97d55cd0303232bf22dff422514327b98e0ab29c1c23bc56a17035bd4f43a`  
		Last Modified: Thu, 02 Jul 2026 20:40:37 GMT  
		Size: 13.9 MB (13888182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:065c2c5f4518bcf53bc64e0183d5d9329a63d91c324be781ef23900be863a467`  
		Last Modified: Thu, 02 Jul 2026 20:40:38 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81fc92121f3159c86f43b19ad711f87334278067db779549cb502c1a96b5a628`  
		Last Modified: Thu, 02 Jul 2026 20:40:39 GMT  
		Size: 13.8 MB (13810130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a458bbc4159884d7828704c8cef3e88b175d172bc401d48c0055d43a10f25a9`  
		Last Modified: Thu, 02 Jul 2026 20:40:39 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be367fb9b441f873441ce56665da81b9a50b7e98f5e72b7de8eb367cd9af9efe`  
		Last Modified: Thu, 02 Jul 2026 20:40:39 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e46cfafbe3f4df9213582201b22adffbe5e05841cc94fa3fd102ff28104d0028`  
		Last Modified: Thu, 02 Jul 2026 20:40:40 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc545b122b6dad27093e04344c798a89077ca95f57efdbca1459242ea5ed656`  
		Last Modified: Thu, 02 Jul 2026 20:40:40 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f80dad1801195c1b782178332a8ac6cebec7260fe0b58e01abfa8491e0535176`  
		Last Modified: Thu, 02 Jul 2026 21:25:38 GMT  
		Size: 2.7 MB (2696050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f866e71e564f9738ec5143ef42e88431fa12fc1c988a8928bda9868f8ba9beb`  
		Last Modified: Thu, 02 Jul 2026 21:25:37 GMT  
		Size: 326.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500e14b18ff7a7c0b0e2184d7e3f6d6067995fdb839a890267fe03da95a2003e`  
		Last Modified: Thu, 02 Jul 2026 21:25:38 GMT  
		Size: 21.1 MB (21144952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f12b296c87e07710849ea92569e99c58567dc0d5c3bf7ce8aad8c0fd72f797`  
		Last Modified: Thu, 02 Jul 2026 21:25:38 GMT  
		Size: 341.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ed9cf6013eb7bf5f3ed427816b3ee867391b97b764c52cae035ad3c83f07b2`  
		Last Modified: Thu, 02 Jul 2026 21:25:39 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:fpm` - unknown; unknown

```console
$ docker pull matomo@sha256:4c90df40d4ee5ba9fe9705f65f5c663f42a4c5562758c4c5e8367207870b8f16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 KB (33253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb90e3b0babae74becb2e4fba8baf46e21af87acfd1d2f3c50cdaca6574e38b2`

```dockerfile
```

-	Layers:
	-	`sha256:e1dc16061b32846c900961488a0b2f4599f1d460199aeb33007aa277bac299e3`  
		Last Modified: Thu, 02 Jul 2026 21:25:37 GMT  
		Size: 33.3 KB (33253 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:fpm` - linux; arm variant v5

```console
$ docker pull matomo@sha256:1b807bb46928783c0542ec101291c15b56bfa694d2f39e10a68998122e183c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172732528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b34f8949e5e4c349f8c7e736b5a1a454a37fa2732dcaa0f3515283c0cf9180be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:40:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:40:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:40:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:40:58 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:40:58 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:40:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:40:58 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:47:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:47:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:50:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:50:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:50:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:50:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:50:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:50:57 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:50:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:50:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:50:57 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:50:57 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:35:45 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 02 Jul 2026 21:35:45 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:35:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:35:45 GMT
ENV MATOMO_VERSION=5.11.2
# Thu, 02 Jul 2026 21:36:01 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:36:01 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 02 Jul 2026 21:36:01 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:36:01 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:36:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:36:01 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:da43bc6a07a9cd7cc23faa538adc0797482747316b5a85b9f3f94ed17f6c1a2a`  
		Last Modified: Wed, 24 Jun 2026 00:28:12 GMT  
		Size: 28.0 MB (27959221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566f21da05582f2ead9836414c1ccd3c575f6034a31c7974e6242b73101d03cd`  
		Last Modified: Thu, 02 Jul 2026 20:44:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4458c1a70fa34fe68a861f0a7f815516952e560acce71b58d9ff5231fe600233`  
		Last Modified: Thu, 02 Jul 2026 20:44:28 GMT  
		Size: 94.9 MB (94887040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37971f6a4900cda31976a989fbaff77c8164057d0a38a2fb652b6b09f0aad706`  
		Last Modified: Thu, 02 Jul 2026 20:44:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c1ea9405878469c061b108d0335c7aa9af5ff1fe4b1c6e2646f8dad40eca6d`  
		Last Modified: Thu, 02 Jul 2026 20:51:08 GMT  
		Size: 13.9 MB (13885624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6797f4290d7d683de7353e9fa96461a4d857957411dc3b21b58f783f18df8a31`  
		Last Modified: Thu, 02 Jul 2026 20:51:07 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061b2a84a9bd19d034c73ebd86b266bd261c803163fdad12c35339f102898730`  
		Last Modified: Thu, 02 Jul 2026 20:51:08 GMT  
		Size: 12.3 MB (12323413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4c81016c2ed52df5f3552298f4e9b5319c028a17bda294c4530aa318e0e373f`  
		Last Modified: Thu, 02 Jul 2026 20:51:07 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24b61eeb91ed388e5fa177e7dabc6d353388a8562a8d16012afa7e4f2c1b3ed9`  
		Last Modified: Thu, 02 Jul 2026 20:51:08 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68e8bbb251f281e487e867cdbc0be3bdaa27b28c69746ceb49751ceed3541fa`  
		Last Modified: Thu, 02 Jul 2026 20:51:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f5f5a02ed4ddbfa5c42c0652838b468b09b91d00db90a798e7074464695118`  
		Last Modified: Thu, 02 Jul 2026 20:51:09 GMT  
		Size: 9.3 KB (9270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31515c3f2f48dd1d2f0f65afdbfe871f7e0df5809a4287259ce0ec59c640ed06`  
		Last Modified: Thu, 02 Jul 2026 21:36:08 GMT  
		Size: 2.5 MB (2519696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e248127033836fae2480b6a8fa672dedff1d9cd88520ec8397ce74f394f299`  
		Last Modified: Thu, 02 Jul 2026 21:36:08 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:553df6758a0ad4d543ef98a8757496573a34adae2b7939fe53fd45f6e4e010dd`  
		Last Modified: Thu, 02 Jul 2026 21:36:08 GMT  
		Size: 21.1 MB (21142838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:585b6c33d524dde25414b1586295346a21e09b7a90b0d11374f8ef20366db91b`  
		Last Modified: Thu, 02 Jul 2026 21:36:08 GMT  
		Size: 343.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd53b4796ffaea0ac4b43a84d1c23809d5ac97d077cd4877c3ac252514bdbbc`  
		Last Modified: Thu, 02 Jul 2026 21:36:09 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:fpm` - unknown; unknown

```console
$ docker pull matomo@sha256:cc9e6c5ff91842b27d266a6cac48a766993cdda7fccf52aa62f2f0f3d6c034ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 KB (33353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c299140d244aca6952a163442c97cc8c3561370fb373cfcdd90adb00ad585ce`

```dockerfile
```

-	Layers:
	-	`sha256:919ae772df1f48f551d73a99d74dc1517d1525104ea6a209ed3740ed66b93fde`  
		Last Modified: Thu, 02 Jul 2026 21:36:07 GMT  
		Size: 33.4 KB (33353 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:fpm` - linux; arm variant v7

```console
$ docker pull matomo@sha256:3a9b250c5b6e37203ae206225a9cdb80709360b7f0bf87b78f5144f4fd821e6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.6 MB (161569395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e722a7b6ce84da222acf996d39ff5bb7b6d2773945e46dbe32255f16655f3538`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:44:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:44:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:44:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:44:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:44:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:44:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:44:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:44:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:44:33 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:44:33 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:44:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:44:33 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:44:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:44:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:47:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:47:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:47:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:47:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:47:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:47:27 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:47:27 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:47:27 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:47:27 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:47:27 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:49:32 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 02 Jul 2026 21:49:32 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:49:32 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:49:32 GMT
ENV MATOMO_VERSION=5.11.2
# Thu, 02 Jul 2026 21:49:45 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:49:45 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 02 Jul 2026 21:49:45 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:49:45 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:49:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:49:45 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:81c84b0273952340067af970e1fe77a42ea83b4ed1a53319e258d5f1077848f0`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 26.2 MB (26211051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02f7263ad4929824136c8d24516aa5f5b46f571adb5f171f88d6f3e7e62bfb14`  
		Last Modified: Thu, 02 Jul 2026 20:47:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a079c63df3a7e45d1f1c017b86674ff554c4030ac8b9f067afc89000f14f85e`  
		Last Modified: Thu, 02 Jul 2026 20:47:46 GMT  
		Size: 86.3 MB (86255857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53baa2044e251b2727ddd566b3a85b00ef763a4f7e1e17d73fec3bb7b05ee2a1`  
		Last Modified: Thu, 02 Jul 2026 20:47:44 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef16ae40b6efbd91fbeaadf76fd8736b05f03347b20c896a181a88f9b5cc2dc`  
		Last Modified: Thu, 02 Jul 2026 20:47:45 GMT  
		Size: 13.9 MB (13885580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f888c9181d0a89278f06ae8cacfa6ca101d26f4cde9c78fb2acfe6d023905c48`  
		Last Modified: Thu, 02 Jul 2026 20:47:45 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81bf4780ac84d10c266d37db415dadb9ddc74af09bffe11ef5e02268ca529ac8`  
		Last Modified: Thu, 02 Jul 2026 20:47:46 GMT  
		Size: 11.7 MB (11657925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab538a683a341114aac2baf8729b3cb9864dea74c1ba00077f25b481281ab11`  
		Last Modified: Thu, 02 Jul 2026 20:47:46 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc15d6cf1c3b6bee3924f0c8c45e1484d006555d2e7f89884268d105ff55221`  
		Last Modified: Thu, 02 Jul 2026 20:47:46 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e77ec1a97280bb9b5fb3d8c842770ffdc5842ef8a2ee4c309bed5a25cbe627`  
		Last Modified: Thu, 02 Jul 2026 20:47:47 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5720101814e1ddb4900128b356ef99f4dd9576bbcce246091d7a1ced4c2b55f8`  
		Last Modified: Thu, 02 Jul 2026 20:47:47 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d036d750c053d9ecc45e40250666cfab2ace569955e5d6174cc3ac6a88510bb`  
		Last Modified: Thu, 02 Jul 2026 21:49:52 GMT  
		Size: 2.4 MB (2401465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b34add468a5fe21d6f7af10d53c55ec3de5fac2219a8929b839546c1e54ffb`  
		Last Modified: Thu, 02 Jul 2026 21:49:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d093e6063f88ee9d3bbc9fca3437316180ece5c45361ab2116e9c4da28e7b819`  
		Last Modified: Thu, 02 Jul 2026 21:49:53 GMT  
		Size: 21.1 MB (21142839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eb2d9e35d521bb6cdd9f232ef7b2570e27147f4ffae966a368d45d04597f4ac`  
		Last Modified: Thu, 02 Jul 2026 21:49:52 GMT  
		Size: 342.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12e6bc36094c392907dc533fa30ab3b9529687aa3ae8879abbeff7a73707ed4a`  
		Last Modified: Thu, 02 Jul 2026 21:49:53 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:fpm` - unknown; unknown

```console
$ docker pull matomo@sha256:8f2dfb6b612fac6d21c2524d8d390180b5b724238411171b059c68be52206523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 KB (33352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77dc1e615b80f4eaecae741d1b71293e7bd741ab1b025ec79336b7b15cd441a6`

```dockerfile
```

-	Layers:
	-	`sha256:5099befa72a55cba99451cc5e24417816582338cd39c2a8a3a9c091dad1e0dbf`  
		Last Modified: Thu, 02 Jul 2026 21:49:52 GMT  
		Size: 33.4 KB (33352 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:fpm` - linux; arm64 variant v8

```console
$ docker pull matomo@sha256:dab8a37b19bab1f4d3b377cdd2cf3af0b8d104d50e9feaa9485773ba3adf5ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191518353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8acb73f98ea642b4589eca8c183f34ceacf28fd86394b0c4321bde9f3df7079e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:37:34 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:37:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:37:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:37:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:37:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:37:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:37:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:37:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:37:50 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:37:50 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:37:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:37:50 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:37:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:37:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:40:58 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:40:58 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:40:58 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:40:58 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:40:58 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:30:42 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 02 Jul 2026 21:30:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:30:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:30:42 GMT
ENV MATOMO_VERSION=5.11.2
# Thu, 02 Jul 2026 21:30:54 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:30:54 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 02 Jul 2026 21:30:54 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:30:54 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:30:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:30:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0742503b3d81ad6fdcfe9fc4c37b5c1be2f54fba717775c197cd055511acab01`  
		Last Modified: Thu, 02 Jul 2026 20:41:18 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c16311c23d5b41fe50aeb2c0a55a822259e4fcea72cff869040d154ac1e9be4`  
		Last Modified: Thu, 02 Jul 2026 20:41:21 GMT  
		Size: 110.2 MB (110169831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3126f48022fad477d4ec34970b8fcd55c82229d6b8b0de68cc3508c46dfc702`  
		Last Modified: Thu, 02 Jul 2026 20:40:41 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87cabdc264a2c92102adb7cd3b229e8dd40cc21a3a596e14ddbe29818a11f804`  
		Last Modified: Thu, 02 Jul 2026 20:41:19 GMT  
		Size: 13.9 MB (13887701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97eb2139b3678a07f2b1546fa3c6e5cd9b0537883d0b8af8ad368c79c60c31e7`  
		Last Modified: Thu, 02 Jul 2026 20:41:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e22c3a28d19bc4a2576a7e0b97a585451a85edc4173ad17ce0feeabb05f617`  
		Last Modified: Thu, 02 Jul 2026 20:41:20 GMT  
		Size: 13.5 MB (13476236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfaedd1c81721880208d94fa4c1fe3595d206636db7f596aa6fc68baa001e5d9`  
		Last Modified: Thu, 02 Jul 2026 20:41:21 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa1213811a6d585eec9d0edfead9f4d1d4dbae38ae9a79eaafd5fb6720d2e14`  
		Last Modified: Thu, 02 Jul 2026 20:41:21 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da305e7a66b7e45b1f4bde1c02d550eec54adb5642c750d2373b1f90d23f165`  
		Last Modified: Thu, 02 Jul 2026 20:41:22 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7e8284aba32fe438bde0a2360a21ca43200f8c8d9288a7c7294b0ef0313660`  
		Last Modified: Thu, 02 Jul 2026 20:41:22 GMT  
		Size: 9.3 KB (9270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8d286cca564af6b69f207cbdaff0b26ce1bd9b7bc2bc5e0fea0d33afd68a36d`  
		Last Modified: Thu, 02 Jul 2026 21:31:01 GMT  
		Size: 2.7 MB (2676700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4e3de0bb0110975afbc0ab067bdf66763139e42437f1f5960a78ccb045ed39`  
		Last Modified: Thu, 02 Jul 2026 21:31:01 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a89afd37558e368693fff5140575a7d02a9523b6aafbdf0c8d309ce7c107c82`  
		Last Modified: Thu, 02 Jul 2026 21:31:02 GMT  
		Size: 21.1 MB (21144640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2b0c75b3b706b249819b34808fe3d899a2ebfa6ce933c058435dee55a5fcfc6`  
		Last Modified: Thu, 02 Jul 2026 21:31:01 GMT  
		Size: 344.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd11c9ee59681148d6f038f7cbedb210e2162cf2cf658613d388755608839bae`  
		Last Modified: Thu, 02 Jul 2026 21:31:02 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:fpm` - unknown; unknown

```console
$ docker pull matomo@sha256:02ba471dde18dce3832a95561a306b07e6d8681d30d85641b898fafb23675d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.4 KB (33387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd23c001baf17fab232c95ae34db45f296bff78b5cc7252bbc9bca05a5cf6b79`

```dockerfile
```

-	Layers:
	-	`sha256:ba3f6d6f73caa2a9687fc609655c324afd6b0f6e60c75616647b8d7b095942bf`  
		Last Modified: Thu, 02 Jul 2026 21:31:01 GMT  
		Size: 33.4 KB (33387 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:fpm` - linux; 386

```console
$ docker pull matomo@sha256:448d8b4e7eefb6724e0e9708a01cc7fa2801789fa2386cb516b45ff3d9ace0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199269953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baa752007af1b8c0601c7f4bd4e022b8df9d7451a6751f357b1022d90f7ce7b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:33:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:33:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:33:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:33:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:33:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:33:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:33:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:33:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:33:49 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:33:49 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:33:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:33:49 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:37:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:37:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:40:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:40:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:40:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:40:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:40:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:40:46 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:40:46 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:40:46 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:40:46 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:40:46 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:25:15 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 02 Jul 2026 21:25:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:25:15 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:25:15 GMT
ENV MATOMO_VERSION=5.11.2
# Thu, 02 Jul 2026 21:25:25 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 21:25:25 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 02 Jul 2026 21:25:25 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:25:25 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:25:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:25:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:984d3baa100eb8c4d7c83b7c23b4748e508aa6ed5903297f02be90a681f52d41`  
		Last Modified: Wed, 24 Jun 2026 00:28:38 GMT  
		Size: 31.3 MB (31301210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e602614b047bcfe6ae003a2dceea55358e3f677b99a7b5be8b9989ff798181c`  
		Last Modified: Thu, 02 Jul 2026 20:37:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f3e6c2a083941ecebfdde31516d8ede83becb4c338cc500c858d7e80f3f3de2`  
		Last Modified: Thu, 02 Jul 2026 20:37:12 GMT  
		Size: 116.1 MB (116142648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dafa2b01d741f78b21fed32eec2f12b8c734d57ac5e5c050cace9c869e2a75`  
		Last Modified: Thu, 02 Jul 2026 20:37:08 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c6d37d372d663d518f9b5f5ed7ffc470a80b424636749229cf1d31eff631f2`  
		Last Modified: Thu, 02 Jul 2026 20:40:57 GMT  
		Size: 13.9 MB (13887057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cb5d26048b8170dbb957c5a30a0318a0f8ad3b0596c139bc871863a9480645`  
		Last Modified: Thu, 02 Jul 2026 20:40:56 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a09c5a9499152b50eacd78c5bfece2e4293b36e0e40d200e2306ccf7c0bfff4`  
		Last Modified: Thu, 02 Jul 2026 20:40:57 GMT  
		Size: 14.1 MB (14106642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72f5ed2e2e1b7c00cffbced12437ad0d4583c15cb5d4e8e4df9684e8e9795c1`  
		Last Modified: Thu, 02 Jul 2026 20:40:56 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4187124663a24054fd4ab8e6afbd023fda1fc679c466842fbf321e806eb2e5a6`  
		Last Modified: Thu, 02 Jul 2026 20:40:57 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca74f23e987c81bd37530cfc3c29fffc48406f607901a56f803cd88cc852e35`  
		Last Modified: Thu, 02 Jul 2026 20:40:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af7731a29ec8ec77457a03d45fdc1812a28e283d1ce71edb60cc5ed94e472fcd`  
		Last Modified: Thu, 02 Jul 2026 20:40:58 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2179dab21fd87e4b174866263e882778ef1f9ae9e1e5f31ef7d36dd52fca7565`  
		Last Modified: Thu, 02 Jul 2026 21:25:33 GMT  
		Size: 2.7 MB (2673640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6cf942ae7eda022ea12a6869f4fb8076267d9f84860bd193c71e63b85aeae60`  
		Last Modified: Thu, 02 Jul 2026 21:25:32 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d00525cbe0065626cff547334a4afc5c95d0b1d0b923693a540de61cb67475`  
		Last Modified: Thu, 02 Jul 2026 21:25:33 GMT  
		Size: 21.1 MB (21144064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c9fe1e51dac6475d6510f666a5aeed136230ddb07256c3259cfd4158c0b014`  
		Last Modified: Thu, 02 Jul 2026 21:25:32 GMT  
		Size: 343.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7d961b1ab143a8975a4f321f30143fc43a8df4161bd92b58cee201e2148ccb`  
		Last Modified: Thu, 02 Jul 2026 21:25:33 GMT  
		Size: 823.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:fpm` - unknown; unknown

```console
$ docker pull matomo@sha256:304027fbd90f37550cbff4aa9dae132e0b4248ffdac650bd7f44967c508bfecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 KB (33217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ef4d0ea7fdf81c779ac91b6c411a032c285865283438dc983ac3478163646a5`

```dockerfile
```

-	Layers:
	-	`sha256:a244cd41ed887ca517b6a5250cc86fe3b8a6301486b8045999759d12e58977d6`  
		Last Modified: Thu, 02 Jul 2026 21:25:32 GMT  
		Size: 33.2 KB (33217 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:fpm` - linux; ppc64le

```console
$ docker pull matomo@sha256:05b4f679f164dbd99ccbb0f944d5703b491c1d9142a2d427d7cfc2698d848908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.5 MB (195546406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b40171420de0056c9384a5a942c74b3df2d9e2f963370f8f3bf2dce5aaab08`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:31:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:32:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:32:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:32:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:32:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:32:18 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:32:18 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 21:15:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 21:15:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:25:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:25:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:25:31 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:25:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:25:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:25:31 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:25:31 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 21:25:31 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 21:25:31 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 21:25:31 GMT
CMD ["php-fpm"]
# Fri, 03 Jul 2026 00:35:34 GMT
ENV PHP_MEMORY_LIMIT=256M
# Fri, 03 Jul 2026 00:35:34 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Fri, 03 Jul 2026 00:35:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 03 Jul 2026 00:35:34 GMT
ENV MATOMO_VERSION=5.11.2
# Fri, 03 Jul 2026 00:35:57 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Fri, 03 Jul 2026 00:35:58 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Fri, 03 Jul 2026 00:35:59 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Fri, 03 Jul 2026 00:35:59 GMT
VOLUME [/var/www/html]
# Fri, 03 Jul 2026 00:35:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 03 Jul 2026 00:35:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79146aaf75bacd4b3c55a752df5f8234d35627fbc30576e65b3be30bfbd2c6a9`  
		Last Modified: Thu, 02 Jul 2026 20:38:08 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acc11b28693a88f7c6f1444f2ab7e051094596d2477e79ff3ea4cf5b2725c24`  
		Last Modified: Thu, 02 Jul 2026 20:38:13 GMT  
		Size: 109.6 MB (109599046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bbb900db0dd376834f4e1a0e8cb61354c8940dee3423feeb618a379c7876fb`  
		Last Modified: Thu, 02 Jul 2026 20:38:08 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9895c23368ccab486cd9ccf47c3946cbfc28168fbbac548500fac97e40d9cdb`  
		Last Modified: Thu, 02 Jul 2026 21:20:52 GMT  
		Size: 13.9 MB (13896172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe3d847cf5f10475f98dc6408700e4ffbd90a797d029c7a3c37cb598591ffa1`  
		Last Modified: Thu, 02 Jul 2026 21:20:51 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cd2ca7338550e265fc9725b5c5cae9e790fcfa01733b32566c085cb86cddc0b`  
		Last Modified: Thu, 02 Jul 2026 21:25:53 GMT  
		Size: 14.3 MB (14349781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4075a4efa0b1288a4cd0905337e88fd866361e62edbc607fa08a45486b093a36`  
		Last Modified: Thu, 02 Jul 2026 21:25:52 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf3a8eb0b0b2e3ac9755f0be996b33af7cad76b1c73b69c0b94b3cd721caaef`  
		Last Modified: Thu, 02 Jul 2026 21:25:52 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0320645e7376ed50ac9890915229764a3a77cf80cfb1c2fc2719870de2254b2b`  
		Last Modified: Thu, 02 Jul 2026 21:25:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9c87098a3bcb4d254a7508fe489b8565ff7d9128134bff56b2360f23159b2e`  
		Last Modified: Thu, 02 Jul 2026 21:25:54 GMT  
		Size: 9.3 KB (9270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5523635f8a6eac215e7ad100a6b78174bc5f315940ddae6b56d75266b3958383`  
		Last Modified: Fri, 03 Jul 2026 00:36:12 GMT  
		Size: 2.9 MB (2935876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01516c52ae1c607901d7af65f7858cb6641faaac089b0e011d5480194032ff33`  
		Last Modified: Fri, 03 Jul 2026 00:36:11 GMT  
		Size: 330.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b7d3f0502420769c9db314e33f59f9d3ede862dec2d5f9eb875ecd19502b5bb`  
		Last Modified: Fri, 03 Jul 2026 00:36:12 GMT  
		Size: 21.1 MB (21144446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3630efc5c4297a5b0dc3d27344793f6c3baf893de90206c91f1e40caabb06a4a`  
		Last Modified: Fri, 03 Jul 2026 00:36:11 GMT  
		Size: 345.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1654e19956c1fd3cd976672fdb443d72fe101fd050358c44e7986f91c9281b`  
		Last Modified: Fri, 03 Jul 2026 00:36:13 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:fpm` - unknown; unknown

```console
$ docker pull matomo@sha256:87ea10f0d86a6355acde4cea4ee09325f91541b68f0f22b5933dd958375dc53a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 KB (33301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6672547f0c5bc0b9fe77d2e1bbd83fa34d008b8f32f8dac201618a90ff99d91f`

```dockerfile
```

-	Layers:
	-	`sha256:0783b4617cea44a7392e417006d02db0169fb1f7c50aa0569823837038d9341f`  
		Last Modified: Fri, 03 Jul 2026 00:36:11 GMT  
		Size: 33.3 KB (33301 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:fpm` - linux; riscv64

```console
$ docker pull matomo@sha256:32c87a99f1938d13f96de3644bf3d33af68f5eb9b7d4da08a2afa3f560225cef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.9 MB (225909274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9afa8b0307d50ae256c7210613214367a01f0bfd8c943c501a3eabaa2139970`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_VERSION=8.4.23
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 25 Jun 2026 03:12:45 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Fri, 03 Jul 2026 06:11:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 03 Jul 2026 06:11:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 09:04:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 03 Jul 2026 09:04:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 09:05:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 03 Jul 2026 09:05:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 03 Jul 2026 09:05:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Jul 2026 09:05:00 GMT
WORKDIR /var/www/html
# Fri, 03 Jul 2026 09:05:01 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 03 Jul 2026 09:05:01 GMT
STOPSIGNAL SIGQUIT
# Fri, 03 Jul 2026 09:05:01 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 03 Jul 2026 09:05:01 GMT
CMD ["php-fpm"]
# Sun, 05 Jul 2026 01:24:26 GMT
ENV PHP_MEMORY_LIMIT=256M
# Sun, 05 Jul 2026 01:24:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Sun, 05 Jul 2026 01:24:26 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Sun, 05 Jul 2026 01:24:26 GMT
ENV MATOMO_VERSION=5.11.2
# Sun, 05 Jul 2026 01:25:46 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Sun, 05 Jul 2026 01:25:47 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Sun, 05 Jul 2026 01:25:47 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sun, 05 Jul 2026 01:25:47 GMT
VOLUME [/var/www/html]
# Sun, 05 Jul 2026 01:25:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 05 Jul 2026 01:25:47 GMT
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
	-	`sha256:c40f39ccbb7ff82807a93fb1a4265361e8e71e3fe897616fda10c3ff2093521d`  
		Last Modified: Fri, 03 Jul 2026 07:09:35 GMT  
		Size: 13.9 MB (13902748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4284f6ce5d699d482196afe70e37f449a4a1983ecbf47d342d1dba4af6864726`  
		Last Modified: Fri, 03 Jul 2026 07:09:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9adfb0be4e223efa22179b4dbfd7854cff4cace4cb8a2d2df86651da01652d6`  
		Last Modified: Fri, 03 Jul 2026 09:07:59 GMT  
		Size: 13.4 MB (13387833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b789b2449ee18d0a93c4269a731f40a13e6a7966c6667963d38ed157ab9f4d`  
		Last Modified: Fri, 03 Jul 2026 09:07:57 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de511837ff18a4a8a1747d182d3b877a68beffb5db353bcd94b98218436c66b`  
		Last Modified: Fri, 03 Jul 2026 09:07:57 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffd719ee7beffb4247abbb5c2bbca5dd4b3e9cacc7527d4e8dadbe9ef23b360`  
		Last Modified: Fri, 03 Jul 2026 09:07:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf0022cd565d60a5b3363a56bdda0fb4e0aefed1bb8b9970e8082ad1c61c363`  
		Last Modified: Fri, 03 Jul 2026 09:07:58 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af80a8f53a1cbd162ec013ce09ab651372011af7efc503a2e47e4b31c73c2423`  
		Last Modified: Sun, 05 Jul 2026 01:27:05 GMT  
		Size: 2.6 MB (2591928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777909cdb10d2af17cada4c3c61346c358f901c832dbffee38e718d675bc9029`  
		Last Modified: Sun, 05 Jul 2026 01:27:05 GMT  
		Size: 328.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3197074ea39ee8e52e2a0391a5aa74dd18b1bafd8354cc535b892bd5c99a41f0`  
		Last Modified: Sun, 05 Jul 2026 01:27:08 GMT  
		Size: 21.1 MB (21144506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87656aca8ad8a5fd0e1a4eb407544186618efb8e5bcf4c57a7265bf8e36cdd07`  
		Last Modified: Sun, 05 Jul 2026 01:27:05 GMT  
		Size: 345.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49866fc1978d0e125f2e1fa570c839fe9d370a0f81b6e9485d6251aa6814922`  
		Last Modified: Sun, 05 Jul 2026 01:27:06 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:fpm` - unknown; unknown

```console
$ docker pull matomo@sha256:bd18ee0b88f2bee272d156b4fa3be850135a15e0492401c8ff822aa830c92837
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 KB (33301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ffb05ec9257324d636207ebdc1bc92e19ce6e4bf5a77daf2729345ba239a39`

```dockerfile
```

-	Layers:
	-	`sha256:ae9a8a3e76d1ba15b4192a9d9a6a71e65d242a3e14b389d8a5a033c36e173bf6`  
		Last Modified: Sun, 05 Jul 2026 01:27:04 GMT  
		Size: 33.3 KB (33301 bytes)  
		MIME: application/vnd.in-toto+json

### `matomo:fpm` - linux; s390x

```console
$ docker pull matomo@sha256:1bfa8c0fab2a8e53271781b3bf7d011fae84662b8831906df573a44c81646238
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.8 MB (173789214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e153b7fc14889fb5938a7d1855d580bb524154270c485a624ad7760736d864`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:31:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:31:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:31:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:31:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_VERSION=8.4.23
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Thu, 02 Jul 2026 20:31:39 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Thu, 02 Jul 2026 20:48:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 02 Jul 2026 20:48:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:57:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:57:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:57:38 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:57:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:57:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:57:39 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:57:39 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:57:39 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:57:39 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:57:39 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 22:02:58 GMT
ENV PHP_MEMORY_LIMIT=256M
# Thu, 02 Jul 2026 22:02:58 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libfreetype-dev 		libjpeg-dev 		libldap2-dev 		libpng-dev 		libzip-dev 		procps 	; 		debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg; 	docker-php-ext-configure ldap --with-libdir="lib/$debMultiarch"; 	docker-php-ext-install -j "$(nproc)" 		gd 		bcmath 		ldap 		mysqli 		pdo_mysql 		zip 	; 		pecl install APCu-5.1.28; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		redis 	; 	rm -r /tmp/pear; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 22:02:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 		echo 'opcache.fast_shutdown=1'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 22:02:58 GMT
ENV MATOMO_VERSION=5.11.2
# Thu, 02 Jul 2026 22:03:09 GMT
RUN set -ex; 	fetchDeps=" 		dirmngr 		gnupg 	"; 	apt-get update; 	apt-get install -y --no-install-recommends 		$fetchDeps 	; 		curl -fsSL -o matomo.tar.gz 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz"; 	curl -fsSL -o matomo.tar.gz.asc 		"https://builds.matomo.org/matomo-${MATOMO_VERSION}.tar.gz.asc"; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys F529A27008477483777FC23D63BB30D0E5D2C749; 	gpg --batch --verify matomo.tar.gz.asc matomo.tar.gz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" matomo.tar.gz.asc; 	tar -xzf matomo.tar.gz -C /usr/src/; 	rm matomo.tar.gz; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $fetchDeps; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 22:03:09 GMT
COPY php.ini /usr/local/etc/php/conf.d/php-matomo.ini # buildkit
# Thu, 02 Jul 2026 22:03:09 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 22:03:09 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 22:03:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 22:03:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0205f778ae6700e83b15e526f66e5a4a2d0424bf7a0e7f99367b8a5282cb43`  
		Last Modified: Thu, 02 Jul 2026 20:36:14 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fdd0634cd3633966a43724e70d92879567fa735ea80fdd86465abbdad4bbde`  
		Last Modified: Thu, 02 Jul 2026 20:36:16 GMT  
		Size: 92.6 MB (92572295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:476e04e78fadcda84f9017c2544db8b8ba5f83060a4273d0d9b3f88a4e8311f0`  
		Last Modified: Thu, 02 Jul 2026 20:36:14 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45c72bee65216d0d8cacd3c77bc36cabd7f0a873f8d490f09c2c58c3e8beb0e`  
		Last Modified: Thu, 02 Jul 2026 20:52:54 GMT  
		Size: 13.9 MB (13886434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e42268e7255a6f36941d9f55c7f8c6ac90065197fc5e78e01c972018bd35517`  
		Last Modified: Thu, 02 Jul 2026 20:52:54 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4295d18d7469f5a15b56657bfe9eadb03bc329acfb3aa225ffcea2bc2853f235`  
		Last Modified: Thu, 02 Jul 2026 20:57:57 GMT  
		Size: 13.6 MB (13604131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b297f58294d27db05f5e3927fa2980ddcac2974eeaa7db312b42ef8dfaa30181`  
		Last Modified: Thu, 02 Jul 2026 20:57:57 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20705ce2a7d7d9ac3315e6713fee9d27bec4152c81caf18d54726a7ec6514423`  
		Last Modified: Thu, 02 Jul 2026 20:57:57 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d62573cb5b3fad7a17635d18389700bebdb479fb8af6ce1e3d3db033b59b3ab`  
		Last Modified: Thu, 02 Jul 2026 20:57:57 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835477bc5c9709a21c21e80504dfd4967ce2f2d9786121715798f250dec37050`  
		Last Modified: Thu, 02 Jul 2026 20:57:58 GMT  
		Size: 9.3 KB (9270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1f6434d9e0ab2d146d7e6be7f15dfd6d169d96335d547dad4baadfd0d881a5`  
		Last Modified: Thu, 02 Jul 2026 22:03:20 GMT  
		Size: 2.7 MB (2716729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbcc61edda120fa85bf622353687a65178bd4183d8f0115200314b6f38f65964`  
		Last Modified: Thu, 02 Jul 2026 22:03:20 GMT  
		Size: 331.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c317fe7bfe8146897d12160c83771fe5447e891a1a81ef5147ca1a22801f5cf7`  
		Last Modified: Thu, 02 Jul 2026 22:03:20 GMT  
		Size: 21.1 MB (21143544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aca96400b4aeb0bc105df80e3e520b80349bc14c4f31ad638207cde80ccbead`  
		Last Modified: Thu, 02 Jul 2026 22:03:20 GMT  
		Size: 347.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f3f57698f4bac97673884423ddb8483412e37309426b3c0fcd78988779dbef`  
		Last Modified: Thu, 02 Jul 2026 22:03:21 GMT  
		Size: 824.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `matomo:fpm` - unknown; unknown

```console
$ docker pull matomo@sha256:80b3a5c3118aa942ce99dfa0377a05bd97ab71316dd019240d39087bf847ceb8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 KB (33247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c97392d0b75d99f9d645b01277926d1519ad5c83f5f81c04593a85ab9559773`

```dockerfile
```

-	Layers:
	-	`sha256:1e5be25fed243405cdcef8377e7175fe41163c7d486aba1e3a58b76edd87c29b`  
		Last Modified: Thu, 02 Jul 2026 22:03:20 GMT  
		Size: 33.2 KB (33247 bytes)  
		MIME: application/vnd.in-toto+json
