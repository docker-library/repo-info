## `wordpress:7-php8.4`

```console
$ docker pull wordpress@sha256:a5dc1d0858cec186063e683cbbaaf58a4e650485c8f539f629a0ab49459418ae
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

### `wordpress:7-php8.4` - linux; amd64

```console
$ docker pull wordpress@sha256:c74a0947d65b4cf20071d4324e2ac6a80db015451934716ad61f93fe471122ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278602230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0264543ee10f11253529ac109a8fb50a6f0a989994ad2f7a8529aa5dff4dbea7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:17 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:20:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:20:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:20:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:20:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:20:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:20:33 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:20:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:20:39 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:20:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:20:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_VERSION=8.4.26
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Tue, 06 Oct 2026 01:20:39 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Tue, 06 Oct 2026 01:24:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:24:04 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:26:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:26:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:26:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:26:41 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:26:41 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:41 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:26:41 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:26:41 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:51:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:52:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:52:21 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:52:21 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:52:21 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:52:24 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:52:24 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:52:24 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:52:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:52:24 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:52:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:52:24 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a19dc4d0e0536542be028bdc1424b6087cd520f1b04b15916503fd06ae202ca`  
		Last Modified: Tue, 06 Oct 2026 01:23:31 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4633f536ccdec4a16333083dae0a93845971ba5bb631fdd1c5e56ad3e6dbc1a0`  
		Last Modified: Tue, 06 Oct 2026 01:23:48 GMT  
		Size: 117.8 MB (117842889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0822cfc31c02475c7191476152036db4ff64ae54ab826927ab7a66a81edd1141`  
		Last Modified: Tue, 06 Oct 2026 01:23:34 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a3637988ced8c6eec61c628eb436c41a96528c66d2593d61941018617ccf79`  
		Last Modified: Tue, 06 Oct 2026 01:23:45 GMT  
		Size: 4.2 MB (4239088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c957944e46769d6234865388440ae03735e5466ae5240c4f6c027ef7b23ac3a4`  
		Last Modified: Tue, 06 Oct 2026 01:23:45 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdee7d186a1a28a0b4eaf4a0bf99be2edb67a097ce513d98aef0e4975ecbcd1b`  
		Last Modified: Tue, 06 Oct 2026 01:23:45 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a915c3f3cf95a8ad18dc223c693f3852d8d9b0090b1d320d080f8839eeb5ac`  
		Last Modified: Tue, 06 Oct 2026 01:26:52 GMT  
		Size: 14.0 MB (13958071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65728ce6475800645c3081d97ab7be4436d133c41afe5a2afaf525b54fc56600`  
		Last Modified: Tue, 06 Oct 2026 01:26:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65274bb22729fdb2c733e24ccaa5e40865e0624fed8616599194c1df51ab1998`  
		Last Modified: Tue, 06 Oct 2026 01:26:52 GMT  
		Size: 13.7 MB (13711907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a3ba14a4da74154b6fad38bbc7f2267f08c954b5424e131a87bf13c49459d8`  
		Last Modified: Tue, 06 Oct 2026 01:26:52 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8ed65f6f2329890742b9832c9e451e55f76b7913dfe059e228b12afd8e9e01`  
		Last Modified: Tue, 06 Oct 2026 01:26:53 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c20d67cf18d10488707b1b355b047c1017ef09ed1d10f3d17b1e66d577ca51`  
		Last Modified: Tue, 06 Oct 2026 01:26:53 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0cce1264d37f53bd8380bc8f813afbb73e093b025458da63f1746dffe00932e`  
		Last Modified: Tue, 06 Oct 2026 01:26:53 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8317aff794747060a001942dcb41e7fb3ad8dbd9b81e28ef69e4f76e9ea4ff0`  
		Last Modified: Wed, 07 Oct 2026 21:52:43 GMT  
		Size: 33.4 MB (33410594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b2c5950e9b7d8de77830b8fa610635eda88ca8f2a30a45cbc5dd36532919639`  
		Last Modified: Wed, 07 Oct 2026 21:52:43 GMT  
		Size: 30.2 MB (30166594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912a2130b6cdf8794c0e4ffad35343faca439e52a2a23daca55f063a60d99d34`  
		Last Modified: Wed, 07 Oct 2026 21:52:42 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ff227a0059ba2125c82efbecdf38191ac00d729f4d31cfe7377c73fb29048f`  
		Last Modified: Wed, 07 Oct 2026 21:52:42 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c9288f826bda209276f1f22da1a53917ec94377f01baf75ac3fd16c7d28d6e`  
		Last Modified: Wed, 07 Oct 2026 21:52:43 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:002f0876d975f74c5832f7ae4a7e56d22aba042ba7715b80fcb8a7ca6608537d`  
		Last Modified: Wed, 07 Oct 2026 21:52:44 GMT  
		Size: 35.4 MB (35400111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4da63dfa26f9360a70bb51997ce42c8c32ad2bd70303d8d173747181bf745ae9`  
		Last Modified: Wed, 07 Oct 2026 21:52:44 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4834b3c0db07c695bfe75367d5b1a30a1ee37d04927fe83d26f5e60ef134720`  
		Last Modified: Wed, 07 Oct 2026 21:52:44 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ad0a5cc15d10958326f8e6a48da9b45bf2e85685f823c3ba888b5847f708e0`  
		Last Modified: Wed, 07 Oct 2026 21:52:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:1990918d926af47c1b2a2fb77e4900a8aa179909b54ff0051cb383d43179885f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8768769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a8c665bf4de1594c38bb0fcea08f25a1cff324bb440b504fae16948d05aa526`

```dockerfile
```

-	Layers:
	-	`sha256:3b7081b7ef90f92afb832196c47af5504108c27f95654078a4c59e804b200e43`  
		Last Modified: Wed, 07 Oct 2026 21:52:41 GMT  
		Size: 8.7 MB (8702988 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62c76c669ddd4e05ff44daadc4a62ceee516dd3fa6f0c59c75228f6a507ed4e8`  
		Last Modified: Wed, 07 Oct 2026 21:52:41 GMT  
		Size: 65.8 KB (65781 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:d646fdf7980fd55fbcfee32602277ef93775604eb52eb0aebe4698ba9d41074c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.8 MB (246757397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179b882e8158e54355d67c2f31d479d6323159b46c6c62017218ace741f22c44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:28:24 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:28:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:28:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:28:47 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:28:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:28:47 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:28:47 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:28:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:28:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:28:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:28:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:28:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:28:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:28:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 06 Oct 2026 01:28:57 GMT
ENV PHP_VERSION=8.4.26
# Tue, 06 Oct 2026 01:28:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Tue, 06 Oct 2026 01:28:57 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Tue, 06 Oct 2026 01:29:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:29:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:32:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:32:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:32:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:32:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:32:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:32:24 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:32:24 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:32:24 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:32:24 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:32:24 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:50:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:52:11 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:52:11 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:52:11 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:52:12 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:52:14 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:52:15 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:52:15 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:52:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:52:15 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:52:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:52:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:cb79ce05d3152dc6f7b8608f1f449aa1fbf1541a5dff435139649d755dd23d93`  
		Last Modified: Tue, 06 Oct 2026 00:13:24 GMT  
		Size: 28.0 MB (28007486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28a6150daa2d29ca97941cd02f90e761c4a25526a9dfe9325e130878816ba1d`  
		Last Modified: Tue, 06 Oct 2026 01:32:43 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5941a8199775786bc5dab7cab14e84d2c071af2b2b2d578f8fcc127761990fae`  
		Last Modified: Tue, 06 Oct 2026 01:32:46 GMT  
		Size: 94.9 MB (94876628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ecbb7c7457a59bd9d846c80ea4880ad5b13a27a4b2ed2d0c8ae183e5863ef5c`  
		Last Modified: Tue, 06 Oct 2026 01:32:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c40d8036b792a07901741b7d779d8aab7c847b45a9359f6d308468ba4dc2e1c`  
		Last Modified: Tue, 06 Oct 2026 01:32:43 GMT  
		Size: 4.1 MB (4097259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b49e114898743472d952d9c1a12e96b5003877e14c4d289d75c68b36b3f1a9fc`  
		Last Modified: Tue, 06 Oct 2026 01:32:44 GMT  
		Size: 438.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bb810843dbec268f8f1d5298f95a54292ab6f710ec0e2edd7f41af777aa8af`  
		Last Modified: Tue, 06 Oct 2026 01:32:44 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75a6c93dc417e70869d8a62201e3ec67b3c30459812f84a6caa2cf82dc6d4b0`  
		Last Modified: Tue, 06 Oct 2026 01:32:45 GMT  
		Size: 14.0 MB (13955490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98b3fd2fc57123b36bce103d3fd987c7a8e1b5623d4d13338853e1d8792eec0`  
		Last Modified: Tue, 06 Oct 2026 01:32:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8e5123b72e80336f691d219f3b14b4d79b8992d70aa71332711602a76b501b`  
		Last Modified: Tue, 06 Oct 2026 01:32:45 GMT  
		Size: 12.3 MB (12316307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227739f21d552cb2311db9ffb9b7bbd379c9cb3e47ffb6406d85ef84d604b3ad`  
		Last Modified: Tue, 06 Oct 2026 01:32:46 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8c41c9cf372b4937db3341c7e35f0d28570df2ab999d7a7548ce1f331292bc9`  
		Last Modified: Tue, 06 Oct 2026 01:32:46 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77d7703108f8e55b9ae0c3876e0193e5e2992e804b92831ab0fa345c3b4b9c4`  
		Last Modified: Tue, 06 Oct 2026 01:32:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1edab96c6beae12ee18157f1afe294651aeaa85a5b7bb6399db1ef7a13d32cfc`  
		Last Modified: Tue, 06 Oct 2026 01:32:47 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45576dd0ee9d8ddb2d3d1ef12fb0e522668c7c665e3117189c4e429f5d519f8f`  
		Last Modified: Wed, 07 Oct 2026 21:52:33 GMT  
		Size: 30.5 MB (30542334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c189ddee49f6aae69a166c736e4cad0ed18e4041c50c6fe720f184205c46094`  
		Last Modified: Wed, 07 Oct 2026 21:52:33 GMT  
		Size: 27.5 MB (27532121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a32b442fa238db4008e769666c8299d9bea0ef01b4396aa831bff0f1f3bed194`  
		Last Modified: Wed, 07 Oct 2026 21:52:32 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40711125c5dc2bd94bb8e004d54d9b0a5865b3312a5389972d9fce3bae2ea187`  
		Last Modified: Wed, 07 Oct 2026 21:52:32 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d20a3a71c756112d06829cc0984c2d7c3c65834ecd890cc1be3b2fbcbe3b23`  
		Last Modified: Wed, 07 Oct 2026 21:52:33 GMT  
		Size: 18.8 KB (18808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a73abcd5e87c6b77d9c7a5b9832bf17b52e956758b72cf66795c6a880c69c9d1`  
		Last Modified: Wed, 07 Oct 2026 21:52:34 GMT  
		Size: 35.4 MB (35400107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72b5c50e42e51adb14829615f00280091746dc7dba22d54e5eab03aac8531ff`  
		Last Modified: Wed, 07 Oct 2026 21:52:34 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c8300a7b7e8e251b53b0353b4c7da0315257b20d3032069493551390da8670`  
		Last Modified: Wed, 07 Oct 2026 21:52:35 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e78332298dbe8261ddcce31f951d985f5cc6cbd748b842e980c97686c024bcf`  
		Last Modified: Wed, 07 Oct 2026 21:52:35 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:a9dca0c446cc88fa1fa9df8278e69ef6bdfaac6cf7cc320de96fca21a603febf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8562509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3bb6439c8c5121e0db639f0f3e17fdbc51afebc57c788607bc6a27c9b9557e4`

```dockerfile
```

-	Layers:
	-	`sha256:07447c07bea9a1cc616e0fad712b980390c19d67688617de8b43c4b03c099657`  
		Last Modified: Wed, 07 Oct 2026 21:52:32 GMT  
		Size: 8.5 MB (8496548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be1c8d8f0a71db290ca89041863812c7cbd66a5b9f5888fe0d1bd83be9401aaa`  
		Last Modified: Wed, 07 Oct 2026 21:52:32 GMT  
		Size: 66.0 KB (65961 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:3f07c573d9bab962daf947a2f4ae5697b13208d7336922751ac45f6a2574021f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.7 MB (232731940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a0d29244c23b616fd32e8b9b9a24c53ff33ea076a4965e513895726ae9d50dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:33:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:33:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:33:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:33:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:33:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:33:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:33:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:37:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:37:25 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:37:25 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:37:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:37:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:37:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:37:25 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 06 Oct 2026 01:37:25 GMT
ENV PHP_VERSION=8.4.26
# Tue, 06 Oct 2026 01:37:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Tue, 06 Oct 2026 01:37:25 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Tue, 06 Oct 2026 01:37:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:37:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:40:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:40:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:40:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:40:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:40:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:40:35 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:40:35 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:40:35 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:40:35 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:40:35 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:53:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:54:58 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:54:59 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:54:59 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:54:59 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:55:01 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:55:01 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:55:01 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:55:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:55:02 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:55:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:55:02 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3674d15795660afa486f4a6efde81fb090a90870da242d7fb70d29b62268d654`  
		Last Modified: Tue, 06 Oct 2026 01:37:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e726669e2739f7065b6e45476255e04ea675ac84699f749c867c1ca7d17b91bb`  
		Last Modified: Tue, 06 Oct 2026 01:37:10 GMT  
		Size: 86.3 MB (86265457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eca5b0ceac724b241d89e0dccb6fbc68e2375f8129fad1ac7b42d995a99f38d`  
		Last Modified: Tue, 06 Oct 2026 01:37:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d96c06ae140f79bcf5cdc68e3cb8616784ca2f2ba89fce4f5ed8ba7ffd0feaab`  
		Last Modified: Tue, 06 Oct 2026 01:40:46 GMT  
		Size: 3.8 MB (3763851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27036b59812dbed68f98a124c13713ca0bee75336f985e98f3e656194e3e3815`  
		Last Modified: Tue, 06 Oct 2026 01:40:46 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40155e10ac3efe7c4bf645178afa72527d87c4a9fdad0fb09c17642a945bccc5`  
		Last Modified: Tue, 06 Oct 2026 01:40:46 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97a7638154a2ef980c620af3cf52e4f2805be0f905e2b1ed5f778f5ba10c1b0c`  
		Last Modified: Tue, 06 Oct 2026 01:40:46 GMT  
		Size: 14.0 MB (13955614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffee0999cddbd6f2e5d4369ee45d969bb102a29d5d776a6fbf24214068f38c84`  
		Last Modified: Tue, 06 Oct 2026 01:40:47 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da92e9197ff376906c627ce64cc2732ebd72b46baf2b7943c5fe75284338e0c`  
		Last Modified: Tue, 06 Oct 2026 01:40:47 GMT  
		Size: 11.7 MB (11722127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f4f90c09bbca354b5a024edb18243eefb55a646ac75963cf1814154dfd5541`  
		Last Modified: Tue, 06 Oct 2026 01:40:47 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e353ff3e97dae8a9d67fc876f1dd743e6d636e9a9a47b668bebbbe16beeba92b`  
		Last Modified: Tue, 06 Oct 2026 01:40:48 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2281f5632680e09ac26324411e53fdc5db26f39e513b3626dfad8d52c30bf6`  
		Last Modified: Tue, 06 Oct 2026 01:40:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80da79141d177164b400bb7c9f5bce9a18e9a6e1ec6ec827fe9901f5af967ca`  
		Last Modified: Tue, 06 Oct 2026 01:40:48 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53719c97a0eee0a8aea7c8e352a6387e3f61cceb64ec18c2602cc83bb013a7c8`  
		Last Modified: Wed, 07 Oct 2026 21:55:19 GMT  
		Size: 29.4 MB (29408629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc1ea065958e62b272b0a4bee7b3802c3687cab76cb5f343b73e3c6ec95f1bd`  
		Last Modified: Wed, 07 Oct 2026 21:55:20 GMT  
		Size: 25.9 MB (25928314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c281fae2ae73392531f936cc56ed2f8ff7931c6129cd5fef72e2f33b3f7f9699`  
		Last Modified: Wed, 07 Oct 2026 21:55:19 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375dd11a51dd9bab33504df7de2b70c17f4f60c7b4c44cc8f808558ba82732be`  
		Last Modified: Wed, 07 Oct 2026 21:55:19 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b91b87f6773b1a99ee61c9732c13c2b3623ca5ed5f35fbb50590fd47863a938`  
		Last Modified: Wed, 07 Oct 2026 21:55:20 GMT  
		Size: 18.8 KB (18799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a242426b39e275c7525ddbe3f0662782fa2d14ff58046310534b3d7abdb2b35`  
		Last Modified: Wed, 07 Oct 2026 21:55:21 GMT  
		Size: 35.4 MB (35400107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a85ac0840fd08a563acf7623bcaa777fc2b97ec2cc1bdce15e557a55abf499a`  
		Last Modified: Wed, 07 Oct 2026 21:55:21 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cdebe3e3e6fd73907a3a654d7481c38a38c173dbf09132153f960fd3222028`  
		Last Modified: Wed, 07 Oct 2026 21:55:21 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7d95e07dd0746f588a686c8f10b0c2456e91a42cefcb103b7dfb46705d44c5d`  
		Last Modified: Wed, 07 Oct 2026 21:55:21 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:c74b80c3722c13cb0425a13098a36e11d682a05094952290624e051e71573623
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8567345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fef1cf8600a63df60ff20671ef32d9cae177cbf7176d806905c2a5165ec0ad`

```dockerfile
```

-	Layers:
	-	`sha256:1eab6c5a44b00b5a81cdeb5fbbf2e5ead12035ab46bc7b0e8f4c853d1280e035`  
		Last Modified: Wed, 07 Oct 2026 21:55:18 GMT  
		Size: 8.5 MB (8501384 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ecd211bca5e47c997fc32742ede20e20b41a925484477e95674479d4ca69bd9`  
		Last Modified: Wed, 07 Oct 2026 21:55:18 GMT  
		Size: 66.0 KB (65961 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:624d9f0376f937ef87fcc8e7b84e451de40167d027d025da3456c6b7004fb8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.8 MB (270800431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3002c66fd44891c7b46f8da19719604f6f5dca4a534b794f5c5be8603c369ce`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:24:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:25:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:25:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:25:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:25:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:25:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:25:07 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:25:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:25:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:25:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:25:07 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 06 Oct 2026 01:25:07 GMT
ENV PHP_VERSION=8.4.26
# Tue, 06 Oct 2026 01:25:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Tue, 06 Oct 2026 01:25:07 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Tue, 06 Oct 2026 01:25:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:25:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:28:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:28:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:28:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:28:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:28:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:28:22 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:28:22 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:28:22 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:28:22 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:28:22 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:50:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:52:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:52:05 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:52:05 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:52:05 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:52:08 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:52:08 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:52:08 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:52:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:52:08 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:52:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:52:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b45514067bfe04335faa1b0d29ba8e60f489b63bd9097624d02325e6a98cdff5`  
		Last Modified: Tue, 06 Oct 2026 01:28:43 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97298d27768abf09445777ce7245a48b4b9241ae6865c4639caab4833fbad9e5`  
		Last Modified: Tue, 06 Oct 2026 01:28:46 GMT  
		Size: 110.2 MB (110178489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c32abe3532edbd5642b28501cc58cbe21fafa6d4512ae63d661f88b2244930ae`  
		Last Modified: Tue, 06 Oct 2026 01:28:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125ba0f6374be6fe69f2c8ac65c6185af4a87a361ee2594c1803bcd019c4b74d`  
		Last Modified: Tue, 06 Oct 2026 01:28:43 GMT  
		Size: 4.3 MB (4314399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30d8ba172245fb7fd86f3e61bc8144f71965a403bbca81007844d1349cec610`  
		Last Modified: Tue, 06 Oct 2026 01:28:44 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d95e6ce1e02e206cb9e2f5acec7a8fa96182fcbfbdde5eda0d3ea5b9c7bea33e`  
		Last Modified: Tue, 06 Oct 2026 01:28:44 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ca05c4ed4f816a342742b3ede64df4f8376983cb452eb834f013dd658f4114`  
		Last Modified: Tue, 06 Oct 2026 01:28:45 GMT  
		Size: 14.0 MB (13957573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aec00c604f2583a71860c3b90e56d51286816fcbdbc25293aab3438ebd52a87`  
		Last Modified: Tue, 06 Oct 2026 01:28:45 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01937145275a8659b5f26ff9dfbc2c46efd1b81430746041bfabfeed3e406e91`  
		Last Modified: Tue, 06 Oct 2026 01:28:46 GMT  
		Size: 13.4 MB (13354390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3a3f8b5fd921da91d06c9969a6a9e65ecfc5c08ad8b45af607c7a36118c0994`  
		Last Modified: Tue, 06 Oct 2026 01:28:46 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137501284e74fff770e19aeffba055896ecd4c73531e12853c7de8a386568075`  
		Last Modified: Tue, 06 Oct 2026 01:28:47 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a2c341a5116718e993df1b60981bdc253020229010c529e933753dcaa73f0ee`  
		Last Modified: Tue, 06 Oct 2026 01:28:47 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09acc28b6fe363985bbd26c12e5fba40fc886dbce1de337409f004164986e900`  
		Last Modified: Tue, 06 Oct 2026 01:28:48 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d84ded25d6b2925e8c6a476630f0aa6bf451fb4e73a590cbcf385fe2301efad7`  
		Last Modified: Wed, 07 Oct 2026 21:52:27 GMT  
		Size: 34.9 MB (34890904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11fa28e6a12afaecd8fdf0a9a709b4e4fc69cc2cc78264a9ba9508d43d6c9768`  
		Last Modified: Wed, 07 Oct 2026 21:52:26 GMT  
		Size: 28.5 MB (28474658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8096690fece614f29a160f657ff8ef273086c7da7ae8434a0fef2a4438554b7`  
		Last Modified: Wed, 07 Oct 2026 21:52:25 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:660ea8783f19b7eb8b5974d8b1e32953023dbf13bdb1e17e4ea0fd6ce621d7a8`  
		Last Modified: Wed, 07 Oct 2026 21:52:25 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef3c24517dc64661a14fdc39e97fd2248fadc1824476db3286f15dc0216e61c`  
		Last Modified: Wed, 07 Oct 2026 21:52:26 GMT  
		Size: 18.8 KB (18792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b427868595c4b4935f1fb512857046600dfd57a24b240214d73b9f15b1c70369`  
		Last Modified: Wed, 07 Oct 2026 21:52:27 GMT  
		Size: 35.4 MB (35400107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e01455646540897a6adb694c3e72e1bde38f7d568a49a402d8e7a5411e2cb4`  
		Last Modified: Wed, 07 Oct 2026 21:52:27 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3832f31b2c27becf49a33aed9c27a3b4b47933f5f5c62679112ae841c76c5f`  
		Last Modified: Wed, 07 Oct 2026 21:52:28 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2926116d16e77087db4c81704a5f49542bb55f98fd05765a18fefc1946dde52`  
		Last Modified: Wed, 07 Oct 2026 21:52:28 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:8b58546b1b1110200ef7ae5be1d0f9094a4bed87691ea8599df942ae9714ecb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8865522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdedafc35080c71dae40c3bd7dcd267a356d3f3ed053db50b10c7d822b32cfb7`

```dockerfile
```

-	Layers:
	-	`sha256:a472c3037954ea46bc5111106c8522239c62c5414fc5fdaf9dd155ba74cebacb`  
		Last Modified: Wed, 07 Oct 2026 21:52:25 GMT  
		Size: 8.8 MB (8799499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10019f5439ddad918e3b40ae5f5447263cbefb2032e9fc195a2b173d2785c75f`  
		Last Modified: Wed, 07 Oct 2026 21:52:25 GMT  
		Size: 66.0 KB (66023 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; 386

```console
$ docker pull wordpress@sha256:c038f37a406197c3e379888b242965f0c35416424a68883389a45da48318bb16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.6 MB (276556309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:819f6f0f282460055c5757d958217f54e674aae06ccf887e84e08f9c4a165e3e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:25:27 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:25:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:25:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:25:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:25:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:25:48 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:25:48 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:25:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:25:55 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:25:55 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:25:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:25:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:25:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:25:55 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 06 Oct 2026 01:25:55 GMT
ENV PHP_VERSION=8.4.26
# Tue, 06 Oct 2026 01:25:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Tue, 06 Oct 2026 01:25:55 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Tue, 06 Oct 2026 01:26:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:26:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:29:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:29:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:29:26 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:29:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:29:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:29:26 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:29:26 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:29:26 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:29:26 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:29:26 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:50:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:52:00 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:52:00 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:52:00 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:52:00 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:52:03 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:52:03 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:52:03 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:52:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:52:03 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:52:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:52:03 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdeef7521d4adc2ae6b07aefc77f8211392965a5805895f66f080fdeae0f0cd`  
		Last Modified: Tue, 06 Oct 2026 01:29:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c507c933ca2ad3ef8fe16f65d990610c9cee2f260ddf767c825c75efcff65fac`  
		Last Modified: Tue, 06 Oct 2026 01:29:51 GMT  
		Size: 116.1 MB (116148969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37d5cfdf1656cbe230fb52f8be7b61523de14372ba8e127b5fb9974cc2ef730`  
		Last Modified: Tue, 06 Oct 2026 01:29:48 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:853ac0962438bac7c081ec452aeaca0cd7ae5a6911259ec5eecf1293ea89bdf0`  
		Last Modified: Tue, 06 Oct 2026 01:29:48 GMT  
		Size: 4.5 MB (4471207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7347b16476caf5a7c10408cca5094f2a68085adeda4e4786e01c0391708db5b9`  
		Last Modified: Tue, 06 Oct 2026 01:29:49 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54dfa42c50898664af8554112e7abd878ea82ed9fd6afdfb4362bd5932b50650`  
		Last Modified: Tue, 06 Oct 2026 01:29:49 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793a12a842f755b175e4fe6c26435c2eeb6150bc654e82c3bb000b42a22d715c`  
		Last Modified: Tue, 06 Oct 2026 01:29:50 GMT  
		Size: 14.0 MB (13956775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:befb2c64917c77a4bd983dd0dc1d94db65d1fa8063fc6f083330b5977e7ad0c3`  
		Last Modified: Tue, 06 Oct 2026 01:29:50 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42c866d6e43e4a2963a29e1854218246d59878a0a7f7ff2711b021651fff330`  
		Last Modified: Tue, 06 Oct 2026 01:29:50 GMT  
		Size: 14.1 MB (14062368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3cf3033c2bf61f4e1c32b27bc97df789b84f8672c948735aa8633d5a2f30dd5`  
		Last Modified: Tue, 06 Oct 2026 01:29:51 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf7dd94bd5b97f988e62fca05af828027e84b2e6a74486bc01f0912641ab3e86`  
		Last Modified: Tue, 06 Oct 2026 01:29:51 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb6399b1287a954e641ac2a393a44b3d52da7bcc890af340f1bbae4e5993b5c`  
		Last Modified: Tue, 06 Oct 2026 01:29:52 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac153703d03c88fc2a0fd8c960430f9a8107903819cbbbfaec7ff12c5a50e9f`  
		Last Modified: Tue, 06 Oct 2026 01:29:52 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79437eba9009f5b6560e3a9bc113d1c649f2fe1fc262f4939354af97357c3d2`  
		Last Modified: Wed, 07 Oct 2026 21:52:20 GMT  
		Size: 32.9 MB (32890965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721d1567a6faa97622bcb56673e1da5baa350ba310bb12f41223c3fe69f7a5f2`  
		Last Modified: Wed, 07 Oct 2026 21:52:20 GMT  
		Size: 28.2 MB (28242997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0df3f6fcef292895309832ccae2079acf718438749d268540b01c1a776014a1`  
		Last Modified: Wed, 07 Oct 2026 21:52:19 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bcdc9ff56f87433aa6f29d2f14f5518c00738e2c7a4e45f0dba51c0bfede476`  
		Last Modified: Wed, 07 Oct 2026 21:52:19 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36ab0b2d52b1d16ddd0107da9c48b5e81462e359ccc1e43f975950d9d775b671`  
		Last Modified: Wed, 07 Oct 2026 21:52:20 GMT  
		Size: 18.8 KB (18793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6d23d68ef6adb4b882604fa1bb6c4ebc8615ec26b279bea3a9b88b7670f63ab`  
		Last Modified: Wed, 07 Oct 2026 21:52:21 GMT  
		Size: 35.4 MB (35400105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8dc1997ad21e7f73810c15f8d93990dd39d489bbf673dcb948afaf1c90a182`  
		Last Modified: Wed, 07 Oct 2026 21:52:21 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5426d73bae33e08ae2072d958a4f7a17b28b437adf34cb26b639d8f3d99ea8a3`  
		Last Modified: Wed, 07 Oct 2026 21:52:21 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32390d6ea42746c38988062e9ad0de0b607227ae803b6bd9fc341b34831b3b1f`  
		Last Modified: Wed, 07 Oct 2026 21:52:21 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:df9a351525d45afb7279c80cdf1b2d00d14df1d755ed6aa11e50f4ee3194cec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8741707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d64947ac17c71d4b6560f2b5fe3f698437ee2109d99e8096b4facaf9fec892d`

```dockerfile
```

-	Layers:
	-	`sha256:f059953775695f32c8a71f1927d3ad773fd7c4a3305d436602e0090e3ae1e46b`  
		Last Modified: Wed, 07 Oct 2026 21:52:19 GMT  
		Size: 8.7 MB (8675990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31b2abbbf8b8c80d47ab96c31c907d40d8a4556859fe729237716cf6b713b91b`  
		Last Modified: Wed, 07 Oct 2026 21:52:18 GMT  
		Size: 65.7 KB (65717 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; ppc64le

```console
$ docker pull wordpress@sha256:61b24ca522644ac7c1bb3997a93ac6b37308ef2cdd3364a28463be7751ad133b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274593589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b72116f374247ad44dea5bb38172fc57e43b67682f0c5b79a82e7ee350384588`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_VERSION=8.4.26
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Tue, 06 Oct 2026 03:01:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 03:01:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:06:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 03:06:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:06:28 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 03:06:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 03:06:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 03:06:29 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 03:06:29 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 03:06:29 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 03:06:29 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 03:06:29 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 22:04:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 22:08:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 22:08:25 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 22:08:25 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 22:08:26 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 22:08:34 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 22:08:35 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 22:08:35 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 22:08:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 22:08:36 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 22:08:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 22:08:36 GMT
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
	-	`sha256:c9c24d627db2b3d519b95cf659f725c0f45a3da601282cd8c9c843dcdcdce5ef`  
		Last Modified: Tue, 06 Oct 2026 03:07:02 GMT  
		Size: 14.0 MB (13966281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52ac5b49a12d834b95ff22343f8602b4cf94db6c802602b1c4c9993bee2fcca1`  
		Last Modified: Tue, 06 Oct 2026 03:07:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:242a7d26a9988a4c7968669b61ae00f98942cda53fd45592bc8f6f7699fcbd12`  
		Last Modified: Tue, 06 Oct 2026 03:07:03 GMT  
		Size: 14.1 MB (14113554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:469621a210c7339236a9a6d23a36d20357a7c4b46fba0e2916a4e4bc0a1bfcac`  
		Last Modified: Tue, 06 Oct 2026 03:07:02 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:659a9250029b211d14a51779261235993c2e915866a4e9ff84e3c752754807fa`  
		Last Modified: Tue, 06 Oct 2026 03:07:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c3054da3f6b0dd06c6a0099f8f1a87a87dea122260d3852ace9d7b1342a43a4`  
		Last Modified: Tue, 06 Oct 2026 03:07:03 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cb6bd196d19b13a6ab52bf1d845494b38fbe6e31a20ca0d88841955046a7758`  
		Last Modified: Tue, 06 Oct 2026 03:07:04 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a82a0d66c5a08948d46661c16cef394bf8c9e8cee2bc5bad56a9a3d758330b6`  
		Last Modified: Wed, 07 Oct 2026 22:09:18 GMT  
		Size: 33.4 MB (33448863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d509c84f7b65d9acd1012050f27ad66cf93129534ff70edf0303fc31af3b2186`  
		Last Modified: Wed, 07 Oct 2026 22:09:18 GMT  
		Size: 29.5 MB (29473610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee49f802b643ae2a4cc071041c1c37bf0785dd8677640e04403f3532a0f2e63`  
		Last Modified: Wed, 07 Oct 2026 22:09:16 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb866327df161cb6dc40fba198a2ece35bb43a896b5bb2e6e689a28b555074e`  
		Last Modified: Wed, 07 Oct 2026 22:09:16 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c80ac878dee32225e586feb8125ba686e7957bba420715e7abb08800131474c`  
		Last Modified: Wed, 07 Oct 2026 22:09:18 GMT  
		Size: 18.8 KB (18802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4704740cff5d4ee861abbde2e86d13846f0424052ce9ca9a3c98ca9074e37b4`  
		Last Modified: Wed, 07 Oct 2026 22:09:19 GMT  
		Size: 35.4 MB (35400111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a0401c08ab938e78b672667ab746c3def4c110db0114c4bb82c4e704009d76a`  
		Last Modified: Wed, 07 Oct 2026 22:09:19 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29cbe4bd5c06fe47917510c501f0d3b402a3a3d19d77465d14f5cb3b43f776b`  
		Last Modified: Wed, 07 Oct 2026 22:09:19 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5257f2fec10821a67458f2fe3c912dcd6033caaa4aac2390a258e7069040ac7`  
		Last Modified: Wed, 07 Oct 2026 22:09:20 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:95197cfce68562eec9163554bb90e3fd57112344d1cb55f76692b4de7b6278b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8769723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ba889e91bd71b6a64dfc9f2e13c4f978c0e5f8d9335b7d902be9f8f87851fff`

```dockerfile
```

-	Layers:
	-	`sha256:bdcdea5340dab4742f193135ee4d34ee65471c0cfafde788891055ae16091984`  
		Last Modified: Wed, 07 Oct 2026 22:09:16 GMT  
		Size: 8.7 MB (8703862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e84f183faadde129861fd11f891ab656d6794cc730037720a64a27adc210a71`  
		Last Modified: Wed, 07 Oct 2026 22:09:16 GMT  
		Size: 65.9 KB (65861 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; riscv64

```console
$ docker pull wordpress@sha256:c4135040c82781db7069b871967a67eb8e53c7a1d742d262552c1d6c1976214b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299455757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c87e12ec1ca69f04c6dae703a2d703090327942ed60c5c7097e3e0072ad7efa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1789689600'
# Wed, 23 Sep 2026 13:43:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 23 Sep 2026 13:45:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 23 Sep 2026 13:45:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 23 Sep 2026 13:45:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 23 Sep 2026 13:45:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 23 Sep 2026 13:45:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 23 Sep 2026 13:45:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 23 Sep 2026 14:49:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 23 Sep 2026 14:49:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 23 Sep 2026 14:49:23 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 23 Sep 2026 14:49:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 23 Sep 2026 14:49:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 23 Sep 2026 14:49:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 23 Sep 2026 14:49:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 23 Sep 2026 14:49:23 GMT
ENV PHP_VERSION=8.4.26
# Wed, 23 Sep 2026 14:49:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Wed, 23 Sep 2026 14:49:23 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Sun, 27 Sep 2026 16:17:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sun, 27 Sep 2026 16:17:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 17:14:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 27 Sep 2026 17:15:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 17:15:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 27 Sep 2026 17:15:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 27 Sep 2026 17:15:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 27 Sep 2026 17:15:01 GMT
STOPSIGNAL SIGWINCH
# Sun, 27 Sep 2026 17:15:01 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 17:15:02 GMT
WORKDIR /var/www/html
# Sun, 27 Sep 2026 17:15:02 GMT
EXPOSE map[80/tcp:{}]
# Sun, 27 Sep 2026 17:15:02 GMT
CMD ["apache2-foreground"]
# Tue, 29 Sep 2026 21:55:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 29 Sep 2026 22:15:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 29 Sep 2026 22:15:45 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 29 Sep 2026 22:15:45 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 29 Sep 2026 22:15:46 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 29 Sep 2026 22:15:57 GMT
RUN set -eux; 	version='7.1.2'; 	sha1='761b8101538f0631a0bfc4fba7bc4abeea92f81c'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 29 Sep 2026 22:15:57 GMT
VOLUME [/var/www/html]
# Tue, 29 Sep 2026 22:15:57 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 29 Sep 2026 22:15:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 29 Sep 2026 22:15:58 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 29 Sep 2026 22:15:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 29 Sep 2026 22:15:58 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3cf0197a69ba5d69d9f03c7d97786aaa146cd8fdfd45fb00f5109d193ccbe81e`  
		Last Modified: Sat, 19 Sep 2026 04:09:02 GMT  
		Size: 28.3 MB (28324384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86549e38dd72301fb7fbefba8a0f91ee0ed099a4d68a4128c316fab2e570fdf4`  
		Last Modified: Wed, 23 Sep 2026 14:47:13 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d15439a4dfa692333645ee55e4b413c40d353f7fdee4d91e62beabd1031f59`  
		Last Modified: Wed, 23 Sep 2026 14:47:41 GMT  
		Size: 146.6 MB (146594945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315730c28bd96f261df151c3233e5c14b0d7839437943bba58ab981992cc6a15`  
		Last Modified: Wed, 23 Sep 2026 14:47:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f147ddc1eff0233cfeaf6a848fe1035cb820f7711c12fdaffa564aed71e03e`  
		Last Modified: Wed, 23 Sep 2026 17:49:32 GMT  
		Size: 4.0 MB (4047398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:893b0983cd58780f238dcc5df5846efafa0df6122d10692eb8e0f1d34c03a8f7`  
		Last Modified: Wed, 23 Sep 2026 17:49:30 GMT  
		Size: 448.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbbd343f83e22a3be8347a65bbf8a1683fd4146e5655ef745db1d5c78e0cf8de`  
		Last Modified: Wed, 23 Sep 2026 17:49:30 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f8432854327dd6d1686602f7da99a8f9605200e7831e36c9ec4f30aae7480d6`  
		Last Modified: Sun, 27 Sep 2026 17:18:17 GMT  
		Size: 14.0 MB (13973402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7495582e8155b3ac81567ce3df4a1452498ecd22d543fba35a08e8038f7df3`  
		Last Modified: Sun, 27 Sep 2026 17:18:12 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f063d102b7a59e3b1acbc95cfa78abaf2eb206d04a8c4f8453f8f913105cf6da`  
		Last Modified: Sun, 27 Sep 2026 17:18:17 GMT  
		Size: 13.1 MB (13115392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ddab675907c12d613b3fc19b8c5661d917e9a4e4e946592155721409c20268`  
		Last Modified: Sun, 27 Sep 2026 17:18:12 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2130eece6e26af7e4f71615498bbb9d511757ed4776d64662524b915b2e4b9a`  
		Last Modified: Sun, 27 Sep 2026 17:18:15 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7297f35bf5fbea7a7bdbd42d88a8f36eb393d4b3e6561c3abc4e16cc5aaed8`  
		Last Modified: Sun, 27 Sep 2026 17:18:15 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5346e1f5d33dff8493b336c635fb999eb9361e9569c1c734d389df39c553063b`  
		Last Modified: Sun, 27 Sep 2026 17:18:16 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e356a2357cdee7b5361a81626ea8ebd599f641a29cf6ea62825cd774f59e62`  
		Last Modified: Tue, 29 Sep 2026 22:20:54 GMT  
		Size: 30.9 MB (30947477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efbd0d282f9d309ae109a266c7d9ccd178f12906f24eba3fa5bf97ee2c256da2`  
		Last Modified: Tue, 29 Sep 2026 22:20:54 GMT  
		Size: 27.0 MB (27024037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3daeaadc26d15f8a45924271b59388259c851fc5834d3985ff466a9c8c8dd0`  
		Last Modified: Tue, 29 Sep 2026 22:20:42 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ac054fb77465cf9817aa465c52e7ec8b698481c48f526aa4be423b003ffc694`  
		Last Modified: Tue, 29 Sep 2026 22:20:42 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99396bb22e4899c16e3f03679dd245e05e9bd106e83d7344d684afb1c6898cca`  
		Last Modified: Tue, 29 Sep 2026 22:20:44 GMT  
		Size: 18.8 KB (18806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:489605f320c93b548d42d15f867913660d1be9b444f4ce631e5e8483a83918ff`  
		Last Modified: Tue, 29 Sep 2026 22:20:56 GMT  
		Size: 35.4 MB (35399025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87558b5254de59180f0d2ef8acefa4a5004a1015ba0b14df4e790b8086c5796`  
		Last Modified: Tue, 29 Sep 2026 22:20:47 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02eb641867934cc6b654cba7382f1c7b59744f32cfc8619b027509c1a23fda27`  
		Last Modified: Tue, 29 Sep 2026 22:20:50 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949bd4baa38e8ae544a57a49abfa89ce4edf16f4c96c08185c1adfca1931f4c8`  
		Last Modified: Tue, 29 Sep 2026 22:20:52 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:3ca2bb397da302419f8ed6c151518fb76a5a3eefea08ead02bab4b87f28b443e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8834586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65fdf71b113aa1c57c8fe3d16fa4695c515fa6ad8999ed532bf08de81754ace6`

```dockerfile
```

-	Layers:
	-	`sha256:328e0c98469872799b22ded9dcbeb8820c2e3a15ea9b75bb0dc18d6d04fe56cc`  
		Last Modified: Tue, 29 Sep 2026 22:20:44 GMT  
		Size: 8.8 MB (8768725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4a29bfe3bb438adae199ac9c760e3d4041afe0db82ef166ecffcebe3d18bfaa`  
		Last Modified: Tue, 29 Sep 2026 22:20:41 GMT  
		Size: 65.9 KB (65861 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; s390x

```console
$ docker pull wordpress@sha256:045838e35a170be9dc6376b793648d03599266ba06ea864c2806ff3dd4acd0fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.1 MB (249076357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ec574b315445cf32a3d0825d67bff39c0f74c5a33c00cc74285dbdf0e011d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:18:06 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:18:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:18:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:18:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:18:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:18:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:28:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:28:14 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:28:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:28:14 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_VERSION=8.4.26
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Tue, 06 Oct 2026 01:28:14 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Tue, 06 Oct 2026 01:28:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:28:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:31:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:31:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:31:43 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 06 Oct 2026 01:31:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:31:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:31:43 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:31:43 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:31:43 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:31:43 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:31:43 GMT
CMD ["apache2-foreground"]
# Wed, 07 Oct 2026 21:50:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 07 Oct 2026 21:51:42 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 07 Oct 2026 21:51:43 GMT
RUN set -eux; 	version='7.1.3'; 	sha1='491a78c7676b15dffcc69130c6054b8f49228a91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 07 Oct 2026 21:51:43 GMT
VOLUME [/var/www/html]
# Wed, 07 Oct 2026 21:51:43 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 07 Oct 2026 21:51:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 21:51:43 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 07 Oct 2026 21:51:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 21:51:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee94829c70a192304253124b6b4fd9e07f2fc8c3da32be22423b156ff08fe22`  
		Last Modified: Tue, 06 Oct 2026 01:21:18 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a574a4272bcd15d787f31296d912711aae0758cea403b0c40b266b7ec2741134`  
		Last Modified: Tue, 06 Oct 2026 01:21:20 GMT  
		Size: 92.6 MB (92574377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82ee0ccadb8ddf0aa19ac9205d833d8b74cd168228d0842d520c717631541fd5`  
		Last Modified: Tue, 06 Oct 2026 01:21:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33abbc4505c31a7423127ea794e2fc289d7f393655569a6280ae0638c7c33225`  
		Last Modified: Tue, 06 Oct 2026 01:31:59 GMT  
		Size: 4.3 MB (4338303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a5902c649c8d8101afe629fdc6aba0980bd493db2ae683db81330c641803a2f`  
		Last Modified: Tue, 06 Oct 2026 01:31:59 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d783cdf3e26633eef7118606bf3f47fc781436aead34e8c9792bb390ec778a97`  
		Last Modified: Tue, 06 Oct 2026 01:31:59 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e00020784e30aaf9714176cfdea0feae03c3d4c3a7caba4a3c68a2526a5bab8`  
		Last Modified: Tue, 06 Oct 2026 01:32:00 GMT  
		Size: 14.0 MB (13956296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098dc6d6b8cd22327a0fb0fa076f6709a9440914ae24710dcc5690ffdaace3e9`  
		Last Modified: Tue, 06 Oct 2026 01:32:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c008b856d726ceb3dfa7c12f1212c63598e73f93d704daa1b7f2a3ea1a86212`  
		Last Modified: Tue, 06 Oct 2026 01:32:01 GMT  
		Size: 13.5 MB (13463974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07bae16fc541fb1c93298b9a4879be5c89a9588784a70cb353d57b420af75600`  
		Last Modified: Tue, 06 Oct 2026 01:32:00 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea646a7461abcf73112d2263dc81b9bcc0af7ccf831a9441d47e63ea2c1b1f6`  
		Last Modified: Tue, 06 Oct 2026 01:32:01 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d7e9b14ae70ff23a6e4cb182c364cc22afbb8383f1dac6a149c1cfbcb935b8`  
		Last Modified: Tue, 06 Oct 2026 01:32:01 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2f751768715ee9be4c9a379404ced298805fd13e2ce01b9d0ca1e246b6e864`  
		Last Modified: Tue, 06 Oct 2026 01:32:01 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:226c13cb8b5c8cb9f36ffa63daf69dc9fbf49ccc20090b8adebded85318c8b1a`  
		Last Modified: Wed, 07 Oct 2026 21:52:05 GMT  
		Size: 31.9 MB (31862660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95684c8a5bb5cce9fc8ed06d42ba4484a79c20f6fdeb7306b1c46615deb2a044`  
		Last Modified: Wed, 07 Oct 2026 21:52:05 GMT  
		Size: 27.5 MB (27541756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bbfac01f90a010fea600e4ac194dba122692137b36f379eb583446c3879a50e`  
		Last Modified: Wed, 07 Oct 2026 21:52:05 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25236820c7115c802b00ef4703a366fe4b23c516e4d4f9d684fbf162c4195a60`  
		Last Modified: Wed, 07 Oct 2026 21:52:05 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1956571a48f2348885192b253cab57666b9b686ab6ae7aa1b528f0a7ac5d9943`  
		Last Modified: Wed, 07 Oct 2026 21:52:06 GMT  
		Size: 18.8 KB (18790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9419ebdb148aad15cfc409fa8b02c7b7e9c998dff9daa8764c9181bef4e1d692`  
		Last Modified: Wed, 07 Oct 2026 21:52:06 GMT  
		Size: 35.4 MB (35400108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514b7983f6ad8ab7ffe487192d4adb65866eb15b48c7b14b981f1378815ecbef`  
		Last Modified: Wed, 07 Oct 2026 21:52:07 GMT  
		Size: 2.4 KB (2435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2310f647763836af0c518d390f3ffe2a8c431f06c0dfcc6c9f04384eea2597`  
		Last Modified: Wed, 07 Oct 2026 21:52:07 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e48b1b82c79e321844154b4a733a82460a61670b8216d2c708da426cf237dcd`  
		Last Modified: Wed, 07 Oct 2026 21:52:07 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:9f482d0281507765030de76c1b7d85edd742fc7ed493f7ba855d0e9e5356aa35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8487892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09036efe830c1bd545d78ff19a0404690cf9d809405fca5f4ed431a1b70f04c1`

```dockerfile
```

-	Layers:
	-	`sha256:02f352bcdf60bcb9255d92bd1127fd58d4f3ff3ae35653515ec1955ccee86108`  
		Last Modified: Wed, 07 Oct 2026 21:52:05 GMT  
		Size: 8.4 MB (8422121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a7d791437dbe24633ea046c63d3add2d5ce269df4f3a29e8ff952db90d86d46`  
		Last Modified: Wed, 07 Oct 2026 21:52:04 GMT  
		Size: 65.8 KB (65771 bytes)  
		MIME: application/vnd.in-toto+json
