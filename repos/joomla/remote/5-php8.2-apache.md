## `joomla:5-php8.2-apache`

```console
$ docker pull joomla@sha256:9251ee138ae1b23813df526fa3e6387a2e9348f67621af30512c22a46ab69526
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

### `joomla:5-php8.2-apache` - linux; amd64

```console
$ docker pull joomla@sha256:8e9f977a1827a87aad34b3cb88de4f38b8c313929b67a802d514c45822f5c1e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257727772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b5487e271c78b75cdcc0cba5ee52a1a515818ed1d8c173358e4ced4872516b1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:27:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:28:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:28:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:28:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:28:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:28:12 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:28:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 14:28:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 14:28:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 14:28:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 14:28:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:28:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:28:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:28:17 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 19 Nov 2026 14:28:17 GMT
ENV PHP_VERSION=8.2.36
# Thu, 19 Nov 2026 14:28:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.36.tar.xz.asc
# Thu, 19 Nov 2026 14:28:17 GMT
ENV PHP_SHA256=df50a00d2b453096608bf2bd98a9fab9a3df8678a77b93011b65c3cfe9a018fa
# Thu, 19 Nov 2026 14:28:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:28:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:30:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:30:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:30:44 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:30:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:30:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:30:44 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 14:30:44 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:30:44 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:30:44 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 14:30:44 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 15:06:05 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:06:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:06:05 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:06:05 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:06:05 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:06:06 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 15:06:06 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:06:06 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:06:06 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:06:11 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:06:11 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:06:11 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:06:11 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:06:11 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:06:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:06:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f3580f310266b269c714b1d5eef0b7aac485429479a880229ac2ee890ef5993`  
		Last Modified: Thu, 19 Nov 2026 14:31:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552a8128db9ac4b5c01fd0bbd07ba422039cc4953dc08a979d6abcd866d90bda`  
		Last Modified: Thu, 19 Nov 2026 14:31:09 GMT  
		Size: 117.8 MB (117838034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3838f6ad921138bf3812ba42bc4cf2a168739190daf45744e89a4a5ec578947`  
		Last Modified: Thu, 19 Nov 2026 14:31:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dbfea18d6d252c82de41cbad9e0ca1059e33c7091a393246402a05d17455d10`  
		Last Modified: Thu, 19 Nov 2026 14:31:05 GMT  
		Size: 4.2 MB (4244015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ba9fcd3b43e8c0c22e4a85de7ff79f0367b5d8893db139d021ca6693909ed1`  
		Last Modified: Thu, 19 Nov 2026 14:31:05 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92d603c361d98666716c2b3ed2e1804d1c6fb58c80a539c181ab12f99194f73`  
		Last Modified: Thu, 19 Nov 2026 14:31:06 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0caddd16464da28e81950e3999da85df7ef3c7af16f69b8a3824fc10f43d29ce`  
		Last Modified: Thu, 19 Nov 2026 14:31:07 GMT  
		Size: 12.4 MB (12396212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04fcd647e069a3bc14d55dcba823a7fc66216f0538b134f1dcce2f7332a94814`  
		Last Modified: Thu, 19 Nov 2026 14:31:07 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9020c3dc3ceda0b7c5580cc9bf28c7ab42250c24c2382292096f5db18e442ee`  
		Last Modified: Thu, 19 Nov 2026 14:31:08 GMT  
		Size: 11.6 MB (11577061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0feb7d81b5c6cd0d7a3c43c57647cf3e29bf32b17622895d154f8483e529aa92`  
		Last Modified: Thu, 19 Nov 2026 14:31:09 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ed07a4fcb2d4737bd1553dcb49abcfd4b877f6a2956b7f3a7e139644d0ca6a3`  
		Last Modified: Thu, 19 Nov 2026 14:31:09 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e1650e47729ba758f8ff64612009bbcd932596202425e749ddcef3d7b35aa1`  
		Last Modified: Thu, 19 Nov 2026 14:31:10 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdaaccaea3d2fc784e6c4f8ebdab600fa3c317a171cfe010324a7347d8896a65`  
		Last Modified: Thu, 19 Nov 2026 14:31:10 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e1d03a44e02e9bb065bc6e6bdefaf05a93c6334045c7e4b58726a34d33acae`  
		Last Modified: Thu, 19 Nov 2026 15:06:22 GMT  
		Size: 53.9 MB (53916697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73de3d487407fb7a9d516da37e26026d21ecfa709d3aaf79599d1140c55f0d2`  
		Last Modified: Thu, 19 Nov 2026 15:06:20 GMT  
		Size: 19.4 KB (19409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb97bfd334f7c2e8f1930114f10bf35ef7595dd63077e9fce6d703095fc830de`  
		Last Modified: Thu, 19 Nov 2026 15:06:21 GMT  
		Size: 27.9 MB (27867657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3de8020657e603ace041839d3197bda3c4eeffed30b783339e0e5ee133eca8`  
		Last Modified: Thu, 19 Nov 2026 15:06:04 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c597468d38f93f1d94491aa87c756b26abaf5265afd404e3aa8d63dcb02daa13`  
		Last Modified: Thu, 19 Nov 2026 15:06:05 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:5857bd3d53705cfc6e11bcd4c86001c1bdee7fc72cae68a61de6c04d4882ff23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 KB (52776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b2f4f9982f7ba2b61211c96abdd9d6c0d5cf3aa20c67f3518add844e2d381a7`

```dockerfile
```

-	Layers:
	-	`sha256:98d28ac5e2a2c37ca47648dd951cb42f686badb5e62cc84db641fb38b6efa001`  
		Last Modified: Thu, 19 Nov 2026 15:06:20 GMT  
		Size: 52.8 KB (52776 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; arm variant v5

```console
$ docker pull joomla@sha256:d82b3d6123987dcbc47603e0d26fcc81e2a35d809a05ffca86c1ca3db090fd6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230198138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3235414a43cafdea2e37af9193796938fc7ebfdc503b57d0bc9cf9f5f19b13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:24:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:24:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:24:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:24:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:24:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:24:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:24:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 14:25:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 14:25:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 14:25:03 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 14:25:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:25:03 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 19 Nov 2026 14:25:03 GMT
ENV PHP_VERSION=8.2.36
# Thu, 19 Nov 2026 14:25:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.36.tar.xz.asc
# Thu, 19 Nov 2026 14:25:03 GMT
ENV PHP_SHA256=df50a00d2b453096608bf2bd98a9fab9a3df8678a77b93011b65c3cfe9a018fa
# Thu, 19 Nov 2026 14:33:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:33:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:36:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:36:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:36:05 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:36:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:36:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:36:05 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 14:36:05 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:36:05 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:36:05 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 14:36:05 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 15:29:51 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:29:51 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:29:51 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:29:51 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:29:51 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:29:52 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 15:29:52 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:29:52 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:29:52 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:30:05 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:30:05 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:30:05 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:30:05 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:30:05 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:30:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:30:05 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b706d286865d2dba77701c8e494b92cd248d55340178c26225e8ebcc9d389630`  
		Last Modified: Thu, 19 Nov 2026 14:29:00 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac123dadc226957b154781dd9bc598298278a8af012b1d9356974274d4ac269`  
		Last Modified: Thu, 19 Nov 2026 14:29:03 GMT  
		Size: 94.9 MB (94883579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c03a4a40a2facfac795ecd1313fd06661320134c64c3467438e52524eed4929`  
		Last Modified: Thu, 19 Nov 2026 14:28:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5423bf17c70c3f1c480a7f185487c48105be2b08c416c647f529cecd3f4e58f4`  
		Last Modified: Thu, 19 Nov 2026 14:29:01 GMT  
		Size: 4.1 MB (4099954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f322214dd075be8645a71a17462ccc96df43e23e8e1e670a3212923f4530849`  
		Last Modified: Thu, 19 Nov 2026 14:29:01 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d846e5a6b018dde904439bc13fe74c4ee86a6ff528b9842ab4ff45387bdd525a`  
		Last Modified: Thu, 19 Nov 2026 14:29:02 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2eea5ebb42c29162991699daa84372c287a5da6e02dae92d5433369b21f71b5`  
		Last Modified: Thu, 19 Nov 2026 14:36:16 GMT  
		Size: 12.4 MB (12402005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57842cfdafaad352294861302e7124523eb33954d3d12390ff10581ea48a82d5`  
		Last Modified: Thu, 19 Nov 2026 14:36:05 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c07df86d6fe3e2ee9d6fc724dad8dc01318cf37259b8536e871d55378a914d`  
		Last Modified: Thu, 19 Nov 2026 14:36:16 GMT  
		Size: 10.5 MB (10466200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa1e7e0f6d1e9dfcb82e884fe1ef2124081005cbdb1013a5c539f54d2941896`  
		Last Modified: Thu, 19 Nov 2026 14:36:16 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4cb502ab7e8d4e02c08f2bd7a6f1ea302be2023cd5db81aaeb23206d078f288`  
		Last Modified: Thu, 19 Nov 2026 14:36:16 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc33b8c4a482a75514579fb0fde18a83ddc2b456fc53181d4754893fbf85b1e`  
		Last Modified: Thu, 19 Nov 2026 14:36:17 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65a7c5bec5317870018af31e7fa7843bb94e19bd53bca31edfe6b8be470a04f`  
		Last Modified: Thu, 19 Nov 2026 14:36:17 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b39d3d4a54fafa0b6b0d3fd4a82dab524ab7ffd4c2c21e80b53d97372aa7b7`  
		Last Modified: Thu, 19 Nov 2026 15:30:16 GMT  
		Size: 52.4 MB (52428111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272cf3a87407dff96974e271a8752a0448763890a78137fdf149d77d746f2593`  
		Last Modified: Thu, 19 Nov 2026 15:30:15 GMT  
		Size: 19.4 KB (19404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b8c8322466ec8d623c05419cb209fb473ff677fb8af0aab6d9017f37472d11`  
		Last Modified: Thu, 19 Nov 2026 15:30:16 GMT  
		Size: 27.9 MB (27866722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee17cb4e0d93551dda91338a3b7ff3045f1c34f9daee5c308a4e74d61285c55`  
		Last Modified: Thu, 19 Nov 2026 15:30:15 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60eb78874433ebf845802c535ce0e85b257f88ac1fec581ef3eda425ba52155`  
		Last Modified: Thu, 19 Nov 2026 15:30:16 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:f543bb00d12ea4282903bdd8aa3701d23b270cbe52a5f80e45f72d79cde9098c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 KB (52866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474956ebe707b9b77a144833870e9fa002dbc78634a39d5f983712c9fd7ce54a`

```dockerfile
```

-	Layers:
	-	`sha256:02a07f4c015f7911c7984ba125907fa332297e8382bbb6f85f0a5285a8ebd326`  
		Last Modified: Thu, 19 Nov 2026 15:30:14 GMT  
		Size: 52.9 KB (52866 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; arm variant v7

```console
$ docker pull joomla@sha256:67d4059c65270f30103fba01cc74b257eeb90f7a0fb6bbbc09483233cfb0116b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.8 MB (216766452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5ed4dcf6d6b7ed36e2231a5c68aac6f539045ca564549873745484f0725afb1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:24:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:24:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:24:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:24:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:24:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:24:41 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:24:41 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 14:43:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 14:43:22 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 14:43:23 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 14:43:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:43:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:43:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:43:23 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 19 Nov 2026 14:43:23 GMT
ENV PHP_VERSION=8.2.36
# Thu, 19 Nov 2026 14:43:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.36.tar.xz.asc
# Thu, 19 Nov 2026 14:43:23 GMT
ENV PHP_SHA256=df50a00d2b453096608bf2bd98a9fab9a3df8678a77b93011b65c3cfe9a018fa
# Thu, 19 Nov 2026 14:43:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:43:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:46:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:46:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:46:06 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:46:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:46:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:46:06 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 14:46:06 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:46:06 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:46:06 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 14:46:06 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 15:11:19 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:11:19 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:11:19 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:11:19 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:11:19 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:11:20 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 15:11:20 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:11:20 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:11:20 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:11:30 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:11:30 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:11:30 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:11:30 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:11:30 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:11:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:11:30 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637fe6f4de37685de100e9040075fcae568d150a3b4fec5bcf423dbc9dcf5f5b`  
		Last Modified: Thu, 19 Nov 2026 14:27:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2af462022712ae77c346de866278428676ad3726e1b942e3251d1b82aaede460`  
		Last Modified: Thu, 19 Nov 2026 14:28:00 GMT  
		Size: 86.3 MB (86256841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe71bcdee1fb252ea3032ac6c6946a058411d9dff4158c258bafb44ddf78f0d`  
		Last Modified: Thu, 19 Nov 2026 14:27:58 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e034eb97109a9cc4ad97f52157543df0f489189f828f5220df6548851658ed11`  
		Last Modified: Thu, 19 Nov 2026 14:46:16 GMT  
		Size: 3.8 MB (3776482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:220cde3ee12cd3fcdfed92c2dacd16cf620e77f08b953641911c0e4b9090194f`  
		Last Modified: Thu, 19 Nov 2026 14:46:16 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981d4172d14423502524fb5563b31cd91f8569c97bb408e349369c268601db0a`  
		Last Modified: Thu, 19 Nov 2026 14:46:16 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abc672599f587f1e7258f2c0725502cf57e4d7d782ddefa9abadbf882a4c1fb`  
		Last Modified: Thu, 19 Nov 2026 14:46:17 GMT  
		Size: 12.4 MB (12393881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b102aa3ee3683b60d50b151788a47057e3963267fe5809a799fad0f5103a8b51`  
		Last Modified: Thu, 19 Nov 2026 14:46:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f34ee4765f73c632177c66f3eec9be2982c7af21ee21ba8068b7fc7054f7df`  
		Last Modified: Thu, 19 Nov 2026 14:46:17 GMT  
		Size: 9.9 MB (9934069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a637cd8be4ea711d9dc89860bec4a7f64214892bc4103ffdac75da8d66dc4a09`  
		Last Modified: Thu, 19 Nov 2026 14:46:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5cf38cf90e1d3a8b8febe53c2c9aea553a6ca5028147f88826b1833b874b589`  
		Last Modified: Thu, 19 Nov 2026 14:46:18 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26548d0bce58832a81c501233193410a8a19ef3d052e315bed123cf8de0246e5`  
		Last Modified: Thu, 19 Nov 2026 14:46:18 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a624613d691edbff6af549a4d441d384622034a346f669f6f0a446720aa5ee6`  
		Last Modified: Thu, 19 Nov 2026 14:46:19 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4a95d607e0709fd8ed3b9d09af527e7fc2c5332cf0a14a8257b08d9f9f1302c`  
		Last Modified: Thu, 19 Nov 2026 15:11:41 GMT  
		Size: 50.2 MB (50233426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb46481414e544930303d778373d5ef5313c8d4d063c32f5748c585647ecc6bf`  
		Last Modified: Thu, 19 Nov 2026 15:11:39 GMT  
		Size: 19.4 KB (19418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7aaa2861d08f0af3ee247828661f71767fdc05758ea030029750d55ddd264d`  
		Last Modified: Thu, 19 Nov 2026 15:11:40 GMT  
		Size: 27.9 MB (27866857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95462cf0c82c24446f1e6b9becc30cf61160014680390175e4d163a0a80aa079`  
		Last Modified: Thu, 19 Nov 2026 15:11:39 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d334a582b6760588f8be2a65e38d0a45666d45dd9709d3c75c44631e3db65d`  
		Last Modified: Thu, 19 Nov 2026 15:11:40 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:6d1f4ce9c225311a72c9955f1043af4cd39ba350648b8f94a4cf20ad21a3835d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 KB (52860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052f9ad40bd90e327d388ee6ffe82b7cf2906b271ddf4e81fc4108ccb39fb02f`

```dockerfile
```

-	Layers:
	-	`sha256:4d5e2af0b91c8c2565d3e0e890fe41518f493d43fb5d202efe4ea9cb83b0500c`  
		Last Modified: Thu, 19 Nov 2026 15:11:38 GMT  
		Size: 52.9 KB (52860 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:a23ba121f6182dd7009e14eb3cd8e9b049c300f0f0948fb962dbf4052f8a919b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249299887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3465d164c21a6e47274e1d9323cfbb71f64bb0a9ab1eb05b367cd69a2133d8e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:43:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:43:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:43:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:43:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:43:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:43:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:43:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 14:43:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 14:43:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 14:43:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 14:43:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:43:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:43:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:43:44 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 19 Nov 2026 14:43:44 GMT
ENV PHP_VERSION=8.2.36
# Thu, 19 Nov 2026 14:43:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.36.tar.xz.asc
# Thu, 19 Nov 2026 14:43:44 GMT
ENV PHP_SHA256=df50a00d2b453096608bf2bd98a9fab9a3df8678a77b93011b65c3cfe9a018fa
# Thu, 19 Nov 2026 14:43:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:43:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:47:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:47:19 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:47:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:47:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:47:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:47:19 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 14:47:19 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:47:19 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:47:19 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 14:47:19 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 15:25:05 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:25:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:25:05 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:25:05 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:25:05 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:25:05 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 15:25:05 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:25:05 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:25:05 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:25:12 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:25:12 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:25:13 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:25:13 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:25:13 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:25:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:25:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed0a975ee112c0473dc98ea720455f7900b65fa7a50c5240baa29d43cc7b58e`  
		Last Modified: Thu, 19 Nov 2026 14:47:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f5c8deac62b7bcfe8895b1a7608d52b4044a3c497d210ab8b664e42ff08ae7`  
		Last Modified: Thu, 19 Nov 2026 14:47:43 GMT  
		Size: 110.2 MB (110178510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d9130ed8b0ded5eb50add44d466f659af3cb49bb1f39669ba9379d3f6edcd9`  
		Last Modified: Thu, 19 Nov 2026 14:47:40 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e3cd2478b5d6157e878b54ff89466ab3b76ff9673605bb3c262b2a90a593c6`  
		Last Modified: Thu, 19 Nov 2026 14:47:40 GMT  
		Size: 4.3 MB (4321096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1363f51e90470d2f32a3f0a598867c13ef0aaf97b72bf43bf4587ab380ecf0b`  
		Last Modified: Thu, 19 Nov 2026 14:47:41 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1821e282738e2d99ace7774070d804819b8a131b777fc596b947c3e1f1c251e7`  
		Last Modified: Thu, 19 Nov 2026 14:47:41 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1269e25d025521840d5285c65f0ad2f3ece61e2ccc910c562c4c1b868e22b4c1`  
		Last Modified: Thu, 19 Nov 2026 14:47:42 GMT  
		Size: 12.4 MB (12395851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dea618341d4f1ae1150d6eef03a30e835376aa48c9cb7acf929a0e88c77f889e`  
		Last Modified: Thu, 19 Nov 2026 14:47:42 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e96d1399db54b43751d6f3d55cd223ef85981636e9d84e8718bd0b8b67d1f81`  
		Last Modified: Thu, 19 Nov 2026 14:47:43 GMT  
		Size: 11.6 MB (11601694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d57342d165564fc788a378cb33b9c14139855eab9ece197ae31241bf45e3504`  
		Last Modified: Thu, 19 Nov 2026 14:47:43 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:851a50d3a33914fb77101162adbbff191d00206215c8f08581d12f8eb69bb762`  
		Last Modified: Thu, 19 Nov 2026 14:47:44 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029e6c18e668c5bd5946830b725150101bffc8ef4e07b2f5fce1e4cab2fb51fe`  
		Last Modified: Thu, 19 Nov 2026 14:47:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c53079927c1da9e494583d46b6c1228620086de50ca4885a07ae06a8088f2efe`  
		Last Modified: Thu, 19 Nov 2026 14:47:45 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80d80eb7b672ef56c53f903949bee849ee269afa23e0350761440a587d1da767`  
		Last Modified: Thu, 19 Nov 2026 15:25:24 GMT  
		Size: 52.7 MB (52687545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0c10091a372685bce9da22fc549bcd6027fea24e4a40013dc4e04e003c0a563`  
		Last Modified: Thu, 19 Nov 2026 15:25:22 GMT  
		Size: 19.4 KB (19408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f048a9a0682350cc54ab5e6ac6a2c00866b8f81b65c27fd58ed1455be77362b`  
		Last Modified: Thu, 19 Nov 2026 15:25:23 GMT  
		Size: 27.9 MB (27869193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a32f1ad9b5a3e1f341d94e3ee90b6c4481e9ab4c38232674b22a2cadcd9709`  
		Last Modified: Thu, 19 Nov 2026 15:25:22 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98baf55027611cc9285608cf86a14606d10fef59a05da859ef326a7eab9deaf`  
		Last Modified: Thu, 19 Nov 2026 15:25:23 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:9435e2671482006ab4723a2e2bd4dcdc6127695dead51e6607eac4bd33529e5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.9 KB (52898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8102f403c7586e664484f591bd4555c0c01d61bb53b7448bd439a0ad2b2a9405`

```dockerfile
```

-	Layers:
	-	`sha256:9bb11bdc180939164a4851c74fbde9088c8907964f00549d894c2b17cde4dfb9`  
		Last Modified: Thu, 19 Nov 2026 15:25:21 GMT  
		Size: 52.9 KB (52898 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; 386

```console
$ docker pull joomla@sha256:e9fd80d0af405ba46c97b326e2556e9a9de5062af3048c2f1c83cfe7b6738c8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258539083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c8c5bc4f836bec9c48a5ad7b99413bfc4e74f89eee5389440294f5bfaadd74b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:24:30 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:24:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:24:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:24:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:24:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:24:52 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:24:52 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 14:39:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 14:39:17 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 14:39:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 14:39:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:39:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:39:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:39:17 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 19 Nov 2026 14:39:17 GMT
ENV PHP_VERSION=8.2.36
# Thu, 19 Nov 2026 14:39:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.36.tar.xz.asc
# Thu, 19 Nov 2026 14:39:17 GMT
ENV PHP_SHA256=df50a00d2b453096608bf2bd98a9fab9a3df8678a77b93011b65c3cfe9a018fa
# Thu, 19 Nov 2026 14:39:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:39:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:42:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:42:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:42:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:42:14 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 14:42:14 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:14 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:42:14 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 14:42:14 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 15:06:09 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:06:09 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:06:09 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:06:09 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:06:09 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:06:10 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 15:06:10 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:06:10 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:06:10 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:06:18 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:06:18 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:06:18 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:06:18 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:06:18 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:06:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:06:18 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b600250aff219b0be45c7fefb54b76f9d5c1a7b25349581d72cf589c128e54e2`  
		Last Modified: Thu, 19 Nov 2026 14:28:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b349c09adb3c1f77247231b48ea63cc97d6147c0191b5308f86a982f700dcd1`  
		Last Modified: Thu, 19 Nov 2026 14:28:33 GMT  
		Size: 116.1 MB (116139534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c03a4a40a2facfac795ecd1313fd06661320134c64c3467438e52524eed4929`  
		Last Modified: Thu, 19 Nov 2026 14:28:30 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:632f9bf1dbdbe65b9ce6a5eed4555bed6f037998757c5725aa7a1056c80b5b84`  
		Last Modified: Thu, 19 Nov 2026 14:42:24 GMT  
		Size: 4.5 MB (4486549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353714daaf41df8e5b50d6d37d8f492e956a222fbc7477f30905ab04d4f99df5`  
		Last Modified: Thu, 19 Nov 2026 14:42:24 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72be17fce9e3a5a0682d9589bc4a6f43c1d78618dc4632b0521428ed83a7601e`  
		Last Modified: Thu, 19 Nov 2026 14:42:24 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:083d786f010ead2e052c86c6c0ca9460a34b6a021561f3c17edde3f705147e3d`  
		Last Modified: Thu, 19 Nov 2026 14:42:24 GMT  
		Size: 12.4 MB (12395220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd24d2a283884f1a29ce48bd3fbb02f76b8ebe5c4c189098091213018021449d`  
		Last Modified: Thu, 19 Nov 2026 14:42:25 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:663a675e1028f49b9bb6455ad7efce67cd64d5e3a5965fa340922ed974549e6b`  
		Last Modified: Thu, 19 Nov 2026 14:42:25 GMT  
		Size: 11.9 MB (11860156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e9fe9abae577582105802284389d124a847c969d933633c810a0a5f1ea0c1df`  
		Last Modified: Thu, 19 Nov 2026 14:42:25 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c13adaf88075018f6ca1b8c2a2a4ee146d5da8463b703815bf652b4bdbfd58`  
		Last Modified: Thu, 19 Nov 2026 14:42:25 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc5aeedbc60e37a2d796d038380299759da8aa90cdd84cfc17cbf5094f99b041`  
		Last Modified: Thu, 19 Nov 2026 14:42:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181b85e42d559f60abe9afb54dcd1152ac9511718e40a805f2e96fe5edfc362f`  
		Last Modified: Thu, 19 Nov 2026 14:42:26 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98a1426fe91f5183daf395a172701f44b62c196f5341d34b84c45afac87e7de7`  
		Last Modified: Thu, 19 Nov 2026 15:06:29 GMT  
		Size: 54.4 MB (54385937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944a0081a46c6a0cf5be93f061de9a4606ff66a945f224ca253a5163fcca8d15`  
		Last Modified: Thu, 19 Nov 2026 15:06:28 GMT  
		Size: 19.4 KB (19409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daf4d356d76e8ea525bdf9369e7cec180d503a1005d92cc04800e8fd4df70db6`  
		Last Modified: Thu, 19 Nov 2026 15:06:29 GMT  
		Size: 27.9 MB (27868960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfac35a4931b15663259ada0320e0f9b160a834aff74a85730cc27c57919924c`  
		Last Modified: Thu, 19 Nov 2026 15:06:27 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc6ec2044460e05143d8632a5ed009db5fa157bd467baa891107435d59da105`  
		Last Modified: Thu, 19 Nov 2026 15:06:29 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:60f67647a36e95acc1fb6af2b3121e150b602fbfda61818d8e24c870484db3ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.7 KB (52745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31910c76e1fe5b9d6919cb52c857dd3becc897000d865b2289347159c1a7b9fd`

```dockerfile
```

-	Layers:
	-	`sha256:1ea48a8e6e9c6433cfe92cc8086c213fb0d0fcd038523ad5afbd3c1974e2fff4`  
		Last Modified: Thu, 19 Nov 2026 15:06:27 GMT  
		Size: 52.7 KB (52745 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; ppc64le

```console
$ docker pull joomla@sha256:7b714ec5d365c3a4425399a1bbffbe08550370fa801c24813fee2cdb90b678aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.6 MB (258620752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe4630d5b2ee89fb92e9b7cd6798411d30916fdaf90af5679b4ed288367c91a0`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_VERSION=8.2.36
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.36.tar.xz.asc
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_SHA256=df50a00d2b453096608bf2bd98a9fab9a3df8678a77b93011b65c3cfe9a018fa
# Thu, 19 Nov 2026 16:24:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 16:24:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 16:29:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 16:29:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 16:29:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 16:29:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 16:29:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 16:29:08 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 16:29:08 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 16:29:09 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 16:29:09 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 16:29:09 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 18:59:25 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 18:59:25 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 18:59:25 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 18:59:25 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 18:59:25 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 18:59:27 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 18:59:27 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 18:59:27 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 18:59:27 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 18:59:45 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 18:59:45 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 18:59:46 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 18:59:47 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 18:59:47 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 18:59:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 18:59:47 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:5446a2aa25bb0ef97458d121edf37f232ba0bf1f87bbb4f8e0e866fc0a2c0d0b`  
		Last Modified: Thu, 19 Nov 2026 16:29:39 GMT  
		Size: 12.4 MB (12410427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab827c3f511a537eec6fd4d4140a66c6a8006b16f26fec2370b95ec62f34e68`  
		Last Modified: Thu, 19 Nov 2026 16:29:38 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84831e1d3ebef6dfefe8cc9e25c23117761d64f537a13a5af94e61d557b836c9`  
		Last Modified: Thu, 19 Nov 2026 16:29:39 GMT  
		Size: 14.5 MB (14459761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfc641d2ccf8ab74b35902042d2b554bcc66acbff7dfc0f3ec33eef02d1019c4`  
		Last Modified: Thu, 19 Nov 2026 16:29:38 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b73ecf772391cf3320ef4c14896d03df2e6cfa16f5f977f67c4751ea44df03`  
		Last Modified: Thu, 19 Nov 2026 16:29:39 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9db45c8d61ce533f2f7b7a649d4684b738c0932f63fd18392797cae2356d3bd`  
		Last Modified: Thu, 19 Nov 2026 16:29:39 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee9975deebeb4a839431210831095b45cac040372b12e7e5b80857081d2c711`  
		Last Modified: Thu, 19 Nov 2026 16:29:40 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e8dddb8e7d1981ca2ae08b0cc7756d7e802a2edb966c9df120f0e1f288e5bd6`  
		Last Modified: Thu, 19 Nov 2026 19:00:16 GMT  
		Size: 55.7 MB (55668960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3ea98fc21bacd83aa2b7838bdcd335897e7e54b004a4e2660165fb8e14f57f`  
		Last Modified: Thu, 19 Nov 2026 19:00:14 GMT  
		Size: 19.4 KB (19411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343a9e65478da505752c7129317850af611bf9082f67f0740be5cec52f4f6234`  
		Last Modified: Thu, 19 Nov 2026 19:00:15 GMT  
		Size: 27.9 MB (27869903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3420d7a35352329458388dbc9b8c2310f9e88dbf1587ceab2da84e83940d456`  
		Last Modified: Thu, 19 Nov 2026 19:00:14 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f86fb2747a88d245eaa4eead364d742eb95618050b5ff5f22cb28879628f3cc`  
		Last Modified: Thu, 19 Nov 2026 19:00:16 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:2b3f1c45c62c4051a2ad5ee476e5e9d97be9bf4bf2ca75b2d3593241ff57113e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 KB (52818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:751911cd563557c9a494c0d16c1877faf36e61a3fa55160045ca7334afcce098`

```dockerfile
```

-	Layers:
	-	`sha256:b94df8214bf7f6cb70f22f7b83ef0f9584e8de4b534c292141d2ad83c5ca27c9`  
		Last Modified: Thu, 19 Nov 2026 19:00:13 GMT  
		Size: 52.8 KB (52818 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; riscv64

```console
$ docker pull joomla@sha256:e1b22cc22688578346a55c8cd75c3e3e8bc64db8fc3dcf888d76d1bcd50eeba5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282431629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b451daf199ad8857d395b43ce3ee46c7f2a5248f5083514702ebaf39855e1bad`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 17:47:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 18:54:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 18:54:24 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 18:54:24 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:54:24 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:54:24 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Fri, 06 Nov 2026 10:29:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 06 Nov 2026 10:29:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 11:17:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 06 Nov 2026 11:17:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 11:17:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 06 Nov 2026 11:17:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 06 Nov 2026 11:17:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 06 Nov 2026 11:17:36 GMT
STOPSIGNAL SIGWINCH
# Fri, 06 Nov 2026 11:17:36 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 11:17:36 GMT
WORKDIR /var/www/html
# Fri, 06 Nov 2026 11:17:36 GMT
EXPOSE map[80/tcp:{}]
# Fri, 06 Nov 2026 11:17:36 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 11:14:19 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 11:14:19 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 11:14:19 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 11:14:19 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 11:14:19 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 11:14:26 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 11:14:26 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 11:14:26 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 11:14:26 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 11:15:49 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 11:15:49 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 11:15:50 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 11:15:50 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 11:15:50 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 11:15:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 11:15:50 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:7c9955321a4cdb80e6c3a65a7eedfe3e918c1ce99103e5ca3982cc4ba3b1d506`  
		Last Modified: Thu, 05 Nov 2026 19:55:44 GMT  
		Size: 4.1 MB (4056400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdadd2092c541a393410a9a0844657a31965726a4377905ff6e95e8361aac4e6`  
		Last Modified: Thu, 05 Nov 2026 19:55:43 GMT  
		Size: 449.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0054a3ab549763ed4d782d366d8ae77887ae6e96a2145008db79d9caea6f0112`  
		Last Modified: Thu, 05 Nov 2026 19:55:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156548ffa7ce7d9bca1ea1a90620a1119ff8539c6f8a344b53f2dc7ffc134834`  
		Last Modified: Fri, 06 Nov 2026 11:20:58 GMT  
		Size: 12.4 MB (12389256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d85584faa03853f220f7ad6e782993b5f8dd4b235792498c9b0e65f889bd6b`  
		Last Modified: Fri, 06 Nov 2026 11:20:54 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e2c11bcede2470eb98d0e66e0defb15cc151d749580dfbdc62ea3c1ab61972`  
		Last Modified: Fri, 06 Nov 2026 11:20:58 GMT  
		Size: 10.8 MB (10841185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5070c2695c3a061481b266b087ddcd0344df6b8ab0f63703d4009303b407d53`  
		Last Modified: Fri, 06 Nov 2026 11:20:54 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d52075ac0c458721df74b43f46fdb495d9c98009421e0ac6bc45e84e2b97573c`  
		Last Modified: Fri, 06 Nov 2026 11:20:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc893bb4a675194949297b3bcf29ae0526c9e83f34362934eba99fa08cb8f967`  
		Last Modified: Fri, 06 Nov 2026 11:20:56 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2b0daf6a31ad7202eb948496b9b53cc9bd5d7ecbc5d2a18eb46483728ca4c5`  
		Last Modified: Fri, 06 Nov 2026 11:20:58 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a3d6eedb0921fbda9621973696e9a8dabd1b311b4baa557cabc5c3a1b22a3a`  
		Last Modified: Thu, 19 Nov 2026 11:17:58 GMT  
		Size: 52.3 MB (52310048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da68f2c0fe53fd285cc07867bb7261f15134d01aa97cd9f140b5f06c20d7c574`  
		Last Modified: Thu, 19 Nov 2026 11:17:46 GMT  
		Size: 19.4 KB (19412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de3c32cafc9441d48f20e3ab9c0788168777b882658874e532f8104205e2f6f2`  
		Last Modified: Thu, 19 Nov 2026 11:17:55 GMT  
		Size: 27.9 MB (27877512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648b32ac6fd40e33c38e05498790dd704c8a5f937760b0f843a258ada74a46d2`  
		Last Modified: Thu, 19 Nov 2026 11:17:47 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6bcf1f3b888cc694220b363e3291ec0f478fe971fb66f362cafb2d01745427`  
		Last Modified: Thu, 19 Nov 2026 11:17:48 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:13b09946c5f4d62bd1f85685b06aa028e09a730132d76f9d6b62a46863df007a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 KB (52818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9015e9b327d5dc455133b4fe5abf38a4d724e1ca14effe39a384d80e327e05`

```dockerfile
```

-	Layers:
	-	`sha256:467b25f01dd4d1353a507fdccf4684ee5d22565ba73d78c38122fb51a5ba21c5`  
		Last Modified: Thu, 19 Nov 2026 11:17:46 GMT  
		Size: 52.8 KB (52818 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-apache` - linux; s390x

```console
$ docker pull joomla@sha256:dc8cb0d9f1249ba6e10fd68d7dca81f2f02ced7e2245ca1875a5a15f879e77cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.3 MB (234278912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01704a07af615230e1854f37d722de0e2d83a68d225358ed0ce611fd1bf2ced`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:46 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:16:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:16:00 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:16:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:22:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:22:46 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_VERSION=8.2.36
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.36.tar.xz.asc
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_SHA256=df50a00d2b453096608bf2bd98a9fab9a3df8678a77b93011b65c3cfe9a018fa
# Thu, 19 Nov 2026 14:56:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:56:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:59:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:59:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:59:05 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:59:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:59:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:59:05 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 14:59:05 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:59:06 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:59:06 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 14:59:06 GMT
CMD ["apache2-foreground"]
# Thu, 19 Nov 2026 16:04:29 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 16:04:29 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 16:04:29 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 16:04:29 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 16:04:29 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get install -y --no-install-recommends $PHPIZE_DEPS 		libbz2-dev 		libgmp-dev 		libicu-dev 		libfreetype6-dev 		libjpeg-dev 		libldap2-dev 		libmemcached-dev 		libmagickwand-dev 		libpq-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		automake 		libtool 		zlib1g-dev 		unzip; 	DEB_BUILD_MULTIARCH="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap --with-libdir=lib/"${DEB_BUILD_MULTIARCH}"; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print "*" so }' 		| sort -u 		| xargs -r dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -rt apt-mark manual; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 16:04:30 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/etc/apache2/conf-available 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	printf '%s\n' 		'RemoteIPHeader X-Forwarded-For' 		'RemoteIPInternalProxy 10.0.0.0/8' 		'RemoteIPInternalProxy 172.16.0.0/12' 		'RemoteIPInternalProxy 192.168.0.0/16' 		'RemoteIPInternalProxy 169.254.0.0/16' 		'RemoteIPInternalProxy 127.0.0.0/8' 		> /etc/apache2/conf-available/remoteip.conf; 	a2enmod rewrite expires remoteip; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' +; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	apache2ctl -t # buildkit
# Thu, 19 Nov 2026 16:04:30 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 16:04:30 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 16:04:30 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 16:04:37 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 16:04:37 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 16:04:37 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 16:04:37 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 16:04:37 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 16:04:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 16:04:37 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0723662ef84276855ccfb0d70a3973885698c376c4b24fb8bcc09d8a00d1ebc8`  
		Last Modified: Thu, 05 Nov 2026 07:19:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40211898d6ec92b8daa6c68bcf4439510b2e322f2167814e7aeb8c112182fcba`  
		Last Modified: Thu, 05 Nov 2026 07:19:07 GMT  
		Size: 92.6 MB (92569706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8551db760c67ef97c61736f8f4b9f50c16f4f32fe36959b4b603716476facf07`  
		Last Modified: Thu, 05 Nov 2026 07:19:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb9b0cb108c42abeaf6787274e5b7b11035702c634cca2ce9a06f8cccc8f450`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 4.3 MB (4342224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7eeef3eedecad1917c64e7595c887c81067ac6fb80e14291bc8f8ded77cd5e`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b748f769815a2fda37288f4ea0ea4b3e1513c93d16555dc252d2291778906314`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11fc932d0a35f7992aca369e2ef55ae5a0c70c696ec25986a1fd87f9beee691`  
		Last Modified: Thu, 19 Nov 2026 14:59:23 GMT  
		Size: 12.4 MB (12409647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3c4db75d1cb2ab82d77a5f1f9ee2afc3e6b21c1f00d86e5f76fce0969f6d21`  
		Last Modified: Thu, 19 Nov 2026 14:59:23 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e836c628f2867e68ec36390999efdd5dad3d8f889676f604c3841571b5fa3b4`  
		Last Modified: Thu, 19 Nov 2026 14:59:23 GMT  
		Size: 13.6 MB (13592690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:942d6f2f653d7f613a3825929b4c3ed55b286615cb90ee7c85b18625119e77e8`  
		Last Modified: Thu, 19 Nov 2026 14:59:23 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1802bcbf3b7baba8f7a6631d11cdf609523379f54764cae02fe55ef609c939b8`  
		Last Modified: Thu, 19 Nov 2026 14:59:23 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46a9fabae2578378feb5d8894f7b2334c509d5e27434c08b6b421c0c80b7340`  
		Last Modified: Thu, 19 Nov 2026 14:59:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f277eab7ea4a3a91e79ff976c98cb1caf8cb4d9b377ac68f7ea93aebb1322296`  
		Last Modified: Thu, 19 Nov 2026 14:59:24 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12df29dee0e05e58b98b9db1d5a40f52cc44ffb4c792b95b5998215bba6436a7`  
		Last Modified: Thu, 19 Nov 2026 16:04:54 GMT  
		Size: 53.5 MB (53542333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8279330b6aa809d7e6990f58d20e96373cc6670048a212d77d2b1aae64713cd9`  
		Last Modified: Thu, 19 Nov 2026 16:04:52 GMT  
		Size: 19.4 KB (19409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd420049a401ca76c3f86e80ae06b1f96cf06f92fd1fbebda2b6077c805963d`  
		Last Modified: Thu, 19 Nov 2026 16:04:53 GMT  
		Size: 27.9 MB (27866233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b125a6917aa5443b4a32e048c932b1c7c32e3ebb2df5416537068f0cbfe989`  
		Last Modified: Thu, 19 Nov 2026 16:04:52 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3bfd4c5e5e1c6ab1c73abe03084c9ca495374f1be6e80bb3cbf17e803602b5`  
		Last Modified: Thu, 19 Nov 2026 16:04:53 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-apache` - unknown; unknown

```console
$ docker pull joomla@sha256:ed652caeb0d1c54afa07913e97ac9b3f45845398620378c1eeffef1aa4ef4b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.8 KB (52768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e598b4fe0dffa3c88c4c613985e467e72582fceb612be12274c873326e518d29`

```dockerfile
```

-	Layers:
	-	`sha256:8e4e37478b73ab96f5710f83a4abbb0a31e77123e42cc5ee8a09541906606b51`  
		Last Modified: Thu, 19 Nov 2026 16:04:52 GMT  
		Size: 52.8 KB (52768 bytes)  
		MIME: application/vnd.in-toto+json
