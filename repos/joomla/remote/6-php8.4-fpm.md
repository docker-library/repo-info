## `joomla:6-php8.4-fpm`

```console
$ docker pull joomla@sha256:16664a41d1f85cf096d543595bda9492c924d78ef8fbcdb763673430e3493821
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

### `joomla:6-php8.4-fpm` - linux; amd64

```console
$ docker pull joomla@sha256:37866ce3e163cfa2744a581fbf3e377b88a02b3eb1ca0795083271b1d5e4585b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258290679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40fec2a18bf38946862be4f80a62087a19e6ce6469180c182b1a2b3199aaa6df`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:31:32 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:31:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:31:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:31:47 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:31:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:31:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:31:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:31:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:31:47 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:31:47 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:31:47 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:31:47 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:31:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:31:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:34:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:34:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:34:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:34:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:34:10 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:34:10 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:34:10 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:34:10 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:34:10 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:05:15 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:05:15 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:05:15 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:05:15 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:05:15 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.28; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.1; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:05:16 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:05:16 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 15:05:16 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:05:16 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 15:05:22 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:05:22 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:05:22 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:05:22 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:05:22 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:05:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:05:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c57fe2ad6be579f03983c599d30b8eaa2ac3d0cf8aa9bf8fc61f2793a801ade1`  
		Last Modified: Thu, 19 Nov 2026 14:34:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c77d9b700aed7bc70826e1fc58ed6eeb924e8ea643fda09dbd7b0d80759779`  
		Last Modified: Thu, 19 Nov 2026 14:34:32 GMT  
		Size: 117.8 MB (117838027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c90e2dc0a178b1612be6b0831e5da97c3a90a9bb5f14d23489a96706dd9d8be`  
		Last Modified: Thu, 19 Nov 2026 14:34:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:239fff7888a396072adecfab5977881947cedd079ae72981f40a6ee48645f9fb`  
		Last Modified: Thu, 19 Nov 2026 14:34:30 GMT  
		Size: 14.1 MB (14059370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de71961f68ab149f6a3df36192f1c43d4ec17284825e753658f13d54e157a69`  
		Last Modified: Thu, 19 Nov 2026 14:34:30 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c27f92f492d06718d5fc40cd6c65f45f3d2af37599361b1f2a330c9d66dd6dc`  
		Last Modified: Thu, 19 Nov 2026 14:34:31 GMT  
		Size: 14.0 MB (13954597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fbb58aca7aba67fe4a5b9a09e83b497de63413f5231c0c9e433b4b1437a8601`  
		Last Modified: Thu, 19 Nov 2026 14:34:32 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:159e3d71ca57eee8b0faac056b2c232fb246c48a6f0ba3938969395b6f49a457`  
		Last Modified: Thu, 19 Nov 2026 14:34:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1904f0a20384b6dd06b2b888d3c824a35ada68cd7fa81c27bd896f24dd7d8fc8`  
		Last Modified: Thu, 19 Nov 2026 14:34:32 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74e7c4f590a06f4f383ce588a0f12061a774fde09938a0bb84011c41fb6647f`  
		Last Modified: Thu, 19 Nov 2026 14:34:33 GMT  
		Size: 9.3 KB (9272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8348aab60d19b296d7445f7c8edbbb6ddd1bf4cd20adf423b3bf8dd15d81bcaf`  
		Last Modified: Thu, 19 Nov 2026 15:05:33 GMT  
		Size: 54.0 MB (54001726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975144a2bdd0717623d73de077d55e79e3dda71d1c132f3b01bb52b3d3e2d622`  
		Last Modified: Thu, 19 Nov 2026 15:05:31 GMT  
		Size: 753.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f788e38ddc6595500ff49eef62cc3847a753070aa9debf3c98a6a10c75daabb`  
		Last Modified: Thu, 19 Nov 2026 15:05:32 GMT  
		Size: 28.6 MB (28560070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5ca54ea5233e2ebde515168d6174d6a53a363c5ab5144ea24d60c3759b644b`  
		Last Modified: Thu, 19 Nov 2026 15:05:31 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a09d6813c035d1901dc70f06e8199acfaeaad0c3d929facb672660b3965da7`  
		Last Modified: Thu, 19 Nov 2026 15:05:32 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.4-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:31cf05abd6305e43828f2eb750d0b0d2fcc0005fa47823f591ee9f4ec297f4a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 KB (47795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f415a204505da20e41855087a3ef3ad7b6fb5187688ad778c720d5b6b5ac28c2`

```dockerfile
```

-	Layers:
	-	`sha256:db10ec2c1b7c843579a51db488a493b4f59c40657781d722d97997e108311d72`  
		Last Modified: Thu, 19 Nov 2026 15:05:31 GMT  
		Size: 47.8 KB (47795 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.4-fpm` - linux; arm variant v5

```console
$ docker pull joomla@sha256:601b81dc2f19c7620cad23f5db891ed6fa116dd1504e10310e500cabb231142f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.5 MB (230478990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c7aa5bdb3214be171b7b0398ccb92cf3cbba173791b8363dbf4ae2cdeb72d8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:28:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:29:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:29:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:29:11 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:29:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:29:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:32:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:32:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:32:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:32:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:32:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:32:30 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:32:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:32:30 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:32:30 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:32:30 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:29:20 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:29:20 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:29:20 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:29:20 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:29:20 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.28; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.1; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:29:21 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:29:21 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 15:29:21 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:29:21 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 15:29:34 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:29:34 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:29:34 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:29:34 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:29:34 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:29:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:29:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bc935a495cdc6a25f72afeafe05d459f59f6d5347e7f3e39b7f2de588f2c06`  
		Last Modified: Thu, 19 Nov 2026 14:32:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653c0daa5ebc338241491b2fd92ec4b8bab61add77c32c282f313e71f4bba212`  
		Last Modified: Thu, 19 Nov 2026 14:32:53 GMT  
		Size: 94.9 MB (94884066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b2dc5445340d0d49466ba95869c117b16092dbbfd82bb93ae3318e6330de55`  
		Last Modified: Thu, 19 Nov 2026 14:32:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8dfa95c781366e5e1b5d98a261979917d0bdc36411515eb612bbd6c228a4c3c`  
		Last Modified: Thu, 19 Nov 2026 14:32:50 GMT  
		Size: 14.1 MB (14056495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e635565d516c384383421f4c9f73fe7479a2fd72cc5cb5644db72e4324afe86`  
		Last Modified: Thu, 19 Nov 2026 14:32:49 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fa24bf24ec4af9e836d6f5de0517c21c5d906a3695f693c27c04d9346e90a08`  
		Last Modified: Thu, 19 Nov 2026 14:32:51 GMT  
		Size: 12.5 MB (12459545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b547950cf49f015e0717737ef00659a2063e9bc0faab20b7bdc9c309fa50fe`  
		Last Modified: Thu, 19 Nov 2026 14:32:50 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70d3fabbe04a2c8c8f020b64e1c5cfd1a279a00fa409d2a40e2ec6e0c5ecfdec`  
		Last Modified: Thu, 19 Nov 2026 14:32:51 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94cd3d9af8733b87cd70747c4febdf87898c22843ffc86cc5569c4761311b6f4`  
		Last Modified: Thu, 19 Nov 2026 14:32:52 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fa4184b060548251f2cedeb712f3ce7bd0374b79036cbafad659178c617bb14`  
		Last Modified: Thu, 19 Nov 2026 14:32:52 GMT  
		Size: 9.3 KB (9270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed899558a5094f2bd4762b80a2f09843999ff9b4803aca57d8fcf68b71deac7`  
		Last Modified: Thu, 19 Nov 2026 15:29:45 GMT  
		Size: 52.5 MB (52473274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89aa7d57f1845bc0124f4b9c1ae0200175ed71ffd95f45d9f03db3e0d921fd90`  
		Last Modified: Thu, 19 Nov 2026 15:29:43 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d0aa17e69b8ade36030dbde9e642d681a4efda23b7790a7d0cbcf9d739e060e`  
		Last Modified: Thu, 19 Nov 2026 15:29:44 GMT  
		Size: 28.6 MB (28565238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981c36688bfa1527e9c7e0f5c12b642ca8cfbb19030454725df024dd4bc69500`  
		Last Modified: Thu, 19 Nov 2026 15:29:43 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e39b0e15f48bf009e9fe0fe0c1b080b4c7300baf334ba09aeeba7fe7813a3f6`  
		Last Modified: Thu, 19 Nov 2026 15:29:44 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.4-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:0bc644e1a6ab0322bb35a21eca05d9ceee7c68f43614c5c6a1234e480b5d29e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 KB (47894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93f5c19ebb8c9c039f7aa576cec7f88b4ee8ecb6bdd4d2c50b1bf41b0c0c9d23`

```dockerfile
```

-	Layers:
	-	`sha256:9cdde6cc07015111d3136992b352021e6143c4f289474aaf7383bba96fb245d1`  
		Last Modified: Thu, 19 Nov 2026 15:29:43 GMT  
		Size: 47.9 KB (47894 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.4-fpm` - linux; arm variant v7

```console
$ docker pull joomla@sha256:ad0b64589cd62b3c8a17281c21d60d9dc1c08a55fe7f4c29d852b595dfcab54d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.2 MB (217229448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c67035f7e890c9abe13cbdec81f4cdc6c11c5bcb2c4892607a04835c4eb50ee7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:36:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:36:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:36:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:36:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:36:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:36:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:36:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:36:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:36:20 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:36:20 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:36:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:36:20 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:36:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:36:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:39:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:11 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:39:11 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:39:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:39:11 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:39:11 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:39:11 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:39:11 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:39:11 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:10:09 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:10:09 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:10:09 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:10:09 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:10:09 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.28; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.1; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:10:10 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:10:10 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 15:10:10 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:10:10 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 15:10:20 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:10:20 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:10:20 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:10:20 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:10:20 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:10:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:10:20 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eadef0f4e6b910da9e48212073ecc909e667415119df8eaf31b810b57cdfb5`  
		Last Modified: Thu, 19 Nov 2026 14:39:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fbe7779b5681c9abdbfbd0d4acaebec466abbe83316d3d5d3526617a8230c6`  
		Last Modified: Thu, 19 Nov 2026 14:39:30 GMT  
		Size: 86.3 MB (86257199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae294e52c0a360eedd0dde90ba521850935cdbb74036b2e6d9c776570e5d6f36`  
		Last Modified: Thu, 19 Nov 2026 14:39:27 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d980fb0fabb691abf0f22dac8744606050c3fdef51593ff61ff3712af45afd32`  
		Last Modified: Thu, 19 Nov 2026 14:39:28 GMT  
		Size: 14.1 MB (14056725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f52cc5055bee39636de34a018152b9b463d93e90baf6778dad499ae5569f070`  
		Last Modified: Thu, 19 Nov 2026 14:39:29 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c719ca7409c94ebeed545e7777e31ef63713cc370cee093c6efec7351fb8b17`  
		Last Modified: Thu, 19 Nov 2026 14:39:29 GMT  
		Size: 11.8 MB (11765202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb9a67ea65ce6df03869ca500c2b5018c5ecb257a8f422cae5e54ab132ea459`  
		Last Modified: Thu, 19 Nov 2026 14:39:29 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199c17b846ba6e46d2be242765bad6b4c79563c8c7dce1608e98fe3f93d222b0`  
		Last Modified: Thu, 19 Nov 2026 14:39:30 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63bbbf7119f7f6b544c19e3c1065c6f1b34b42bc4d1ce97892293ccd1df153cb`  
		Last Modified: Thu, 19 Nov 2026 14:39:30 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3cef581d53fa9d4c2beeb35b3d8ad0ad69d9f948fecb1336b986a24d7a8d153`  
		Last Modified: Thu, 19 Nov 2026 14:39:31 GMT  
		Size: 9.3 KB (9273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e74fda58e0fc701caa186ab49deec4ac94497ba65bff5647166f1a8d524c8f0`  
		Last Modified: Thu, 19 Nov 2026 15:10:30 GMT  
		Size: 50.3 MB (50299346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243417ec8be031fced511ef2fd8a19e8d8179b0177777ebbe8e6cd1277731e5b`  
		Last Modified: Thu, 19 Nov 2026 15:10:29 GMT  
		Size: 754.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42955efdb31a6ba8eede1282e8f9d960792b2787ad5e2775e7632617c73d364e`  
		Last Modified: Thu, 19 Nov 2026 15:10:30 GMT  
		Size: 28.6 MB (28557289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c5ef799bdcfde386587a1d81252edd38c39062a135419ad2a5e3c7ba02e6286`  
		Last Modified: Thu, 19 Nov 2026 15:10:29 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062da26adad9e331accc2a153a58b36862ccbdd934656079aa3003ed5f36b2e6`  
		Last Modified: Thu, 19 Nov 2026 15:10:30 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.4-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:3e3259d0fec8d2e743065b5c1c89c1e2363fba528a6ed670f963916c0ace1bf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 KB (47894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0be3e08a4da1e4c0ca10593e96e1dd903d96595a0e021c61b47b2231cbeedd`

```dockerfile
```

-	Layers:
	-	`sha256:9ef70ddba8c805518c7fa7e04fd4e075cde629ed7a2108b3bb99800f6f2f24f0`  
		Last Modified: Thu, 19 Nov 2026 15:10:29 GMT  
		Size: 47.9 KB (47894 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.4-fpm` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:5e4f1ca12ad1c5de57922670ae345aa4f840dbefc23ff4f66a6ab0f6c688029b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.4 MB (249402508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4273729564fc2304dec81b3384d88858f1786e7816eb5b15352ba9a46ee9647`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:28:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:28:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:28:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:28:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:28:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:28:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:28:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:28:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:28:21 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:28:21 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:28:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:28:21 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:32:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:32:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:35:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:35:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:35:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:35:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:35:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:35:22 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:35:22 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:35:22 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:35:22 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:35:22 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:04:30 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:04:30 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:04:30 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:04:30 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:04:30 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.28; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.1; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:04:31 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:04:31 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 15:04:31 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:04:31 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 15:04:38 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:04:38 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:04:38 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:04:38 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:04:38 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:04:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:04:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d93faf3276d5bc258c823e1ad37ada52615364e9224f9449b0095dc1e359afc`  
		Last Modified: Thu, 19 Nov 2026 14:32:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6055b68bb9727dd7af15e922b2f1f945b2c9a9e736691b46032198f93ce9b439`  
		Last Modified: Thu, 19 Nov 2026 14:32:06 GMT  
		Size: 110.2 MB (110178735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a590563f231df19a6dfef39bae7ff0d679880cf3e9fec34258d09fa6b0192b9a`  
		Last Modified: Thu, 19 Nov 2026 14:31:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8254f9aaf1b678233d005b89e0a9e6a92721123d2d66bb670a6c97db6dbc48`  
		Last Modified: Thu, 19 Nov 2026 14:35:33 GMT  
		Size: 14.1 MB (14067381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e099b324f899fb9183f8d95bf7641d9e40f6603962749e02d2a12c210418b44`  
		Last Modified: Thu, 19 Nov 2026 14:35:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:727fe280eb94f38d7fa0482f3cb5ba5336eae31277076d5f782c16b2b03b81a3`  
		Last Modified: Thu, 19 Nov 2026 14:35:33 GMT  
		Size: 13.6 MB (13614023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ac11c443cba3bde1a6fc79878c1eebd9262c6572b1d258932dc940a6481dd3`  
		Last Modified: Thu, 19 Nov 2026 14:35:32 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:113272fb8450919265dc864d6e4f012086f9c0dd1f131422336128d3cf58f816`  
		Last Modified: Thu, 19 Nov 2026 14:35:34 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f11542a7a623c25ec7790c2a443803151cb4c1446092b5517778541f41dcf0f`  
		Last Modified: Thu, 19 Nov 2026 14:35:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e71308733681661e4f76ee1d55784ee544511c7e0aabc774dfe1cf474d5bf94`  
		Last Modified: Thu, 19 Nov 2026 14:35:35 GMT  
		Size: 9.3 KB (9271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef6babb78ffb1bf9d6a11ed6441ccca5e649229fceb9a249d497174e69ddd84`  
		Last Modified: Thu, 19 Nov 2026 15:04:49 GMT  
		Size: 52.7 MB (52748064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e76abce274963424113b9d16cf4ac5ae0dde36e700c594e59d16547fe0d5373`  
		Last Modified: Thu, 19 Nov 2026 15:04:47 GMT  
		Size: 752.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8894f739bcb5921f6a9850eb4f884ad85c08cde612819ebb698945a96138f9`  
		Last Modified: Thu, 19 Nov 2026 15:04:49 GMT  
		Size: 28.6 MB (28559500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af108bcea3ac0cb72f18fca8ef0c45b2beadf7ae834fafbada48b84fe091771`  
		Last Modified: Thu, 19 Nov 2026 15:04:47 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c4ae6993d95b21bc89b96be2f098d5066fa88870373fb3d78b21f2bef8154fa`  
		Last Modified: Thu, 19 Nov 2026 15:04:49 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.4-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:2d3ca2e78f8afd902586ab16adc98e2d7195f5cf461168715539c1ce40378da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 KB (47928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f94b683a43e46d52f10edd848eb03d0678cdfabe38cedfb6095eb5d86312b2d9`

```dockerfile
```

-	Layers:
	-	`sha256:3efe0d0cf5699f36914ca05007135fd8c7725bda64c7886040c5a28a9c54094d`  
		Last Modified: Thu, 19 Nov 2026 15:04:47 GMT  
		Size: 47.9 KB (47928 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.4-fpm` - linux; 386

```console
$ docker pull joomla@sha256:a2e2648110f4ca09357d553ed2a87819cba2dcb1eca6a5f97c3f95e95c2db280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.9 MB (258932646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c1d25aba519b3569fdc0c0cdf08eec385346b7a90f81ce8f68fea8c9451b6c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:24:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:25:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:25:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:25:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:25:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:25:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:25:08 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:25:08 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:25:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:25:08 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:29:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:29:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:32:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:32:25 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:32:25 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:32:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:32:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:32:26 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:32:26 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:32:26 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:32:26 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:32:26 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:04:48 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:04:48 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:04:48 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:04:48 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:04:48 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.28; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.1; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:04:48 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:04:48 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 15:04:48 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:04:48 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 15:04:56 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:04:56 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:04:56 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:04:56 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:04:56 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:04:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:04:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1051f6ffbe0c8fdf6aed0ba8f51c8895ba979755c564fa5cbb524b106895913c`  
		Last Modified: Thu, 19 Nov 2026 14:28:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6958997bc7e1718b3318cee9c8300401f8f6e73d0676cf8d5c006735b9aab78a`  
		Last Modified: Thu, 19 Nov 2026 14:29:00 GMT  
		Size: 116.1 MB (116139627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d800879af93a4c68e44227ecda7d1b2b5e32f363563aab22243a64a0e12932e8`  
		Last Modified: Thu, 19 Nov 2026 14:28:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7849b4945b69e711487674ecb1a5937e6b4665f12238370582af09901bd330d`  
		Last Modified: Thu, 19 Nov 2026 14:32:36 GMT  
		Size: 14.1 MB (14058265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12cf8e4ab294aa4f9247b8d6213c1a45557a0073cd1f97ae358a5460b713c703`  
		Last Modified: Thu, 19 Nov 2026 14:32:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f86d79f459025a377e33dacb884089907db570a6bc99ad1c847b08a4af140f`  
		Last Modified: Thu, 19 Nov 2026 14:32:36 GMT  
		Size: 14.3 MB (14324237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c3ec98950176e890b2ee5d95b814a36a6cdf8c91b9c0083b4bc82778177608`  
		Last Modified: Thu, 19 Nov 2026 14:32:36 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0025b0ae9d9444bfef65d2c98fa21b5ea5e062f242153726f7fa82946b9bf4a1`  
		Last Modified: Thu, 19 Nov 2026 14:32:36 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25db021dba81969a87d6a68e4c5e1cff83f97cf689fb0fd82686aef213ee150d`  
		Last Modified: Thu, 19 Nov 2026 14:32:37 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5b94400eb35d95a950b249266bc7b8473e36765912cdef1e5820b550da2bdf`  
		Last Modified: Thu, 19 Nov 2026 14:32:37 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3b7b630445571caf36adb058bc810f3f2e61bd138250fb0c12e9ef92b907d6`  
		Last Modified: Thu, 19 Nov 2026 15:05:07 GMT  
		Size: 54.5 MB (54459654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cb0b6fe99831ca88ecc09e52b97c71454898679cab6b5c8f0e6c8443f060ad`  
		Last Modified: Thu, 19 Nov 2026 15:05:05 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15b2d45c9fa2b3ca6474c24bbff700315b767d5071934c9f175a1ee67a16e7b1`  
		Last Modified: Thu, 19 Nov 2026 15:05:07 GMT  
		Size: 28.6 MB (28559352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8515d00f3ea4b4d22d1c4cac1ad98e9b70dd3df0df67391e7217396ee96d4739`  
		Last Modified: Thu, 19 Nov 2026 15:05:05 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2f04c2d4a20d5e181e33e9b111d5d652d8defdd1cf207a668ac79a6231f39c4`  
		Last Modified: Thu, 19 Nov 2026 15:05:06 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.4-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:c6d47c5bdb574a3ddb7955d16e7d850631759233684ca8bdf35e28c27012e79b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 KB (47759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376bdf88e2a99e6661851634eb2d156513c67b5bdf176dc36b83853a90443f49`

```dockerfile
```

-	Layers:
	-	`sha256:e1c1f0f6ae065ba98a55bc299b3aed4f4cb9753f216c9ced8c238eb31fb74b5c`  
		Last Modified: Thu, 19 Nov 2026 15:05:04 GMT  
		Size: 47.8 KB (47759 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.4-fpm` - linux; ppc64le

```console
$ docker pull joomla@sha256:76fce93b01dc7506a7b4e4659db59a33a75ceada0dfdd6c3c9d6c291b9a754cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.2 MB (256194866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f00f580c1aed91bbef39dda9a5f6d08d9534a43f424dddc4158b16b381c2297`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 15:08:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:08:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 15:18:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 15:18:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:18:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:18:58 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:18:59 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:18:59 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:18:59 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:18:59 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 18:47:42 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 18:47:42 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 18:47:42 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 18:47:42 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 18:47:42 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.28; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.1; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 18:47:43 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 18:47:43 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 18:47:43 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 18:47:43 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 18:48:00 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 18:48:00 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 18:48:01 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 18:48:02 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 18:48:02 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 18:48:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 18:48:02 GMT
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
	-	`sha256:ff47c08a324b525741b1ab19f93b70a4f0f5debfa24a9dedb1f57d2a5b34e13a`  
		Last Modified: Thu, 19 Nov 2026 15:14:11 GMT  
		Size: 14.1 MB (14073392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc55fa133226d2be37f187e57f32710b4d8b5e8694f255cbd7257f6057e1022f`  
		Last Modified: Thu, 19 Nov 2026 15:14:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64bb4c3334935269f8c1342924210c2d5f8eba46b3710da0a7f99e4317588dcd`  
		Last Modified: Thu, 19 Nov 2026 15:19:23 GMT  
		Size: 14.5 MB (14500188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07afea04dc0577d697b20d8226a1a1c89d799ac23ded8723bdfdcf5893e23032`  
		Last Modified: Thu, 19 Nov 2026 15:19:23 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d42e87662ec2d4f60087cc842cb60cb808f862f2a39f1dd0bdc20fcba787343`  
		Last Modified: Thu, 19 Nov 2026 15:19:23 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807e30eb49d2c459ef7f7580dc4d39f22343117f5011698cebf6d169eaa582fc`  
		Last Modified: Thu, 19 Nov 2026 15:19:23 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74070740e6485a8bcfe538d32c8e46c523bf97b2f89a0dbe13fc1fdd73c5c6`  
		Last Modified: Thu, 19 Nov 2026 15:19:24 GMT  
		Size: 9.3 KB (9275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f980801b65102aa2abb23ccd57f4446fb6e381d813d770afb4e6bd01e9c77e8`  
		Last Modified: Thu, 19 Nov 2026 18:48:24 GMT  
		Size: 55.8 MB (55761896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f4b8b507afc60d360646fec18c498b052677e32a7caf0a4036b98e36766601`  
		Last Modified: Thu, 19 Nov 2026 18:48:21 GMT  
		Size: 753.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf44bb995a79eeb5aa2266cddd0c1ddf45346b8d1351d677a6b758b1e1cea44`  
		Last Modified: Thu, 19 Nov 2026 18:48:23 GMT  
		Size: 28.6 MB (28559675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06311ea4f27ab7ab5dc4853f41c356bec8aeebe80bd088a71ea1594cf1ca4f85`  
		Last Modified: Thu, 19 Nov 2026 18:48:21 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf35098e22404d234554b832c932111a07a7b75f6072c807dc19f682d99f9a5`  
		Last Modified: Thu, 19 Nov 2026 18:48:23 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.4-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:4c7ba8ecab2a814f6ea25403189d8f81250952378fa99f6541c70dd7a86e6ebc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 KB (47843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a83b04cd6eca0485f616dd4c519afb49ee4e47c4899f3a2250d50a9b8d531fd`

```dockerfile
```

-	Layers:
	-	`sha256:eafec9bcf4ecafff15f9ee87c38c66c5bd776f0378687c9054ba171f936ebe22`  
		Last Modified: Thu, 19 Nov 2026 18:48:21 GMT  
		Size: 47.8 KB (47843 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.4-fpm` - linux; riscv64

```console
$ docker pull joomla@sha256:1043c0367528117f4c4ac0f3c4b25fd64f63aa44c85967d2f612b6b93f9a7c07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.2 MB (283238397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdf20cd03dd39a2cdd7edf17e878cf54c67cc945995ba231b3ab4d937e504259`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Fri, 06 Nov 2026 01:25:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 06 Nov 2026 01:25:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 04:30:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 06 Nov 2026 04:30:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 04:30:05 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 06 Nov 2026 04:30:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 06 Nov 2026 04:30:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 06 Nov 2026 04:30:06 GMT
WORKDIR /var/www/html
# Fri, 06 Nov 2026 04:30:06 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 06 Nov 2026 04:30:06 GMT
STOPSIGNAL SIGQUIT
# Fri, 06 Nov 2026 04:30:06 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 06 Nov 2026 04:30:06 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 08:47:26 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 08:47:26 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 08:47:26 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 08:47:26 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 08:47:26 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.28; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.1; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 08:47:32 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 08:47:32 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 08:47:32 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 08:47:32 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 08:48:57 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 08:48:57 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 08:48:58 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 08:48:59 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 08:48:59 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 08:48:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 08:48:59 GMT
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
	-	`sha256:4a447d1e06107da6d39cfa870edb2af2c8affc6705cb965c63cb3c7f11899939`  
		Last Modified: Fri, 06 Nov 2026 02:26:17 GMT  
		Size: 14.0 MB (14025005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3259717fd38dfe0e4d640268b89a2e9d4e12e75b12fd7557186062a992ffb1`  
		Last Modified: Fri, 06 Nov 2026 02:26:12 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d1a92a1782ccb211fb4717fed0cde753275b147f8f5d41eba92abeb66710988`  
		Last Modified: Fri, 06 Nov 2026 04:33:20 GMT  
		Size: 13.3 MB (13324620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50d7e40fdc8d56786326c140633e5a8675b630b122be9c9f280e429f891aed0`  
		Last Modified: Fri, 06 Nov 2026 04:33:17 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4eb8fff0dfd7246d36aec3e5a05300be228a325e52fc91a73ed358e02b3f65`  
		Last Modified: Fri, 06 Nov 2026 04:33:17 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3919a3fd0a0406b9c273ad8b719ef7b6aaf372652db98f917ca596ac8f32df67`  
		Last Modified: Fri, 06 Nov 2026 04:33:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722c944676bdab4ee5ff41d629746303ad364d121389d2837db7292b93850446`  
		Last Modified: Fri, 06 Nov 2026 04:33:19 GMT  
		Size: 9.3 KB (9273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4331aea532121dcb5bb847b51ffb77ddf2ce28bcb7803ba746d9a55670e5b0b`  
		Last Modified: Thu, 19 Nov 2026 08:51:06 GMT  
		Size: 52.4 MB (52383178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3228e92df355bc6e275e01dcd43b3189ce01ce76a385b6133310153911cf4c1`  
		Last Modified: Thu, 19 Nov 2026 08:50:54 GMT  
		Size: 755.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505be0b0657becc4476543d156c145bfe80c77ec313926b47d95d9301bc5ffdb`  
		Last Modified: Thu, 19 Nov 2026 08:51:02 GMT  
		Size: 28.6 MB (28559573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d53e591d46bab9b9b8033353c5de692326aab5790852ef7ca35a3785dbe7623`  
		Last Modified: Thu, 19 Nov 2026 08:50:54 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2aa979326c4556a36735256b9cddaf0590c8a89750376f493386892f85d076f`  
		Last Modified: Thu, 19 Nov 2026 08:50:56 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.4-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:931804bd6559e9c63dd79dadcf2f5909673aaff6e2bf1a5fa5f280a08d76125c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 KB (47843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:318b4794e77a491be0a5f549bfc0dcf720e1db8d00a1d8ad85cb3ac287853c94`

```dockerfile
```

-	Layers:
	-	`sha256:2b48702cbfbff1ba2e752e50f1ac4a9be8f77e53539b7326f6750998b96b67c0`  
		Last Modified: Thu, 19 Nov 2026 08:50:53 GMT  
		Size: 47.8 KB (47843 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:6-php8.4-fpm` - linux; s390x

```console
$ docker pull joomla@sha256:be7a817ca844efe6e7e30dfce70ffb42226dfb5a547d437d700802c3f46a9c78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232518362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0225d8054ea1a9677f5ba2c17673cb74e61740c4f8b5a5a45ce46eb01c58aa7b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:16:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:16:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:16:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:16:29 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:35:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:42:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:42:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:42:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:42:52 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:42:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:42:52 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:42:52 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:42:52 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:37:09 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:37:09 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:37:09 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:37:09 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:37:09 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.28; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.1; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:37:10 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:37:10 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 15:37:10 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:37:10 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 15:37:16 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:37:16 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:37:16 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:37:16 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:37:16 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:37:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:37:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc90f18d381c1c190bbd05548eb25d4919b5bcb4150305b2066bb6f6a0eac1f`  
		Last Modified: Thu, 05 Nov 2026 07:19:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6064727183bb56538cc6371082e5cf86589847304ddb2ccb1d606fa7a75240e2`  
		Last Modified: Thu, 05 Nov 2026 07:19:53 GMT  
		Size: 92.6 MB (92569560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7fb2d82fb764d012f892370b22cac9c131ee57ce786c706df99509bd396c16`  
		Last Modified: Thu, 05 Nov 2026 07:19:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08cee317cdc66d064723362134701d85688a5da0e1bdaacd4647ad85b6b4c142`  
		Last Modified: Thu, 19 Nov 2026 14:39:05 GMT  
		Size: 14.1 MB (14072659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd18497fc971b0d544014c73ee90e087fbd75f2752bc11e63c18b56c87f8cd73`  
		Last Modified: Thu, 19 Nov 2026 14:39:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acaa8ccfc9578452b57d8906b0b2332fac713bd9e226771733973ea45cf0687`  
		Last Modified: Thu, 19 Nov 2026 14:43:07 GMT  
		Size: 13.7 MB (13730186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d846462d4449b1cb65cae2678777eb3bbda04eb7b08a113a0ea88dfbbc692bd`  
		Last Modified: Thu, 19 Nov 2026 14:43:07 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1dcdc0a783c9fba15c5f643bcd4d7e42f5455d5b65d923578013a0abe5f6a32`  
		Last Modified: Thu, 19 Nov 2026 14:43:07 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71d4e581f51d8465d9ac6b745bdb0ebb921d4652be99d4c077dabb8e9df3641`  
		Last Modified: Thu, 19 Nov 2026 14:43:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697c78ae09dd0098d25eed581817b9c07d9b231b25121f56d299c99b0c253001`  
		Last Modified: Thu, 19 Nov 2026 14:43:08 GMT  
		Size: 9.3 KB (9271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c9833097ce76fdc26213dee72ae496f3fec50e4910b05265c74e07048c85b7b`  
		Last Modified: Thu, 19 Nov 2026 15:37:31 GMT  
		Size: 53.6 MB (53643785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfddf0cc68541a4761808111aa0afc53c056fa6f1a41f7d903e2a505c185f86`  
		Last Modified: Thu, 19 Nov 2026 15:37:30 GMT  
		Size: 752.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e1ec066c96befdf90a55804ae4303455005759bcdadaa6310005bade2e0a4e0`  
		Last Modified: Thu, 19 Nov 2026 15:37:31 GMT  
		Size: 28.6 MB (28557288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d050c764defdbe955fa809a04441facf6ecf0b3b630a4a259c3845e6f5c7202c`  
		Last Modified: Thu, 19 Nov 2026 15:37:30 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4873a14605fc7a41a1735e344f986e4d2931ba3e7a125fa55a767c0900f8e0`  
		Last Modified: Thu, 19 Nov 2026 15:37:31 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:6-php8.4-fpm` - unknown; unknown

```console
$ docker pull joomla@sha256:9f33bd58351b4130c26ae0c35b858632d36aee4f4b6ee0fad5c54737c9c23623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 KB (47788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c47776cbcfe36b9092cf50082845eeae974d74fe1d6b5164ed32458c1f6fd5`

```dockerfile
```

-	Layers:
	-	`sha256:7580815742bf126118c4caaede8ae08ee3f9ca2501d71e98533dbee34b4e7bd2`  
		Last Modified: Thu, 19 Nov 2026 15:37:30 GMT  
		Size: 47.8 KB (47788 bytes)  
		MIME: application/vnd.in-toto+json
