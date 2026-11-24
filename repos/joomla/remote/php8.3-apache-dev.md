## `joomla:php8.3-apache-dev`

```console
$ docker pull joomla@sha256:debe3ec34f392957a801c67263e64cca04d639cdbd4d96ce06c102dbe0cf7699
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

### `joomla:php8.3-apache-dev` - linux; amd64

```console
$ docker pull joomla@sha256:62f2dd0df6721031984df40a734a96d477fe82f5e143cd0574d017bc9fe0eff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.7 MB (317697304 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62c4114564400f0c98fcfa36efe97089247099c6523f975b5833b76bf0d1679d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:30 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:18:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:24:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:24:48 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:24:48 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:24:48 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:24:48 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:24:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:24:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:27:14 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:27:14 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:14 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:27:14 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:27:14 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 05:28:42 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Tue, 24 Nov 2026 05:28:42 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 24 Nov 2026 05:28:42 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 05:28:42 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 05:28:42 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:28:43 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Tue, 24 Nov 2026 05:28:43 GMT
ENV JOOMLA_VERSION=6.2.0
# Tue, 24 Nov 2026 05:28:43 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Tue, 24 Nov 2026 05:28:43 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Tue, 24 Nov 2026 05:28:50 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:28:50 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:28:50 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 05:28:50 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:28:50 GMT
COPY makedb.php /makedb.php # buildkit
# Tue, 24 Nov 2026 05:28:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:28:50 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:17:45 GMT
ENV JOOMLA_XDEBUG_CLIENT_HOST=host.docker.internal
# Tue, 24 Nov 2026 06:17:45 GMT
ENV JOOMLA_XDEBUG_CLIENT_PORT=9003
# Tue, 24 Nov 2026 06:17:45 GMT
ENV XDEBUG_MODE=develop,debug
# Tue, 24 Nov 2026 06:17:45 GMT
ARG COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar
# Tue, 24 Nov 2026 06:17:45 GMT
ARG COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6
# Tue, 24 Nov 2026 06:17:45 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 06:17:45 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 06:17:45 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		openssh-client 		patch 		unzip 		zip 		nodejs 		python3 		make 		g++ 		jq 		rsync 		less 		nano; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		npm; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-install -j "$(nproc)" 		pcntl 		sockets; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$COMPOSER_URL" --output /usr/local/bin/composer; 	printf '%s *%s\n' "$COMPOSER_SHA256" /usr/local/bin/composer | sha256sum -c -; 	chmod 0755 /usr/local/bin/composer; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" xdebug/xdebug:3.5.3; 	npm_config_cache=/tmp/joomla-npm npm install --global --prefix /usr/local --no-audit --no-fund --engine-strict npm@11.21.1; 	hash -r; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:17:46 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ALL' 		'display_errors = On' 		'display_startup_errors = On' 		'ignore_repeated_errors = Off' 		'opcache.validate_timestamps = 1' 		'opcache.revalidate_freq = 0' 		'opcache.jit = off' 		'opcache.jit_buffer_size = 0' 		> /usr/local/etc/php/conf.d/zz-joomla-development.ini; 	printf '%s\n' 		'xdebug.mode = develop,debug' 		'xdebug.start_with_request = trigger' 		'xdebug.start_upon_error = no' 		'xdebug.discover_client_host = 0' 		'xdebug.client_host = ${JOOMLA_XDEBUG_CLIENT_HOST}' 		'xdebug.client_port = ${JOOMLA_XDEBUG_CLIENT_PORT}' 		'xdebug.output_dir = /tmp' 		> /usr/local/etc/php/conf.d/zz-xdebug-settings.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri pcntl > /dev/null; 	php --ri sockets > /dev/null; 	php --ri xdebug > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	composer --version; 	npm --version; 	npx --version # buildkit
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:747e743ad987668cabdfda91d537ead35e0e1d14dc80bb097ddae0a1e060e746`  
		Last Modified: Tue, 24 Nov 2026 04:21:06 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7984e164f95866aa4da96ed0196af15fdd3ade278b33b49dbeac655a47d3f6f1`  
		Last Modified: Tue, 24 Nov 2026 04:21:09 GMT  
		Size: 117.8 MB (117839038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a1d87fc009ec1041805502b778672fe9918858c3a3f481e6450c4fae4ce76b`  
		Last Modified: Tue, 24 Nov 2026 04:21:06 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22344644b4f444ab0388d69de082672046fb6345f70426367a0c0bf08755082d`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 4.2 MB (4243953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3264d1260c98aa180d8fb333ad1bf6ba2fc972734d52b45b558b9c5999890c0f`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5927cf3c0eb1a6564517d1c4420c3c5118d43f637e103b73d16697080d8abe`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9859618750bcdf5797631ce37c1010aa79adf1cdec9883f4edb0800ac74036b5`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 12.8 MB (12849465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35411c83048021b648f3acb189e7e30f7cfa65d97aafb5caed5d44295cfb45b6`  
		Last Modified: Tue, 24 Nov 2026 04:27:25 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad359aaffe12d06a4ef1a83db4a3f5771d790d00f1166f89b2b0bfbdd435ac45`  
		Last Modified: Tue, 24 Nov 2026 04:27:25 GMT  
		Size: 11.8 MB (11765370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ec0a597d17b901a77162d5e926f2e165f5203dc3bd2d4e11407d155267b592`  
		Last Modified: Tue, 24 Nov 2026 04:27:25 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528ad6dc63cfd9d89d594b2aea98be45fc94a17a574848c6fa46c4148be91b4f`  
		Last Modified: Tue, 24 Nov 2026 04:27:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b6aefba1d783a47298821ef81307fd895cc374482ed0af5b2338f9ecf3a46b`  
		Last Modified: Tue, 24 Nov 2026 04:27:26 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2a360d2831d659ce732572fc0e94748b7722071c87faa1e375f1706eec47a81`  
		Last Modified: Tue, 24 Nov 2026 04:27:26 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5714e57fbe5a2b3a6e68f2f714d87545dcb17078e731da5c2331fd80b82dc142`  
		Last Modified: Tue, 24 Nov 2026 05:29:00 GMT  
		Size: 53.8 MB (53760230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caaaae222e50ddcecf2d3755bf6b019ce22aa23130f28ec2c0c1b0ff164d38b9`  
		Last Modified: Tue, 24 Nov 2026 05:28:59 GMT  
		Size: 19.4 KB (19408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054f5bd3ac6ee2196043a31508b9ff6f97373752ee7cbe380f053b7a39a29383`  
		Last Modified: Tue, 24 Nov 2026 05:29:00 GMT  
		Size: 28.6 MB (28581708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada549cd203b28b5758e7ff5033a94145346616258a6c93d1ab5717be8368793`  
		Last Modified: Tue, 24 Nov 2026 05:28:59 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:410339987d6d81ad3e6def91a482fa984720ca59f24c6b5d306611c67f2ad02c`  
		Last Modified: Tue, 24 Nov 2026 05:29:00 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd84127a036cee73a0273ea6acdd8d0bdd33e493d05c2606b491c6c1ce717bb5`  
		Last Modified: Tue, 24 Nov 2026 06:17:58 GMT  
		Size: 58.8 MB (58782916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db7110be7df4ec0f95cb25ee595638fc662f020c081668ceed382b7ababa525e`  
		Last Modified: Tue, 24 Nov 2026 06:17:57 GMT  
		Size: 511.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-apache-dev` - unknown; unknown

```console
$ docker pull joomla@sha256:665268b21cfb0821f02a05331abd10a33ac13f87ad6451c754e3eb145b1119af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245d4273422cc46787b209cd1492ee21908756cb943acecb6a88aede4e449759`

```dockerfile
```

-	Layers:
	-	`sha256:6080eeb8aa1c5a4ebfd1e62f7b402eba426403d683fe858e4e8a6d2c7dfca60d`  
		Last Modified: Tue, 24 Nov 2026 06:17:56 GMT  
		Size: 30.8 KB (30827 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-apache-dev` - linux; arm variant v5

```console
$ docker pull joomla@sha256:b86669e176ef8b55f1cdb694ec9dc16e5f3505471f19d07f3f48220108cf5d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.4 MB (287436344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c8d5f269f906645583e1ddc1badcdacb54f20911967ac65b54d25820edcc4d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:20:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:23:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:23:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:23:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:23:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:23:57 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:24:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:24:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:27:08 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:27:08 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:08 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:27:08 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:27:08 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:05:16 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Tue, 24 Nov 2026 06:05:16 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 24 Nov 2026 06:05:16 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 06:05:16 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 06:05:16 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:05:17 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Tue, 24 Nov 2026 06:05:17 GMT
ENV JOOMLA_VERSION=6.2.0
# Tue, 24 Nov 2026 06:05:17 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Tue, 24 Nov 2026 06:05:17 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Tue, 24 Nov 2026 06:05:30 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:05:30 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 06:05:30 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 06:05:30 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 06:05:30 GMT
COPY makedb.php /makedb.php # buildkit
# Tue, 24 Nov 2026 06:05:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:05:30 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:40:54 GMT
ENV JOOMLA_XDEBUG_CLIENT_HOST=host.docker.internal
# Tue, 24 Nov 2026 06:40:54 GMT
ENV JOOMLA_XDEBUG_CLIENT_PORT=9003
# Tue, 24 Nov 2026 06:40:54 GMT
ENV XDEBUG_MODE=develop,debug
# Tue, 24 Nov 2026 06:40:54 GMT
ARG COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar
# Tue, 24 Nov 2026 06:40:54 GMT
ARG COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6
# Tue, 24 Nov 2026 06:40:54 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 06:40:54 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 06:40:54 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		openssh-client 		patch 		unzip 		zip 		nodejs 		python3 		make 		g++ 		jq 		rsync 		less 		nano; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		npm; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-install -j "$(nproc)" 		pcntl 		sockets; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$COMPOSER_URL" --output /usr/local/bin/composer; 	printf '%s *%s\n' "$COMPOSER_SHA256" /usr/local/bin/composer | sha256sum -c -; 	chmod 0755 /usr/local/bin/composer; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" xdebug/xdebug:3.5.3; 	npm_config_cache=/tmp/joomla-npm npm install --global --prefix /usr/local --no-audit --no-fund --engine-strict npm@11.21.1; 	hash -r; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:40:56 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ALL' 		'display_errors = On' 		'display_startup_errors = On' 		'ignore_repeated_errors = Off' 		'opcache.validate_timestamps = 1' 		'opcache.revalidate_freq = 0' 		'opcache.jit = off' 		'opcache.jit_buffer_size = 0' 		> /usr/local/etc/php/conf.d/zz-joomla-development.ini; 	printf '%s\n' 		'xdebug.mode = develop,debug' 		'xdebug.start_with_request = trigger' 		'xdebug.start_upon_error = no' 		'xdebug.discover_client_host = 0' 		'xdebug.client_host = ${JOOMLA_XDEBUG_CLIENT_HOST}' 		'xdebug.client_port = ${JOOMLA_XDEBUG_CLIENT_PORT}' 		'xdebug.output_dir = /tmp' 		> /usr/local/etc/php/conf.d/zz-xdebug-settings.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri pcntl > /dev/null; 	php --ri sockets > /dev/null; 	php --ri xdebug > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	composer --version; 	npm --version; 	npx --version # buildkit
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
	-	`sha256:71ac5877ec449ab8bf1b8e547c75b0cedec2ff4ccf032885adaf2be797072ac8`  
		Last Modified: Tue, 24 Nov 2026 04:27:18 GMT  
		Size: 4.1 MB (4099904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131b38999e2b425a06a7a784f2e27e5456ce480a997024a03951dd65a029c30c`  
		Last Modified: Tue, 24 Nov 2026 04:27:18 GMT  
		Size: 426.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fd0dde17754d5ffbf149d64f975bc4cafbaf8ba363c6ea0d417476990fa32fd`  
		Last Modified: Tue, 24 Nov 2026 04:27:18 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ac496a737ba82a0ce21c3877d048b18d93fa3e3fe418b737b7a19eaace8c80`  
		Last Modified: Tue, 24 Nov 2026 04:27:19 GMT  
		Size: 12.8 MB (12846641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81244fa084092bfbbd79d57d2f4ae5e3b7acdee5b279c0543f125cb286dabd41`  
		Last Modified: Tue, 24 Nov 2026 04:27:19 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e89ca215649dd0ba0f50c64aef4aa8c7ad684f18b4471974e7f354004300a9`  
		Last Modified: Tue, 24 Nov 2026 04:27:20 GMT  
		Size: 10.6 MB (10646508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78401cf29078809befca92c1871b1893f570cf2982b2110dab5167996571a5a`  
		Last Modified: Tue, 24 Nov 2026 04:27:20 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b59a6179650fe5577d5896c3a098265371e215acc224f5ac4f8ba1504cfef4`  
		Last Modified: Tue, 24 Nov 2026 04:27:20 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05eda8142defbc6867baf7a97766dc3a711d12f097a31df33c5790b16889f259`  
		Last Modified: Tue, 24 Nov 2026 04:27:21 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f5d68a00cdec7c6a67da7c673cbe5b9195b34b7a1f6358469762007998cbdaf`  
		Last Modified: Tue, 24 Nov 2026 04:27:21 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3c1ea996d2427381de7875fb9d17f84ce80eec40a57e3946129250ec2df339`  
		Last Modified: Tue, 24 Nov 2026 06:05:40 GMT  
		Size: 52.3 MB (52262459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2649817b220a198d2a95a034b864822633856a038a0bfe7559475d8c3e5fe649`  
		Last Modified: Tue, 24 Nov 2026 06:05:39 GMT  
		Size: 19.4 KB (19397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1788072c8eb06f3513f6564602348101250e0b275612dde0700a1203ad73c10`  
		Last Modified: Tue, 24 Nov 2026 06:05:40 GMT  
		Size: 28.6 MB (28578630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43dd85df915580daa948197d2f81fc61de88bb7f9d33c59bc606a3024a8bab07`  
		Last Modified: Tue, 24 Nov 2026 06:05:39 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d7a35cf188c87f7b61003e3480f146fd4aa861517d15bf7d8fff2fc0f11e616`  
		Last Modified: Tue, 24 Nov 2026 06:05:40 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cacccc4c5c890ff9c2d0d6bcc580d3c1975e1ae35e2ddedf7557ceac7f2d3c2b`  
		Last Modified: Tue, 24 Nov 2026 06:41:07 GMT  
		Size: 56.1 MB (56076482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d51f893a7a11206b4f44bbf13abe0e44324b18638e2c36ce0fb803f3d261b07`  
		Last Modified: Tue, 24 Nov 2026 06:41:06 GMT  
		Size: 512.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-apache-dev` - unknown; unknown

```console
$ docker pull joomla@sha256:ed86a6b578064a54c32beeb3e3395116e8125abf3fb307a3f8eee07ace864639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 KB (30918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae49828ecfd4b28ef3f35dfd47dd249350ed85534ca315d684ccad8927698b1a`

```dockerfile
```

-	Layers:
	-	`sha256:d4ae4fc12c4d69e69eb2f3b2f1cf9a5526a73af93cb063908dd2f4bd8c9c04ef`  
		Last Modified: Tue, 24 Nov 2026 06:41:05 GMT  
		Size: 30.9 KB (30918 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-apache-dev` - linux; arm variant v7

```console
$ docker pull joomla@sha256:7202779866cad93dffc70e13d9b3867c8c839517bd2745d1f08486bee14e8e76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271085039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1709b899fffb4d3aa1ba22634060675ba8404a431387e754894f7eca3b1795da`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:30:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:30:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:30:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:30:26 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:35:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:35:59 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:35:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:35:59 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:35:59 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:43:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:43:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:45:58 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:45:58 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:45:58 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:45:58 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:45:58 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:29:41 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Tue, 24 Nov 2026 06:29:41 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 24 Nov 2026 06:29:41 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 06:29:41 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 06:29:41 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:29:42 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Tue, 24 Nov 2026 06:29:42 GMT
ENV JOOMLA_VERSION=6.2.0
# Tue, 24 Nov 2026 06:29:42 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Tue, 24 Nov 2026 06:29:42 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Tue, 24 Nov 2026 06:29:52 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:29:52 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 06:29:52 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 06:29:52 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 06:29:52 GMT
COPY makedb.php /makedb.php # buildkit
# Tue, 24 Nov 2026 06:29:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 06:29:52 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 07:19:09 GMT
ENV JOOMLA_XDEBUG_CLIENT_HOST=host.docker.internal
# Tue, 24 Nov 2026 07:19:09 GMT
ENV JOOMLA_XDEBUG_CLIENT_PORT=9003
# Tue, 24 Nov 2026 07:19:09 GMT
ENV XDEBUG_MODE=develop,debug
# Tue, 24 Nov 2026 07:19:09 GMT
ARG COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar
# Tue, 24 Nov 2026 07:19:09 GMT
ARG COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6
# Tue, 24 Nov 2026 07:19:09 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 07:19:09 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 07:19:09 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		openssh-client 		patch 		unzip 		zip 		nodejs 		python3 		make 		g++ 		jq 		rsync 		less 		nano; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		npm; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-install -j "$(nproc)" 		pcntl 		sockets; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$COMPOSER_URL" --output /usr/local/bin/composer; 	printf '%s *%s\n' "$COMPOSER_SHA256" /usr/local/bin/composer | sha256sum -c -; 	chmod 0755 /usr/local/bin/composer; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" xdebug/xdebug:3.5.3; 	npm_config_cache=/tmp/joomla-npm npm install --global --prefix /usr/local --no-audit --no-fund --engine-strict npm@11.21.1; 	hash -r; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 07:19:10 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ALL' 		'display_errors = On' 		'display_startup_errors = On' 		'ignore_repeated_errors = Off' 		'opcache.validate_timestamps = 1' 		'opcache.revalidate_freq = 0' 		'opcache.jit = off' 		'opcache.jit_buffer_size = 0' 		> /usr/local/etc/php/conf.d/zz-joomla-development.ini; 	printf '%s\n' 		'xdebug.mode = develop,debug' 		'xdebug.start_with_request = trigger' 		'xdebug.start_upon_error = no' 		'xdebug.discover_client_host = 0' 		'xdebug.client_host = ${JOOMLA_XDEBUG_CLIENT_HOST}' 		'xdebug.client_port = ${JOOMLA_XDEBUG_CLIENT_PORT}' 		'xdebug.output_dir = /tmp' 		> /usr/local/etc/php/conf.d/zz-xdebug-settings.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri pcntl > /dev/null; 	php --ri sockets > /dev/null; 	php --ri xdebug > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	composer --version; 	npm --version; 	npx --version # buildkit
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445b4c5aaeed9d202d99e1a00987310dd24af2104aee1174ef48c83e5725ae3e`  
		Last Modified: Tue, 24 Nov 2026 04:33:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:918c823326cd310cea5e4245e040bccfc5eabf89fc6dc8d4b60e6eeba500e6bc`  
		Last Modified: Tue, 24 Nov 2026 04:33:46 GMT  
		Size: 86.3 MB (86257423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55fa52c76973b6c6044aa92a226297c4f0a565b1239a8542a31660358624ce4`  
		Last Modified: Tue, 24 Nov 2026 04:33:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9edd9115d13b8c40482200fa259308d152f742a8502c07bb428dc22180577a`  
		Last Modified: Tue, 24 Nov 2026 04:39:11 GMT  
		Size: 3.8 MB (3768154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8399d8c0e554c0cbbfa10351d151aa97c58b02538d6b28dd83651b42f5b8ec6`  
		Last Modified: Tue, 24 Nov 2026 04:39:10 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed4b2001950e4d45f072ead0c035e347a3a02334add4dbc00e20bc9374046cd`  
		Last Modified: Tue, 24 Nov 2026 04:39:10 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65a7ff7bbf4723d8214ba17ff7ebd9e1daac15cdaf4755376f063297ab65034`  
		Last Modified: Tue, 24 Nov 2026 04:46:09 GMT  
		Size: 12.8 MB (12846710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa26699b98325e2245a1b3da3dd12b842302bfce37aafb760cb17be761783eba`  
		Last Modified: Tue, 24 Nov 2026 04:46:08 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87399bc244bbc957a4389b67e94a305cdc9527475841b3ddf524377b58d242d2`  
		Last Modified: Tue, 24 Nov 2026 04:46:09 GMT  
		Size: 10.1 MB (10114072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ddf43315f2c2672a8d33e93b3e8d07e1ae0ca9efac415d983ee2bdb29b64d83`  
		Last Modified: Tue, 24 Nov 2026 04:46:08 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840c6a5ba8c42465749d9e35f97c56ab9582e502c973b513507620548b93aad2`  
		Last Modified: Tue, 24 Nov 2026 04:46:09 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd77d573510e8996e66df135f2fbe49e7d596c5b60a6eb753778df688d03f10`  
		Last Modified: Tue, 24 Nov 2026 04:46:09 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a508d227871dc940a87b9d39c02570d8e905d98cd57bf3fa88ba330a8f80d13a`  
		Last Modified: Tue, 24 Nov 2026 04:46:10 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a395db2d475bdca87d19f461783237e9742280ad86dcf81ed711b9a6d5a6fe8`  
		Last Modified: Tue, 24 Nov 2026 06:30:02 GMT  
		Size: 50.1 MB (50100189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e773069c90079562a6f8b2c426216ccae99a0b431b714da33ce05d0009909d3a`  
		Last Modified: Tue, 24 Nov 2026 06:30:00 GMT  
		Size: 19.4 KB (19408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c07c9af25465ea2bf938d4ff0a80d2a09852380268ae3cecf0ccea1c8634bca`  
		Last Modified: Tue, 24 Nov 2026 06:30:01 GMT  
		Size: 28.6 MB (28578761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:150469edfd182aabd497e97c87e7cc2d042b2af2fbdb8e71dbfa56531a10e59d`  
		Last Modified: Tue, 24 Nov 2026 06:30:00 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8053319e0b2ed610db4a417ef041c04cc493eb01d534ab1baad4507ba09bd833`  
		Last Modified: Tue, 24 Nov 2026 06:30:01 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9e78820eefc90a1027cef966e46e60effa2b6da8adc9b6099de67935ca07ad`  
		Last Modified: Tue, 24 Nov 2026 07:19:21 GMT  
		Size: 53.1 MB (53124805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a69db8de3c869ac7b9402f9d89f6e3f20bb722091e0b3f20644a67e5ff9499`  
		Last Modified: Tue, 24 Nov 2026 07:19:20 GMT  
		Size: 515.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-apache-dev` - unknown; unknown

```console
$ docker pull joomla@sha256:74373c3a6af778f1eef0919cb27a3aa5a45bdaac2d9a050cea0b3de939442393
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 KB (30917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:820c433419bdde6d08414fcea4abca61d0b0223ff7f60712ac78c053b35bafe1`

```dockerfile
```

-	Layers:
	-	`sha256:bba0361ddb15bd43e4b097e5a7245fa89c57dc34d483d77e383fc98f9f084889`  
		Last Modified: Tue, 24 Nov 2026 07:19:19 GMT  
		Size: 30.9 KB (30917 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-apache-dev` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:fc38ceaa11684f13dc247d245b85165dd9b62efa5222d78a73b6f56f9d24419b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.5 MB (308532886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f868fa756748fff6d958edbbe86411b376e56eec205067db37a47fb95da825b4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:18:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:18:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:18:52 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:26:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:26:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:30:36 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:30:36 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:30:36 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:30:36 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:30:36 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 05:40:16 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Tue, 24 Nov 2026 05:40:16 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 24 Nov 2026 05:40:16 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 05:40:16 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 05:40:16 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:40:17 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Tue, 24 Nov 2026 05:40:17 GMT
ENV JOOMLA_VERSION=6.2.0
# Tue, 24 Nov 2026 05:40:17 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Tue, 24 Nov 2026 05:40:17 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Tue, 24 Nov 2026 05:40:25 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:40:25 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:40:25 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 05:40:25 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:40:25 GMT
COPY makedb.php /makedb.php # buildkit
# Tue, 24 Nov 2026 05:40:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:40:25 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:16:01 GMT
ENV JOOMLA_XDEBUG_CLIENT_HOST=host.docker.internal
# Tue, 24 Nov 2026 06:16:01 GMT
ENV JOOMLA_XDEBUG_CLIENT_PORT=9003
# Tue, 24 Nov 2026 06:16:01 GMT
ENV XDEBUG_MODE=develop,debug
# Tue, 24 Nov 2026 06:16:01 GMT
ARG COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar
# Tue, 24 Nov 2026 06:16:01 GMT
ARG COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6
# Tue, 24 Nov 2026 06:16:01 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 06:16:01 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 06:16:01 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		openssh-client 		patch 		unzip 		zip 		nodejs 		python3 		make 		g++ 		jq 		rsync 		less 		nano; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		npm; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-install -j "$(nproc)" 		pcntl 		sockets; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$COMPOSER_URL" --output /usr/local/bin/composer; 	printf '%s *%s\n' "$COMPOSER_SHA256" /usr/local/bin/composer | sha256sum -c -; 	chmod 0755 /usr/local/bin/composer; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" xdebug/xdebug:3.5.3; 	npm_config_cache=/tmp/joomla-npm npm install --global --prefix /usr/local --no-audit --no-fund --engine-strict npm@11.21.1; 	hash -r; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:16:02 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ALL' 		'display_errors = On' 		'display_startup_errors = On' 		'ignore_repeated_errors = Off' 		'opcache.validate_timestamps = 1' 		'opcache.revalidate_freq = 0' 		'opcache.jit = off' 		'opcache.jit_buffer_size = 0' 		> /usr/local/etc/php/conf.d/zz-joomla-development.ini; 	printf '%s\n' 		'xdebug.mode = develop,debug' 		'xdebug.start_with_request = trigger' 		'xdebug.start_upon_error = no' 		'xdebug.discover_client_host = 0' 		'xdebug.client_host = ${JOOMLA_XDEBUG_CLIENT_HOST}' 		'xdebug.client_port = ${JOOMLA_XDEBUG_CLIENT_PORT}' 		'xdebug.output_dir = /tmp' 		> /usr/local/etc/php/conf.d/zz-xdebug-settings.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri pcntl > /dev/null; 	php --ri sockets > /dev/null; 	php --ri xdebug > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	composer --version; 	npm --version; 	npx --version # buildkit
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c33bb3bb99026cc1e1c0933406e42901b986bf190cbacfaeed05d210ac297d60`  
		Last Modified: Tue, 24 Nov 2026 04:22:33 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f5607917deb524ebd854c6502d4e5f6c31302161f238ec21942bcd73cfabe97`  
		Last Modified: Tue, 24 Nov 2026 04:22:36 GMT  
		Size: 110.2 MB (110180359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dec7be45c9709de51cc476c59078eb7ff1072a15149877c57f532ba9a7abd5`  
		Last Modified: Tue, 24 Nov 2026 04:22:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0f38ae2eed98fa15f407f055a0f295560fc15aed5a8f776302794188c7cbf0`  
		Last Modified: Tue, 24 Nov 2026 04:22:33 GMT  
		Size: 4.3 MB (4321172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfacb3260ef5a89b6f71296206652fbb83a87e4e836c1f413155bd138fef76e`  
		Last Modified: Tue, 24 Nov 2026 04:22:33 GMT  
		Size: 426.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c8a6b9365916afe135be56f7ce3c913802a6ce4c54e1ac48b058a185bacb5f`  
		Last Modified: Tue, 24 Nov 2026 04:22:34 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:876e40cc372ed4311eb92d130ccdbc644ad550550e5af3bdb493b65cd72fa90c`  
		Last Modified: Tue, 24 Nov 2026 04:30:48 GMT  
		Size: 12.8 MB (12849068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f951a1f831a51c40f45343d2f019ce3297d26df0234e791b986447e8b3812c7`  
		Last Modified: Tue, 24 Nov 2026 04:30:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc2662c2fd6cab55332c4ff57a8f7ff5afc2442d58e290d01aa1481133714d8`  
		Last Modified: Tue, 24 Nov 2026 04:30:48 GMT  
		Size: 11.8 MB (11786839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdebc8199818b6d4fdae0d515351d3e6beea40f1479b52e8b53da04971635981`  
		Last Modified: Tue, 24 Nov 2026 04:30:47 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6ca007a1671143dc67b564ba655516b85102f2175fd198ed32bd1ca48ab666`  
		Last Modified: Tue, 24 Nov 2026 04:30:48 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4677d2df2010072f9adc3a77e78d003562f81af17eb535e45b285192ee44bb5d`  
		Last Modified: Tue, 24 Nov 2026 04:30:48 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95810a58bb1f4d09caf9671263922551aae24d44efffe0e6d3cfb9a9c09e2cdd`  
		Last Modified: Tue, 24 Nov 2026 04:30:49 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bcea07af9979804024bfd61a5f26ac7e76dfee45e4f9367bd3daf4587f72832`  
		Last Modified: Tue, 24 Nov 2026 05:40:36 GMT  
		Size: 52.5 MB (52528816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e4d9d67f4c3791884f97cffc32f290dad209a708252fca94d53d8cb15f004cf`  
		Last Modified: Tue, 24 Nov 2026 05:40:34 GMT  
		Size: 19.4 KB (19400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1317808c52d62fa2d50b50c2a8aa9e9bcf6538460f7b6cab427d031b807d9c`  
		Last Modified: Tue, 24 Nov 2026 05:40:35 GMT  
		Size: 28.6 MB (28581229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:773e6fc820e9283e472b573f30d9ed1380b77cf948c97bab050c82729c6a5496`  
		Last Modified: Tue, 24 Nov 2026 05:40:34 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4596a42f56ad8bb0a1c56c873ea809d1202e6abfcaf2d10f2af2d19569afc6b9`  
		Last Modified: Tue, 24 Nov 2026 05:40:35 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83ba4767d659a68dd3c475787d0bf1849837d4d5d0d1224dbfbe370189cbac3`  
		Last Modified: Tue, 24 Nov 2026 06:16:14 GMT  
		Size: 58.1 MB (58054933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744d79b2aa09fe41654de27779631fed37ec9c610f5c28634b1f38c8d238ad95`  
		Last Modified: Tue, 24 Nov 2026 06:16:12 GMT  
		Size: 515.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-apache-dev` - unknown; unknown

```console
$ docker pull joomla@sha256:4319785f17587728a3a18e7a9e455a90e39dd47afe884a6398f0848668df83c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 KB (30947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06719e6af69b2716f267c37a570628c813da2291cd75d84078e8d36d9264301`

```dockerfile
```

-	Layers:
	-	`sha256:1c94806abd95e1041a7c2876a2f8ff08dc85338f867bd3920c87ff93c61622e5`  
		Last Modified: Tue, 24 Nov 2026 06:16:12 GMT  
		Size: 30.9 KB (30947 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-apache-dev` - linux; 386

```console
$ docker pull joomla@sha256:d3265c9a1ca2e11ccf32047cc67205ee059338511dff30807093dc446d600046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321225158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7674e124a4efc31846d35863dbae6359a9f7654d3c830271f329cb3c1c3f35e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:16:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:16:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:16:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:16:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:16:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:16:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:16:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:24:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:24:37 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:24:37 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:24:37 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:24:37 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:24:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:24:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:27:40 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:27:40 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:40 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:27:40 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:27:40 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 05:31:45 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Tue, 24 Nov 2026 05:31:45 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 24 Nov 2026 05:31:45 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 05:31:45 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 05:31:45 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:31:46 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Tue, 24 Nov 2026 05:31:46 GMT
ENV JOOMLA_VERSION=6.2.0
# Tue, 24 Nov 2026 05:31:46 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Tue, 24 Nov 2026 05:31:46 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Tue, 24 Nov 2026 05:31:53 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:31:53 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:31:54 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 05:31:54 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:31:54 GMT
COPY makedb.php /makedb.php # buildkit
# Tue, 24 Nov 2026 05:31:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:31:54 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:17:29 GMT
ENV JOOMLA_XDEBUG_CLIENT_HOST=host.docker.internal
# Tue, 24 Nov 2026 06:17:29 GMT
ENV JOOMLA_XDEBUG_CLIENT_PORT=9003
# Tue, 24 Nov 2026 06:17:29 GMT
ENV XDEBUG_MODE=develop,debug
# Tue, 24 Nov 2026 06:17:29 GMT
ARG COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar
# Tue, 24 Nov 2026 06:17:29 GMT
ARG COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6
# Tue, 24 Nov 2026 06:17:29 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 06:17:29 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 06:17:29 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		openssh-client 		patch 		unzip 		zip 		nodejs 		python3 		make 		g++ 		jq 		rsync 		less 		nano; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		npm; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-install -j "$(nproc)" 		pcntl 		sockets; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$COMPOSER_URL" --output /usr/local/bin/composer; 	printf '%s *%s\n' "$COMPOSER_SHA256" /usr/local/bin/composer | sha256sum -c -; 	chmod 0755 /usr/local/bin/composer; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" xdebug/xdebug:3.5.3; 	npm_config_cache=/tmp/joomla-npm npm install --global --prefix /usr/local --no-audit --no-fund --engine-strict npm@11.21.1; 	hash -r; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:17:30 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ALL' 		'display_errors = On' 		'display_startup_errors = On' 		'ignore_repeated_errors = Off' 		'opcache.validate_timestamps = 1' 		'opcache.revalidate_freq = 0' 		'opcache.jit = off' 		'opcache.jit_buffer_size = 0' 		> /usr/local/etc/php/conf.d/zz-joomla-development.ini; 	printf '%s\n' 		'xdebug.mode = develop,debug' 		'xdebug.start_with_request = trigger' 		'xdebug.start_upon_error = no' 		'xdebug.discover_client_host = 0' 		'xdebug.client_host = ${JOOMLA_XDEBUG_CLIENT_HOST}' 		'xdebug.client_port = ${JOOMLA_XDEBUG_CLIENT_PORT}' 		'xdebug.output_dir = /tmp' 		> /usr/local/etc/php/conf.d/zz-xdebug-settings.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri pcntl > /dev/null; 	php --ri sockets > /dev/null; 	php --ri xdebug > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	composer --version; 	npm --version; 	npx --version # buildkit
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b772583969f8d177751b4c2a61e4c8f2f88435b552dd66dc6ce6ee3905c63435`  
		Last Modified: Tue, 24 Nov 2026 04:20:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35cd4f67a76fd13bfa8485186e8450d1dc7403d46c69c269a064a08f940d6c83`  
		Last Modified: Tue, 24 Nov 2026 04:20:29 GMT  
		Size: 116.1 MB (116139628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca784223732308715dcd11d818211ec4abea55688cf1e386b8a2f8a1934b9ef`  
		Last Modified: Tue, 24 Nov 2026 04:20:25 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f93a33581535ca9d3f75a1511835c8d0528e07a999a118ad93bf5d073223b7`  
		Last Modified: Tue, 24 Nov 2026 04:27:51 GMT  
		Size: 4.5 MB (4477287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48232924fa2b406149b9c69619afa366d7618e4e1ad233e7f2b87173459040eb`  
		Last Modified: Tue, 24 Nov 2026 04:27:50 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c23ee6c538be6a796617ff17e20360a923985f63186934a51c2c7fc216d0156`  
		Last Modified: Tue, 24 Nov 2026 04:27:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9d3f293731238233290259dbd8ec7f000116ebd73872903476c37b77d586a3`  
		Last Modified: Tue, 24 Nov 2026 04:27:51 GMT  
		Size: 12.8 MB (12848244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71498012e5d85c3d2b9b2ba87efb54d6e793683cd616f9901463b2f4fb8a64b6`  
		Last Modified: Tue, 24 Nov 2026 04:27:51 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc021fae4b70f2c97c0ce0357703fcac2fbbbaf8939166f02b705f5dd489e30`  
		Last Modified: Tue, 24 Nov 2026 04:27:52 GMT  
		Size: 12.1 MB (12051596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18056a76fbe6e66e531eeefb5ef5f2aae66a835f0d120e30f8074d5a103e0bab`  
		Last Modified: Tue, 24 Nov 2026 04:27:52 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627ee6e86007f139a596c3de08e36cdb5136313372d065a27491e764c0e6c3fa`  
		Last Modified: Tue, 24 Nov 2026 04:27:52 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501972212ae6a740ee58e41744da59b8885120168b865dcfe760dc364eacb89e`  
		Last Modified: Tue, 24 Nov 2026 04:27:53 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b8a1f446b72b6a9c8ec0db28a1bd08103da5b28689c857cc06c3b420e03fa9`  
		Last Modified: Tue, 24 Nov 2026 04:27:53 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f19f84ebc659fcce604857c62a4898ddb8dd8c9e91ffafd641e37ad6ef9020`  
		Last Modified: Tue, 24 Nov 2026 05:32:05 GMT  
		Size: 54.2 MB (54204882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e0dd4e9a88895accb8d3aa2f3f24af1598052225051bdf464da27f523deb5c`  
		Last Modified: Tue, 24 Nov 2026 05:32:03 GMT  
		Size: 19.4 KB (19402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c377ee762e3a4a3fde9d648e2519bcfbfd481b8effc33489e1a7bf341d57b40`  
		Last Modified: Tue, 24 Nov 2026 05:32:04 GMT  
		Size: 28.6 MB (28580884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2778ffdde1fb9e93e8d43f36e83e918adb9bb7ca70faa386cc3c74c72b49a0`  
		Last Modified: Tue, 24 Nov 2026 05:32:03 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1aa7317db265fcc83c6bca82d5b9eab09689a597c8e1bc2d22f74654a23fbe`  
		Last Modified: Tue, 24 Nov 2026 05:32:04 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a5bf3b22bc7484339d48448b8dfb892f6cbdc9496f6f5d4d1793945a00873cd`  
		Last Modified: Tue, 24 Nov 2026 06:17:42 GMT  
		Size: 61.5 MB (61532274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba8d016b3533121a9a30bd01abb044efc0f5b8f65ed1903f342a72b986b45179`  
		Last Modified: Tue, 24 Nov 2026 06:17:40 GMT  
		Size: 512.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-apache-dev` - unknown; unknown

```console
$ docker pull joomla@sha256:ffb9428ad5ad2232dabac75c80026770cc6c179bdf76b6a4a2c3888c2639a7ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1e85a4e27c717d6398617a438982884e843f474dc5fe8f61d78a4b1f7134a1a`

```dockerfile
```

-	Layers:
	-	`sha256:3b5879f8877f851fa8e0e65a13e629e0f35045cd9680b6ba44e8a230983d4b88`  
		Last Modified: Tue, 24 Nov 2026 06:17:40 GMT  
		Size: 30.8 KB (30794 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-apache-dev` - linux; ppc64le

```console
$ docker pull joomla@sha256:42c00c37be065179bf8f933edf98e31182e20f79f78adc16ff593251b06315c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.4 MB (325379581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:560a535222ed12127a68d8586f6349769498d5f47b13594a8d4dcbe6b61aa2bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:51:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:58:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:58:06 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_VERSION=8.3.37
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Thu, 19 Nov 2026 15:48:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:48:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:53:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 15:53:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:53:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 15:53:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:53:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:53:16 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 15:53:16 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:53:17 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:53:17 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 15:53:17 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 18:35:09 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 18:35:09 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 18:35:09 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 18:35:09 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 18:35:09 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 18:35:11 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 18:35:11 GMT
ENV JOOMLA_VERSION=6.2.0
# Thu, 19 Nov 2026 18:35:11 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 18:35:11 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Thu, 19 Nov 2026 18:35:28 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 18:35:28 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 18:35:29 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 18:35:30 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 18:35:30 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 18:35:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 18:35:30 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 20:35:24 GMT
ENV JOOMLA_XDEBUG_CLIENT_HOST=host.docker.internal
# Thu, 19 Nov 2026 20:35:24 GMT
ENV JOOMLA_XDEBUG_CLIENT_PORT=9003
# Thu, 19 Nov 2026 20:35:24 GMT
ENV XDEBUG_MODE=develop,debug
# Thu, 19 Nov 2026 20:35:24 GMT
ARG COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar
# Thu, 19 Nov 2026 20:35:24 GMT
ARG COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6
# Thu, 19 Nov 2026 20:35:24 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 20:35:24 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 20:35:24 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		openssh-client 		patch 		unzip 		zip 		nodejs 		python3 		make 		g++ 		jq 		rsync 		less 		nano; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		npm; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-install -j "$(nproc)" 		pcntl 		sockets; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$COMPOSER_URL" --output /usr/local/bin/composer; 	printf '%s *%s\n' "$COMPOSER_SHA256" /usr/local/bin/composer | sha256sum -c -; 	chmod 0755 /usr/local/bin/composer; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" xdebug/xdebug:3.5.3; 	npm_config_cache=/tmp/joomla-npm npm install --global --prefix /usr/local --no-audit --no-fund --engine-strict npm@11.21.1; 	hash -r; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 20:35:27 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ALL' 		'display_errors = On' 		'display_startup_errors = On' 		'ignore_repeated_errors = Off' 		'opcache.validate_timestamps = 1' 		'opcache.revalidate_freq = 0' 		'opcache.jit = off' 		'opcache.jit_buffer_size = 0' 		> /usr/local/etc/php/conf.d/zz-joomla-development.ini; 	printf '%s\n' 		'xdebug.mode = develop,debug' 		'xdebug.start_with_request = trigger' 		'xdebug.start_upon_error = no' 		'xdebug.discover_client_host = 0' 		'xdebug.client_host = ${JOOMLA_XDEBUG_CLIENT_HOST}' 		'xdebug.client_port = ${JOOMLA_XDEBUG_CLIENT_PORT}' 		'xdebug.output_dir = /tmp' 		> /usr/local/etc/php/conf.d/zz-xdebug-settings.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri pcntl > /dev/null; 	php --ri sockets > /dev/null; 	php --ri xdebug > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	composer --version; 	npm --version; 	npx --version # buildkit
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
	-	`sha256:616500097e552e120f10ca4404d34d9cfb120b7c02c3524f4ce28cf1a60fe39b`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 4.9 MB (4900783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6e13085ae5c79bb1881e041bffc310a0ee54a9166ceccd83aec6c5b748d5f4`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0899b50a51dc19e2e0faa872575140226b0a41d13820bc6d87dc3abc777b7c8`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276e01e9c997c968231ae271acb6930dca025fd6fc09db9ba49988f3d5580cdf`  
		Last Modified: Thu, 19 Nov 2026 15:53:46 GMT  
		Size: 12.9 MB (12863467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc300a8202e6975d2f270420e44f32ac6346ed3b5f0ddcc69e38a9de38bfd0c`  
		Last Modified: Thu, 19 Nov 2026 15:53:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46ca0c0d707b1ac1d1776a211c4692ca07187f73cd0b258c2bb6d3666d7385a`  
		Last Modified: Thu, 19 Nov 2026 15:53:46 GMT  
		Size: 14.7 MB (14716001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600502d224cb2fc418a2e6d0376c3410ec1e05dc4523ab06e36625a248a8fbd0`  
		Last Modified: Thu, 19 Nov 2026 15:53:45 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c4724c020466e1e09ddafdf2ef879051e80a00b477a4cf30c8fb3f1695fc3d1`  
		Last Modified: Thu, 19 Nov 2026 15:53:46 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e772f787a9f20a241b044d56b30be25c3e501c4b20e697097123ff68aa9d4d2`  
		Last Modified: Thu, 19 Nov 2026 15:53:46 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a96090fe5b320414b3f97affc1dfb7b68745f6f0b58874a10640d0e94f33beb`  
		Last Modified: Thu, 19 Nov 2026 15:53:47 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7472e8abeee5a03451ac739c76726a5683f8d30f872ada386b9f00d0c60cafd`  
		Last Modified: Thu, 19 Nov 2026 18:35:51 GMT  
		Size: 55.5 MB (55522999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8094feabfaed8a87c8d0cceaa6cfd77590ccff11e9ec700ee449bbc7dca060`  
		Last Modified: Thu, 19 Nov 2026 18:35:48 GMT  
		Size: 19.4 KB (19410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed28c831976f05e10241030f8799f1ea23a225c957fa97894a0aa15223b4ae0d`  
		Last Modified: Thu, 19 Nov 2026 18:35:50 GMT  
		Size: 28.6 MB (28581843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e212df37a4bbc56547409b1ba9e7cd286da264e4194cfefdb435f77e836071c2`  
		Last Modified: Thu, 19 Nov 2026 18:35:49 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bad36333dba0c5004f666a9200bd58d43d426b4f9805463de74f9fc6a7c1958`  
		Last Modified: Thu, 19 Nov 2026 18:35:50 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f292315771508063cc0c80d07026ec72b709a249a01724d637ff19ad743c1d9`  
		Last Modified: Thu, 19 Nov 2026 20:35:55 GMT  
		Size: 65.5 MB (65483067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1314b30649835a7729a5ed3c414b9fe27d5839d1c04c1b425e71ffa819029f5e`  
		Last Modified: Thu, 19 Nov 2026 20:35:53 GMT  
		Size: 516.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-apache-dev` - unknown; unknown

```console
$ docker pull joomla@sha256:b0f60eab388437ce92b5a4e8d736d2d5da097c96c5b2de1e6291ef61a858135a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 KB (30874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9fbe4ca2a435c82686de38c89c90fd5b56f205026990422f30d692665fc63a`

```dockerfile
```

-	Layers:
	-	`sha256:2d3b78923a07f92b7e8a3b685abe4a5eca29047387d34ddcf67d3dc7abb0cb50`  
		Last Modified: Thu, 19 Nov 2026 20:35:53 GMT  
		Size: 30.9 KB (30874 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.3-apache-dev` - linux; s390x

```console
$ docker pull joomla@sha256:143154aaa9faa3c8c0d4c62b386ca486599691efc3b98b1d846bd0185b9edd0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.9 MB (293947697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e17edbe93701b12de22c394f48e3e51cfbb6af1555cb06e6782204304c30bd27`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:44 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 24 Nov 2026 04:18:44 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 24 Nov 2026 04:18:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 24 Nov 2026 04:18:50 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 24 Nov 2026 04:18:50 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:18:50 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:18:50 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:30:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:30:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:32:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:32:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:32:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:32:51 GMT
STOPSIGNAL SIGWINCH
# Tue, 24 Nov 2026 04:32:51 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:32:51 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:32:51 GMT
EXPOSE map[80/tcp:{}]
# Tue, 24 Nov 2026 04:32:51 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 05:52:01 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Tue, 24 Nov 2026 05:52:01 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 24 Nov 2026 05:52:01 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 05:52:01 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 05:52:01 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:52:01 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Tue, 24 Nov 2026 05:52:01 GMT
ENV JOOMLA_VERSION=6.2.0
# Tue, 24 Nov 2026 05:52:01 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
# Tue, 24 Nov 2026 05:52:01 GMT
ENV JOOMLA_SHA512=5d61beed1b2ced52ee96b312d327e8f3616cdd93e5d4a759bef9bc0cee384232a21e3b85e15f659edcdb83fb5ea9969cd009722eeb6151303cc5e6c9d6dc26bc
# Tue, 24 Nov 2026 05:52:08 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/6.2.0/Joomla_6.2.0-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 05:52:08 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 05:52:08 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 05:52:08 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 05:52:08 GMT
COPY makedb.php /makedb.php # buildkit
# Tue, 24 Nov 2026 05:52:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 05:52:08 GMT
CMD ["apache2-foreground"]
# Tue, 24 Nov 2026 06:16:46 GMT
ENV JOOMLA_XDEBUG_CLIENT_HOST=host.docker.internal
# Tue, 24 Nov 2026 06:16:46 GMT
ENV JOOMLA_XDEBUG_CLIENT_PORT=9003
# Tue, 24 Nov 2026 06:16:46 GMT
ENV XDEBUG_MODE=develop,debug
# Tue, 24 Nov 2026 06:16:46 GMT
ARG COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar
# Tue, 24 Nov 2026 06:16:46 GMT
ARG COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6
# Tue, 24 Nov 2026 06:16:46 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 06:16:46 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 06:16:46 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		git 		openssh-client 		patch 		unzip 		zip 		nodejs 		python3 		make 		g++ 		jq 		rsync 		less 		nano; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		npm; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-install -j "$(nproc)" 		pcntl 		sockets; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$COMPOSER_URL" --output /usr/local/bin/composer; 	printf '%s *%s\n' "$COMPOSER_SHA256" /usr/local/bin/composer | sha256sum -c -; 	chmod 0755 /usr/local/bin/composer; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" xdebug/xdebug:3.5.3; 	npm_config_cache=/tmp/joomla-npm npm install --global --prefix /usr/local --no-audit --no-fund --engine-strict npm@11.21.1; 	hash -r; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 06:16:47 GMT
# ARGS: COMPOSER_URL=https://getcomposer.org/download/2.10.3/composer.phar COMPOSER_SHA256=7a2d379d5b8ffdaa028580ef26494c36d2feef4b178d3dd1473a4dbc5e17c8d6 PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ALL' 		'display_errors = On' 		'display_startup_errors = On' 		'ignore_repeated_errors = Off' 		'opcache.validate_timestamps = 1' 		'opcache.revalidate_freq = 0' 		'opcache.jit = off' 		'opcache.jit_buffer_size = 0' 		> /usr/local/etc/php/conf.d/zz-joomla-development.ini; 	printf '%s\n' 		'xdebug.mode = develop,debug' 		'xdebug.start_with_request = trigger' 		'xdebug.start_upon_error = no' 		'xdebug.discover_client_host = 0' 		'xdebug.client_host = ${JOOMLA_XDEBUG_CLIENT_HOST}' 		'xdebug.client_port = ${JOOMLA_XDEBUG_CLIENT_PORT}' 		'xdebug.output_dir = /tmp' 		> /usr/local/etc/php/conf.d/zz-xdebug-settings.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri pcntl > /dev/null; 	php --ri sockets > /dev/null; 	php --ri xdebug > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	composer --version; 	npm --version; 	npx --version # buildkit
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6bfd27867ac5802021565697ab0897467504e4a65b9f929f99273bacf2f6bf`  
		Last Modified: Tue, 24 Nov 2026 04:21:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e3c3f3ff419c28570f18be04fd665c1977caea6eddfc5b8ef7963c019fdb802`  
		Last Modified: Tue, 24 Nov 2026 04:21:59 GMT  
		Size: 92.6 MB (92570215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1c923551b2af2cedf706d0dc449049ff776b90aa00186377df3c9f6c6db0f79`  
		Last Modified: Tue, 24 Nov 2026 04:21:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93fe6077739cd3fcf30c6873d77a8bef92798ae1c9bc959ad6fc9ff10110beee`  
		Last Modified: Tue, 24 Nov 2026 04:21:57 GMT  
		Size: 4.3 MB (4341583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3456861bf2446284ee35f943aa3017703cf9ae83d8a1f81d05f840e4e911d6e8`  
		Last Modified: Tue, 24 Nov 2026 04:21:57 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:426d13257f977758da45c56f5237901ff6f1f12efd9abd1bf56c0aed00f91a36`  
		Last Modified: Tue, 24 Nov 2026 04:21:58 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc05b5c6553a8b4c899a2598c2b5fc92ed206afdd2e082dfd6f0fb5d2ae02014`  
		Last Modified: Tue, 24 Nov 2026 04:33:06 GMT  
		Size: 12.8 MB (12847571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b761a9fb9810d8c4901faa2fb9727070570aa04fdad5728a67038f9e5b720f98`  
		Last Modified: Tue, 24 Nov 2026 04:33:06 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bebd2d71424b5ca5c88a3c383981abe4d0bbdbcda542f8429fa66548210e757`  
		Last Modified: Tue, 24 Nov 2026 04:33:06 GMT  
		Size: 11.6 MB (11623320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0672fc035f4f9d201783a8cd1c7eae0a12c02d86ebcf7508b9b3e7052f1e5175`  
		Last Modified: Tue, 24 Nov 2026 04:33:06 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5064e4feeb63f111f468e36808a648029a94bf1ddc7f2711d68d53f2ffebe070`  
		Last Modified: Tue, 24 Nov 2026 04:33:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089ea80a871829b89ab85196997ad0dd56cc4cebbbe81b673f7801ee98d1d2fd`  
		Last Modified: Tue, 24 Nov 2026 04:33:07 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd2142cfe75dd7dfd977d65144a823bfe7459c5f82d70d073b3e4953b87bd97`  
		Last Modified: Tue, 24 Nov 2026 04:33:07 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354c089af302a2291d3102df7db98c49bd1f813bce30592fc1ba7378984da48c`  
		Last Modified: Tue, 24 Nov 2026 05:52:23 GMT  
		Size: 53.4 MB (53397002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4655ab5ab1f2e4e18f7d585cd1e52d817be61f6c397b435163be451437873442`  
		Last Modified: Tue, 24 Nov 2026 05:52:21 GMT  
		Size: 19.4 KB (19401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe20597d7c5e066a07bbcec8b0f1a595b98a5e60f459cc8b750e93701c7756f8`  
		Last Modified: Tue, 24 Nov 2026 05:52:22 GMT  
		Size: 28.6 MB (28578753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca687db592f1b29dda14bbc4c621d3256f90ab5852a0995769ab99dbc9e39092`  
		Last Modified: Tue, 24 Nov 2026 05:52:21 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e54b6814d9749618defd3cffc5c700e47e4fe34f1c57a6da04c71ba8b2c40dc4`  
		Last Modified: Tue, 24 Nov 2026 05:52:22 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec8af616807101956e3c36a518d534545ab56e92cd43a15bc61d6847f650465a`  
		Last Modified: Tue, 24 Nov 2026 06:17:03 GMT  
		Size: 60.6 MB (60646793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a778e7e11ae60f6192e9151d8476499f5b3719b38ee58643cb18e139e6c93bf3`  
		Last Modified: Tue, 24 Nov 2026 06:17:02 GMT  
		Size: 512.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.3-apache-dev` - unknown; unknown

```console
$ docker pull joomla@sha256:fac4251a8038ef046636248716ed6e05cc82e3145e9c045522c2f8d2c62e5516
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 KB (30825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d069e4bc2450280dd70d85c625781ab524e2d22e8b93f0cefb3015e40f81bfc`

```dockerfile
```

-	Layers:
	-	`sha256:a35e429a2db1e4ed721497b0d10d40e9c87af2067542742212fb36ec122d7f46`  
		Last Modified: Tue, 24 Nov 2026 06:17:02 GMT  
		Size: 30.8 KB (30825 bytes)  
		MIME: application/vnd.in-toto+json
